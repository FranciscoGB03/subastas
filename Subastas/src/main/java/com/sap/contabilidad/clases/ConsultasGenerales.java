
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
}
