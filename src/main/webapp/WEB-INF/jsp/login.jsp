<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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