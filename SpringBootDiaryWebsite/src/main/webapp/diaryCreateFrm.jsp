<jsp:include page="diaryIndex.jsp"></jsp:include>
	<div align="center" style="margin-top:40px">
		<form action="/saveDiary">
			<table border="1" class="createFrm">
				<tr>
					<Td colspan="2" align="center">Diary Creation Form</Td>
				</tr>
				<tr>
					<Td>First Name</Td>
					<td><input type="text" name="personFirst"></td>
				</tr>
				<tr>
					<Td>Last Name</Td>
					<td><input type="text" name="personLast"></td>
				</tr>
				<tr>
					<Td>Email Address</Td>
					<td><input type="email" name="personEmail"></td>
				</tr>
				<tr>
					<Td>Contact 1</Td>
					<td><input type="text" name="personContact1"></td>
				</tr>
				<tr>
					<Td>Contact 2</Td>
					<td><input type="text" name="personContact2"></td>
				</tr>
				<tr>
					<Td>Address</Td>
					<td><textarea name="personAddress" cols="50" rows="5"
							style="overflow: scroll;"></textarea></td>
				</tr>
				<tr>
					<td coslpan="2" align="center"><input type="submit" class="submit" value="Create Record">
						<input type="reset" class="resetfrm" value="clear"></td>
			</table>

		</form>

	</div>
</body>
</html>