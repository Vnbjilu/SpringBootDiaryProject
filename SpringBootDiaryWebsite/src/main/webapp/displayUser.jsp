<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="vikas.RatanRaman.User.*" %>
    <%@ page import="java.util.*" %>
    <%
    String msg="";
    if(request.getAttribute("msg")!=null)
    {
    	msg=(String)request.getAttribute("msg");
    }
    %>
    <h1><%=msg%></h1>
    <jsp:include page="userIndex.jsp"></jsp:include>
    
    <table border="1" style="margin-top:20px;" class="displayData">
    <tr>
    	<Td colspan="8" align="CenteR"> User Record Details</Td>
    </tr>
    <tr align="center">
    	<Th> User Id </Th>
    	<th> First Name</th>
    	<th> Last Name</th>
    	<th> UserName </th>
    	<th> Email </th>
    	
    	<th> User Type</th>
    	
    	<th colspan="2">Operation</th>
    </tr>
    <%
    List<User> tmp=(List<User>)request.getAttribute("user");
    
    for(User user:tmp)
    {
    %>
    <tr>
    	<Td> <%= user.getUserId() %></Td>
    	<Td> <%= user.getUserFirst()%></Td>
    	<Td> <%= user.getUserLast() %></Td>
    	<Td> <%= user.getUserName()%></Td>
    	<Td> <%= user.getUserEmail()%></Td>
    	<Td> <%= user.getUserType() %></Td>
    	
    	<Td> <a href="/userDiaryFrm?personId=<%= user.getUserId() %>">Edit</a></Td>
    	<Td><a href="/deleteUser?personId=<%=user.getUserId() %>" onClick="return confirm('Are you sure to delete this')">Delete</a></Td>
    </tr>
    <%
    }
    %>	
    </table>
   
</body>
</html>