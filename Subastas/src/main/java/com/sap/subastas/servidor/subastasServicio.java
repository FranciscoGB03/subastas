/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sap.subastas.servidor;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author fgb
 */
@WebService(serviceName = "subastasServicio")
public class subastasServicio {
    
    /**
     * Web service operation
     */
    @WebMethod(operationName = "agregarProducto")
    public int agregarProducto(@WebParam(name = "num1") int num1, @WebParam(name = "num2") int num2) {
        //TODO write your implementation code here:
        return num1+num2;
    }
    
}
