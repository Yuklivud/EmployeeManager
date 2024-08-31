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
    <th>Operations</th>
  </tr>
<c:forEach var="emp" items="${allEmps}">

  <c:url var="updateButton" value="/updateInfo">
    <c:param name="empId" value="${emp.id}"/>
  </c:url>

  <c:url var="deleteButton" value="/deleteInfo">
    <c:param name="empId" value="${emp.id}"/>
  </c:url>

  <tr>
    <td>${emp.name}</td>
    <td>${emp.surname}</td>
    <td>${emp.department}</td>
    <td>${emp.salary}</td>
    <td>
      <input type="submit" value="Update" onclick="window.location.href='${updateButton}'">
    </td>
    <td>
      <input type="submit" value="Delete" onclick="window.location.href='${deleteButton}'">
    </td>
  </tr>
</c:forEach>
  <br><br>
  <input type="button" value="Add" onclick="window.location.href='addNewEmployee' ">
</table>
</body>
</html>
