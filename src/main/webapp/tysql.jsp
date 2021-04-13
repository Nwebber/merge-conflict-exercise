<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="styles/main.css" rel="stylesheet">
    </head>
    <body>
        <h1>SELECT * FROM products;</h1>
        <sql:query dataSource="${db}" var="result">
            SELECT * FROM products
            WHERE prod_price < ?;
            <sql:param value ="${param.price}" />
        </sql:query>
        <table>
            <tr>
                <th>prod_id</th>
                <th>vend_id</th>
                <th>prod_name</th>
                <th>prod_price</th>
                <th>prod_description</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.prod_id}"/></td>
                    <td><c:out value="${row.vend_id}"/></td>
                    <td><c:out value="${row.prod_name}"/></td>
                    <td><c:out value="${row.prod_price}"/></td>
                    <td><c:out value="${row.prod_desc}"/></td>
                </tr>
            </c:forEach>
        </table>
    <h1>SELECT * FROM customers;</h1>
        <sql:query dataSource="${db}" var="result">
            SELECT * FROM customers;
        </sql:query>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
                <th>ZIP</th>
                <th>Country</th>
                <th>Contact</th>
                <th>Email</th>
            </tr>
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.cust_id}"/></td>
                    <td><c:out value="${row.cust_name}"/></td>
                    <td><c:out value="${row.cust_address}"/></td>
                    <td><c:out value="${row.cust_city}"/></td>
                    <td><c:out value="${row.cust_state}"/></td>
                    <td><c:out value="${row.cust_zip}"/></td>
                    <td><c:out value="${row.cust_country}"/></td>
                    <td><c:out value="${row.cust_contact}"/></td>
                    <td><c:out value="${row.cust_email}"/></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>