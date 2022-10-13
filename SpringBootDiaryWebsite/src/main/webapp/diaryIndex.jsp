<html>
<head>
<title> Welcome to Project</title>

<style>

.main_page
{
background-image:linear-gradient(#f4e0cb,#bf95b4);
margin:100px;

}
.welcometext
{
font-size:220%;

}
.menu
{
width:100%;
background-image:linear-gradient(#e6a8d7,#4b0082);
color:white;
}
.menu a
{
color:white;
font-size:120%;

}
.menu a:hover
{
background-color:blue;

}
.submit
{
background-color:rgb(50,205,50);
color:white;

}
.createFrm
{
color:white	;
background-image:radial-gradient(rgb(187,51,133),rgb(141,78,133));
}
.resetfrm
{
color:white;;
bckground-color:red;

}
.displayData
{
background-image:radial-gradient(rgb(0,130,127), rgb(139,69,19));
color:white;
font-size:120%;
border-style:outset;
border-width:23;
border-color:rgb(0,191,255);

}
.module
{

background: rgba(34, 141, 132, 1.0);
background: -webkit-radial-gradient(top left, rgba(34, 141, 132, 1.0), rgba(114, 70, 107, 1.0));
background: -moz-radial-gradient(top left, rgba(34, 141, 132, 1.0), rgba(114, 70, 107, 1.0));
background: radial-gradient(to bottom right, rgba(34, 141, 132, 1.0), rgba(114, 70, 107, 1.0));
color:white;
text-align: center;

}
</style>
</head>
<body class="main_page">

<marquee behavior="alternate" class="welcometext">Welcome To Diary Management</marquee>
<h1 class="module"> Diary Page</h1>
<table class="menu">
<tr>
	<td><a href="/">Home</a>
	<td><a href="/createDiary">Create Record</a></td>
	<td><a href="/displayDiary">Show Record</a></td>
	<td><a href="/editDiary">Edit Record</a>
	<td><a href="/deleteDiary">Delete Record</a>
	<td><a href="/logout">Logout</a></td>
	
	
	
</table>
</body>
</html>
