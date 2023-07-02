<style>
  <%@include file='/WEB-INF/views/css/style.css'%>
</style>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login Form - Modal</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900|Material+Icons'>

  
</head>

<body>
  
<!-- Form-->
<div class="form">
  <div class="form-toggle"></div>
  <div class="form-panel one">
    <div class="form-header">
      <h1>Account Login</h1>
    </div>
    <div class="form-content">
      <form method="post" id="login">
        <div class="form-group">
          <label for="loginIn">Login</label>
          <input type="text" form="login" id="loginIn" name="login" required="required"/>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" form="login" id="password" name="password" required="required"/>
        </div>
        <div class="form-group">
          <label>
            <h1 style="color: red; text-align: center">${errorMessage}</h1>
          </label>
        </div>
        <div class="form-group">
          <button type="submit" form="login">Log In</button>
        </div>
      </form>
    </div>
  </div>
  <div class="form-panel two">
    <div class="form-header">
      <h1>Register Account</h1>
    </div>
    <div class="form-content">
      <form method="post" id="register" action="${pageContext.request.contextPath}/drivers/add">
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" id="username" name="username" required="required"/>
        </div>
        <div class="form-group">
          <label for="passwordReg">Password</label>
          <input type="password" id="passwordReg" name="passwordReg" required="required"/>
        </div>
        <div class="form-group">
          <label for="license_number">License number</label>
          <input type="text" id="license_number" name="license_number" required="required"/>
        </div>
        <div class="form-group">
          <label for="loginReg">Your login</label>
          <input type="text" id="loginReg" name="loginReg" required="required"/>
        </div>
        <div class="form-group">
          <button type="submit" form="login" formaction="/drivers/add" >Register</button>
        </div>
      </form>
    </div>
  </div>
</div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://codepen.io/andytran/pen/vLmRVp.js'></script>


<script type="text/javascript">
  <%@include file="/WEB-INF/views/js/index.js"%>
</script>

</body>
</html>
