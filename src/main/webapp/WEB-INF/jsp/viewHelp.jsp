<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
margin: 0;
	height: 100%;
	/* background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%); */
	background-image: url("C:\Users\adity\OneDrive\Desktop\a2.jpg");
	background-repeat: no-repeat;
  background-size: cover;
  background-attachment: fixed;  padding: 0 10px;
}
.topnav {
  background-color: #333;
  overflow: hidden;
}
/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topnav .leftnav a{
float:right;
 color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
/* Add a color to the active/current link */
.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}


@import url(https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Oxygen);

/* Page layout */

body {
    background-color: #fff;
    margin: 0;
    padding: 0;
    font-family: 'Oxygen', sans-serif;
    color: #444;
    font-size: 15px;
    line-height: 18px;
    font-weight: 300;
}

header {
    margin: 0;
    background: #000;
    height: 65px;
    padding: 1px;
}

article {
    margin: 40px 30px;
}

h1 {
    font-family: 'Open Sans Condensed', sans-serif;
    letter-spacing: 1px;
    font-size: 2.3em;
    line-height: 44px;
    text-transform: uppercase;
    color: #fff;
    font-weight: 900;
    margin: 0;
    padding: 10px 0 0 30px;
    letter-spacing: 2px;
}

h2 { margin: 20px 0 10px 0;
    font-weight: 900;
}

p {
    margin: 20px 0 5px 0;
}


/* Table Layout */

table.vitamins {
    margin: 20px 0 5px 0;
    border-collapse: collapse;
    border-spacing: 0;
    background: #4B86B4;
    color: #fff;
    mardin-top:50px;
    
}

table.vitamins th, table.vitamins td {
    text-align: center;
}

table.vitamins thead {
    line-height: 12px;
    background: #2A4D69;
    text-transform: uppercase;
}

table.vitamins thead th {
    color: #fff;
    padding: 10px;
    letter-spacing: 1px;
    vertical-align: bottom;
}

table.vitamins thead th:nth-child(1) {
    width: 20%;
    text-align: left;
    padding-left: 20px;
}

table.vitamins thead th:nth-child(2) {
    width: 30%;
}

table.vitamins thead th:nth-child(3) {
    width: 35%;
}

table.vitamins thead th:nth-child(4) {
    width: 15%;
}

table.vitamins tbody {
    font-size: 1em;
    line-height: 15px;
}

table.vitamins tbody tr {
    border-top: 2px solid rgba(109, 176, 231, 0.8);
    transition: background 0.6s, color 0.6s;
}

table.vitamins tbody tr:nth-child(even) {
    background: rgba(255, 255, 255, 0.2);
}

table.vitamins tbody tr:hover {
    color: #000;
    background: rgba(170,255,255, 0.7);
    font-weight: 900;
}

table.vitamins tbody td {
    padding: 12px;
}

table.vitamins tbody tr:hover td:first-child {
    background: rgba(64,114,148,0);
}

table.vitamins tbody td:first-child {
    text-align: left;
    padding-left: 20px;
    font-weight: 700;
    background: rgba(109, 176, 231, 0.35);
    transition: backgrounf 0.6s;
}

table.vitamins tfoot {
    font-size: 0.8em;
}

table.vitamins tfoot tr {
    border-top: 2px solid #2ee7e1;
}

table.vitamins tfoot td {
    color: rgba(255,255,215,0.6);
    text-align: left;
    line-height: 15px;
    padding: 15px 20px;
}


/* Mobile Layout */

@media screen and (max-width: 400px) {
    h1 {
        font-size: 34px;
        line-height: 36px;
        padding-left: 15px;
    }

    article {
        margin: 10px 15px;
    }

    table.vitamins {
        font-size: 0.8em;
    }
}


</style>
</head>
<body>
<div class="topnav">
  <a  href="#home">Home</a>
  <a class="active" href="viewHelp">View Help</a>
  <a href="viewCat">Add Category</a>
  <a href="adminHistory">View All Issues</a>
     <a href="report">Generate Report</a>
  <div class="leftnav">
<a href="logout">Log Out</a>
</div>
</div>

<div>
<center>
<h2>Help Details</h2>
</center>
</div>
<table class="vitamins">
<thead>
<tr>
<th>RequestId</th>
<th>IssueId</th>
<th>Issue</th>
<th>Description</th>
<th>Date Of Ticket</th>
<th>Resolve</th>
<th>Delete</th>
</thead>
  <c:forEach items="${requestList}" var="item">
   <form method="post">
    <tr>
    <td><c:out value="${item.userId}" /></td>
      <input type="hidden" name="userId" value="${item.userId}"/>
      <td><c:out value="${item.requestId}" /></td>
      <input type="hidden" name="requestId" value="${item.requestId}"/>
       <td><c:out value="${item.issue}" /></td>
       <input type="hidden" name="issue" value="${item.issue}"/>
        <td><c:out value="${item.description}" /></td>
        <input type="hidden" name="description" value="${item.description}"/>
         <td><c:out value="${item.dateOfTicket}" /></td>
         <input type="hidden" name="dateOfTicket" value="${item.dateOfTicket}"/>
     
      <td><a type="button" class="btn btn-success" href="/resolveIssue?requestId=${item.requestId}">Resolve</a></td>
      <td><a type="button" class="btn btn-warning" href="/delete?requestId=${item.requestId}">Delete</a></td>
      </form>
    </tr>
  </c:forEach>
</table>

</body>
</html>
