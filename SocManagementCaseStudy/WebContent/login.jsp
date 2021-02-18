<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/style.css">
  <title>Login</title>
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
    backdrop-filter: blur(8px);
    background-color: aliceblue;
    opacity:0.9;
}
</style>

<body>

<div class="row justify-content-center">
  <div class="col-md-9">
    <div class="center">

      <form class="center2" action="processLogin.jsp" method="post">

          <h1 style="text-align:center; padding-bottom:30px; font-size:180%">Admin Login</h1>
          <div class="form-group row">
            <label  class="col-sm-3 col-form-label" for="userName"><span>Username</span></label>
            <div class="col-sm-9">
              <input type="text" id="userName" name="userName" class="form-control" placeholder="Username">
            </div>
          </div>

          <div class="form-group row">
            <label class="col-sm-3 col-form-label" for="password">Password</label>
            <div class="col-sm-9">
              <input type="password" id="password" name="password" class="form-control"  placeholder="Password">
            </div>
          </div>

          <div class="form-group row">
            <div class="col-sm-12" style="margin-left: 38%; font-size: 120%"><br>
              <button type="submit" class="btn btn-primary" value="Login">Login</button>
            </div>
          </div>
      </form>

    </div>
</div>
</div>
	
</body>
</html>