<jsp:include page="userIndex.jsp"></jsp:include>
<div class="divfrm">
	<form action="/createUser">
		<table border="1" class="createFrm" align="centeR">
			<tr>
				<td colspan="2">User Creation Form</td>
			</tr>
			<tr>
				<th>First Name</th>
				<td><input type="text" name="userFirst"></td>
			</tr>
			<tr>
				<th>Last Name</th>
				<td><input type="text" name="userLast"></td>
			</tr>
			<tr>
				<Th>User Name</Th>
				<td><input type="text" name="userName"></td>
			</tr>
			<tr>
				<Th>Password</Th>
				<th><input type="password" name="userPassword"></th>
			</tr>
			<tr>
			<tr>
				<th>Confirm Password</th>
				<td><input type="password" name="confirmPassword"></td>
			</tr>
			<tr>
				<th>Email Id</th>
				<th><input type="email" name="userEmail"></th>
			</tr>
			<tr>
				<th>User Type</th>
				<td><select name="userType">
						<option value="None">None</option>
						<option value="Admin">Admin</option>
						<option value="User">User</option>

				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" class="submit"
					value="Create User"> <input type="reset" class="reset"
					value="clear Form"></td>
			</tr>




		</table>

	</form>
</div>
</body>
</html>