<jsp:include page="diaryIndex.jsp"></jsp:include>
 <%@ page import="vikas.RatanRaman.Diary.*" %>
    <%@ page import="java.util.*" %>
<%

Optional<Diary> dd=(Optional<Diary>)request.getAttribute("diary");
Diary tmp=dd.get();

%>

	<div align="center" style="margin-top:40px">
		<form action="/updateDiary"  Method="post">
			<table border="1" class="createFrm">
				<tr>
					<Td colspan="2" align="center">Diary Updation Form</Td>
				</tr>
				<tr>
					<Td>Person Id </Td>
					<td><input type="text" name="personId" value=<%=tmp.getPersonId() %> readonly></td>
				</tr>
				<tr>
					<Td>First Name</Td>
					<td><input type="text" name="personFirst" value=<%=tmp.getPersonFirst() %>></td>
				</tr>
				<tr>
					<Td>Last Name</Td>
					<td><input type="text" name="personLast" value=<%=tmp.getPersonLast() %>> </td>
				</tr>
				<tr>
					<Td>Email Address</Td>
					<td><input type="email" name="personEmail" value=<%=tmp.getPersonEmail() %>></td>
				</tr>
				<tr>
					<Td>Contact 1</Td>
					<td><input type="text" name="personContact1" value=<%=tmp.getPersonContact1() %>></td>
				</tr>
				<tr>
					<Td>Contact 2</Td>
					<td><input type="text" name="personContact2" value=<%=tmp.getPersonContact2() %>></td>
				</tr>
				<tr>
					<Td>Address</Td>
					<td><textarea name="personAddress" cols="50" rows="5"
							style="overflow: scroll;">value=<%=tmp.getPersonAddress() %></textarea></td>
				</tr>
				<tr>
					<td coslpan="2" align="center"><input type="submit" class="submit" value="Update">
						<input type="reset" class="resetfrm" value="clear"></td>
			</table>

		</form>

	</div>
</body>
</html>