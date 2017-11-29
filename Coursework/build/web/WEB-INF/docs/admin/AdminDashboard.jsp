<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : main
    Created on : 27-Nov-2017, 13:16:36
    Author     : Frazer, Sasha
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/resources/AdminDashboardNavBar.jsp" %>

<div class="content">
    <h1>Admin Dashboard</h1>

    <sql:query var="result" dataSource="jdbc/XYZDriver">
       SELECT * FROM ROOT.MEMBERS
    </sql:query>
    
    <table border="1">
        <!-- column headers -->
        <tr>
            <c:forEach var="columnName" items="${result.columnNames}">
                <th><c:out value="${columnName}"/></th>
                </c:forEach>
        </tr>
        <!-- column data -->
        <c:forEach var="row" items="${result.rowsByIndex}">
            <tr>
                <c:forEach var="column" items="${row}">
                    <td><c:out value="${column}"/></td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
        
        
    <div style="display: none;">       
        ${JDBCBean.executeSQLQuery("SELECT * FROM ROOT.MEMBERS")}
    </div>
    <h2>XYZ Members</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>DOB</th>
            <th>DOR</th>
            <th>Membership</th>
            <th>Balance</th>
        </tr>
        <c:forEach items="${JDBCBean.resultsToArrayList()}" var="row" varStatus="rowStatus">
            <tr>
                <c:forEach items="${row}" var="column" varStatus="columnStatus">
                    <c:choose>
                        <c:when test="${columnStatus.last}">
                            <td>£${column}</td>
                        </c:when>
                        <c:otherwise>
                            <td>${column}</td>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
    <br><br>

    <div style="display: none;">
        ${JDBCBean.executeSQLQuery("SELECT * FROM ROOT.CLAIMS")}       
    </div>
    <h2>All Claims</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Member ID</th>
            <th>Date</th>
            <th>Rationale</th>
            <th>Status</th>
            <th>Amount</th>
        </tr>
        <c:forEach items="${JDBCBean.resultsToArrayList()}" var="row" varStatus="rowStatus">
            <tr>
                <c:forEach items="${row}" var="column" varStatus="columnStatus">
                    <c:choose>
                        <c:when test="${columnStatus.last}">
                            <td>£${column}</td>                           
                        </c:when>
                        <c:otherwise>
                            <td>${column}</td>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
    <br><br>

    <div style="display: none;">
        ${JDBCBean.executeSQLQuery("SELECT * FROM ROOT.PAYMENTS")}
    </div>
    <h2>All Payments</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Member ID</th>
            <th>Type</th>
            <th>Amount</th>
            <th>Date</th>
        </tr>
        <c:forEach items="${JDBCBean.resultsToArrayList()}" var="row" varStatus="rowStatus">
            <tr>
                <c:forEach items="${row}" var="column" varStatus="columnStatus">
                    <c:choose>
                        <c:when test="${columnStatus.index eq 3}">
                            <td>£${column}</td>
                        </c:when>
                        <c:otherwise>
                            <td>${column}</td>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>
</div>


