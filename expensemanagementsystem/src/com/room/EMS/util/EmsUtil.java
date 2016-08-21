package com.room.EMS.util;

import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.codec.binary.Base64;

public class EmsUtil {
public boolean isValidSession(HttpSession session)
{
	if(session.getAttribute("username")!=null && ! session.getAttribute("username").equals(""))
	return true;
	else
	return false;
}
/**
 * Codifica un texto usando Base64.
 * @param texto <code>String</code> texto a codificar.
 * @return <code>String</code> texto codificado.
 */
public static String encrypt(String password) {
    return new String(Base64.encodeBase64(password.getBytes()));
}

/**
 * Decodifica un texto usando Base64.
 * @param texto <code>String</code> texto a decodificar.
 * @return <code>String</code> texto decodificado.
 */
public static String decrypt(String password) {
    return new String(Base64.decodeBase64(password.getBytes()));
}

}
