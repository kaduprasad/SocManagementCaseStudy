<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<title>Login</title>
<link rel="stylesheet" href="style.css">
</head>

<style>
  .center {
  margin: auto;
  width: 55%;
  padding: 30px 30px;
  font-size:110%;
  border: 2px solid #008CBA;
  border-radius: 10px;
  margin-top: 100px;
}
</style>

<body>
<!--
	<div align="center">
		<form action="processLogin.jsp" method="post">
			<table class="loginForm">
				<tr>
					<td><label for="userName">User Name</label></td>
					<td><input type="text" id="userName" name="userName" class="searchTextField"/></td>
				</tr>
				<tr>
					<td><label for="password">Password</label></td>
					<td><input type="password" id="password" name="password" class="searchTextField"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="Login" class="actionBtn" />
					</td>
				</tr>
			</table>
		</form>
	</div>
//-->

<div class="row justify-content-center">
<div class="col-md-9">
<div class="center">

<form class="center2" action="processLogin.jsp" method="post">
  <legend style="text-align:center; padding-bottom:30px; font-size:180%">Login</legend>

  <div class="form-group row">
    <label  class="col-sm-2 col-form-label" for="userName"><span>User name</span></label>
    <div class="col-sm-10">
      <input type="text" id="userName" name="userName" class="form-control" placeholder="Username">
    </div>
  </div>
  <div class="form-group row">
    <label class="col-sm-2 col-form-label" for="password">Password</label>
    <div class="col-sm-10">
      <input type="password" id="password" name="password" class="form-control"  placeholder="Password">
    </div>
  </div>
  <div class="form-group row">
    <div class="col-sm-10">
        <br>
      <button type="submit" class="btn btn-primary" value="Login">Login</button>
    </div>
  </div>
</form>

</div>
</div>
</div>
	
</body>
</html>