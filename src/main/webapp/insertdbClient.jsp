<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
	<head>
    	<title>Insert Client</title>
	</head>
	<body>
    	<c:if test="${empty param.nom or empty param.prenom or empty param.email or empty param.adresse or empty param.password}">
        		<c:redirect url="ajout.jsp" >
            		<c:param name="errMsg" value="veuillez remplire tous les champ" />
        		</c:redirect>
    	</c:if>
    	<sql:setDataSource var="dbsource" driver="org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:mysql://sql2.freemysqlhosting.net:3306/sql2334884" 
                           user="sql2334884"  password="nT9*uE7%"/>
        <!--url="jdbc:derby://localhost:1527/sql2.freemysqlhosting.net"
        user="sql2333478"  password="xC1*lT2%"--->
    	<sql:update dataSource="${dbsource}" var="result">
        	INSERT INTO Client(nom, prenom,email,adresse,password) VALUES (?,?,?,?,?)
        		
        		<sql:param value="${param.nom}" />
        		<sql:param value="${param.prenom}" />
                        <sql:param value="${param.email}" />
                        <sql:param value="${param.adresse}" />
                              <!---Base64.encodeBase64() --->
                        <sql:param value="${param.password}" />
                        
    	</sql:update>
    	
	</body>
</html>
