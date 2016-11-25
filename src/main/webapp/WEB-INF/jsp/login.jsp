<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


	<div class="jumbotron">
		<h1>Sample WebApp</h1>
	</div>

	<div class="container">

		<h1>Login</h1>

		<form class="form-horizontal" action="login" method="post">
			<div class="form-group">
				<label class="control-label col-sm-2" for="username" >Username:</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="username" name="username"
						placeholder="Enter username">
				</div>
				<div class="col-sm-7"></div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="password" >Password:</label>
				<div class="col-sm-3">
					<input type="password" class="form-control" id="password" name="password"
						placeholder="Enter password">
				</div>
				<div class="col-sm-7"></div>
			</div>
			<c:if test="${param.error != null}">
				<div class="col-sm-2"></div>
				<div class="alert alert-danger col-sm-3">
					<strong>Error!</strong> Invalid login credentials.
				</div>
			</c:if>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10 form-actions">	
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</div>
			<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
		</form>
	</div>

</body>
</html>



<!-- 
<html>
  <head>
    <title >Messages : Create</title>
  </head>
  <body>
    <div >
        <form action="login" method="post">               
            <fieldset>

                <label for="username">Username</label>
                <input type="text" id="username" name="username"/>      </br>  
                <label for="password">Password</label>
                <input type="password" id="password" name="password"/>
                <c:if test="${param.error != null}" >
                	<h3 style="font-size:20; color:#FF1C19;">Wrong id or password!</h3>
                </c:if>
                <div class="form-actions">
                    <button type="submit" class="btn">Log in</button>
                </div>
                <input type="hidden"  name="${_csrf.parameterName}"   value="${_csrf.token}"/>
            </fieldset>
        </form>
    </div>
  </body>
</html>
 -->
