
package com.sap.contabilidad.clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.Properties;

/**
 *
 * @author fgb
 */
public class ConsultasGenerales {
    /**
     * metodo para mostrar los periodos contables
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static LinkedList consultaGeneral() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <Calen_Contable> l=new LinkedList<Calen_Contable>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM calen_contable order by clave asc");
            while (rs.next()) {
                Calen_Contable cc=new Calen_Contable();
                cc.setId(rs.getInt("id"));
                cc.setClave(rs.getString("clave"));
                cc.setPeriodo(rs.getInt("periodo"));                
                cc.setFechaini(rs.getString("fechaini"));
                cc.setFechafin(rs.getString("fechafin"));
                cc.setEstatus(rs.getString("estatus"));                
                l.add(cc);
            }                    
        conn.close();
        return l;
    }
    /**
     * metodo para desplegar las cuentas contables
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException 
     */
    public static LinkedList cuentaSat() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <CuentaSat> l=new LinkedList<CuentaSat>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM cuentasat");
            while (rs.next()) {
                CuentaSat cs=new CuentaSat();
                cs.setId(rs.getInt("id"));
                cs.setCuenta(rs.getDouble("codigosat"));
                cs.setDescripcion(rs.getString("descripcion"));                                
                l.add(cs);
            }                    
        conn.close();
        return l;
    }
    public static LinkedList cuentaempresa() throws SQLException, ClassNotFoundException {        
        Connection conn;
        Class.forName("org.postgresql.Driver");
        LinkedList <CuentaEmpresa> l=new LinkedList<CuentaEmpresa>();
        Properties connProp = new Properties();
        connProp.put("user", "postgres");
        connProp.put("password", "root");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/SAP", connProp);
        Statement stmt;        
        stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT ce.id,ce.clave,cs.codigosat,ce.descripcion,ce.naturaleza FROM cuentaempresa as ce, cuentasat as cs where ce.id_sat=cs.id;");
            while (rs.next()) {
                CuentaEmpresa ce=new CuentaEmpresa();
                ce.setId(rs.getInt("id"));             
                ce.setClave(rs.getString("clave"));
                ce.setClavesat(rs.getDouble("codigosat"));
                ce.setDescripcion(rs.getString("descripcion"));
                ce.setNaturaleza(rs.getString("naturaleza"));
                l.add(ce);
            }                    
        conn.close();
        return l;
    }
    
    
}
