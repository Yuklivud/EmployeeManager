<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Employees</title>
</head>
<body>
<h1>All Employees</h1>
<br>
<table>
  <tr>
    <th>Name</th>
    <th>Surname</th>
    <th>Department</th>
    <th>Salary</th>
  </tr>
<c:forEach var="emp" items="${allEmps}">
  <tr>
    <td>${emp.name}</td>
    <td>${emp.surname}</td>
    <td>${emp.department}</td>
    <td>${emp.salary}</td>
  </tr>
</c:forEach>
</table>
</body>
</html>
