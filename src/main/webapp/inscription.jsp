<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    	<title>CRUD Client</title>
	</head>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<body>
    	<form action="insertdbClient.jsp" method="post">
            
        	<table border="0" cellspacing="2" cellpadding="5">
            	<thead>
                	<tr>
                    	<th colspan="2">Create Account</th>
                	</tr>
            	</thead>
            	<tbody>
                	<tr>
                    	<td><label>First Name</label></td>
                    	<td><input type="text" name="nom"/></td>
                	</tr>
                	<tr>
                    	<td><label>Last Name</label></td>
                    	<td><input type="text" name="prenom"/></td>
                	</tr>
                	<tr>
                    	<td><label>Email</label></td>
                    	<td><input type="text" name="email"/></td>
                	</tr>
                        <tr>
                    	<td><label>Address</label></td>
                    	<td><input type="text" name="adresse"/></td>
                	</tr>
                        <tr>
                    	<td><label>Password</label></td>
                    	<td><input type="password" name="password"/></td>
                	</tr>
                	
                        <tr>
                    	<td><label>Repeat Password</label></td>
                    	<td><input type="password" name="confPassword"/></td>
                	</tr>
                        
                	<tr>
                    	<td><input type="submit" value="Resister" /></td>
                    	<td><input type="reset" value="reset"/></td>
                	</tr>
                        
            	</tbody>
        	</table>
    	</form>
	<font color="red">
        <c:if test="${password}!=${confPassword}">
    			<c:out value="Your password and confirm password do not match" />	
         </c:if> 
	<c:if test="${not empty param.errMsg}">
    		<c:out value="${param.errMsg}" />
    		<a href="index.html">Accueil</a>
	</c:if>
	</font>
	<font color="green">
		<c:if test="${not empty param.susMsg}">
    			<c:out value="${param.susMsg}" />
    			<a href="index.html">Go Back</a>
		</c:if>
	</font>
</body>
</html>
