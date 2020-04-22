<%-- 
    Document   : menu
    Created on : 20 avr. 2020, 14:12:35
    Author     : saraz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
    <head>
        <title>Menu Client</title>
    </head>
    <body>

        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://sql2.freemysqlhosting.net:3306/sql2334884"
                           user="sql2334884"  password="nT9*uE7%"/>

        <sql:query dataSource="${dbsource}" var="result">
            SELECT count(*) from Client where email=? and password=?
            <sql:param value="${param.email}"/>
            <sql:param value="${param.password}"/>
        </sql:query>

        <c:if test="${empty param.email or empty param.password}">
            <c:redirect url="authentificationClient.jsp">
                <c:param name="errMsg" value="Veuillez saisir toutes les informations !" />
            </c:redirect>
        </c:if>

        <c:if test="${result.rowsByIndex[0][0]== 1}">
            <c:redirect url="menuClient.jsp"/>
        </c:if>

        <c:if test="${result.rowsByIndex[0][0]==0}">
             <c:redirect url="authentificationClient.jsp">
                <c:param name="errMsg" value="Utilisateur introuvable !" />
            </c:redirect>
        </c:if>

    </body>