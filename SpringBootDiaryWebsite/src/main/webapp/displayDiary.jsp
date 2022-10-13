<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="vikas.RatanRaman.Diary.*" %>
    <%@ page import="java.util.*" %>
    <%
    String msg="";
    if(request.getAttribute("msg")!=null)
    {
    	msg=(String)request.getAttribute("msg");
    }
    %>
    <h1><%=msg%></h1>
    <jsp:include page="diaryIndex.jsp"></jsp:include>
    
    <table border="1" style="margin-top:20px;" class="displayData">
    <tr>
    	<Td colspan="9" align="CenteR"> Person Record Details</Td>
    </tr>
    <tr align="center">
    	<Th> Person Id </Th>
    	<th> First Name</th>
    	<th> Last Name</th>
    	<th> Email </th>
    	<th> Contact 1</th>
    	<th> Contact 2</th>
    	<th> Address</th>
    	<th colspan="2">Operation</th>
    </tr>
    <%
    List<Diary> tmp=(List<Diary>)request.getAttribute("diary");
    
    for(Diary diary:tmp)
    {
    %>
    <tr>
    	<Td> <%=diary.getPersonId() %></Td>
    	<Td> <%=diary.getPersonFirst() %></Td>
    	<Td> <%=diary.getPersonLast() %></Td>
    	<Td> <%=diary.getPersonEmail() %></Td>
    	<Td> <%= diary.getPersonContact1()%></Td>
    	<Td> <%=diary.getPersonContact2() %></Td>
    	<Td> <%=diary.getPersonAddress() %></Td>
    	<Td> <a href="/editDiaryFrm?personId=<%=diary.getPersonId() %>">Edit</a></Td>
    	<Td><a href="/deleteDiary?personId=<%=diary.getPersonId() %>" onClick="return confirm('Are you sure to delete this')">Delete</a></Td>
    </tr>
    <%
    }
    %>	
    </table>
   
</body>
</html>