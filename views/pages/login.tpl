{extends file="layouts/main.tpl"}
{block name="body"}

          <h1>Login or Register</h1>
               {if $error}
    <div class="alert alert-danger" role="alert">
        {$error}
    </div>
{/if}
{if $success}
    <div class="alert alert-success" role="alert">
        {$success}
    </div>
{/if}

<div class="container mt-5">
  <div class="row justify-content-center align-items-stretch g-4">

    <!-- LOGIN CARD -->
    <div class="col-md-6 col-lg-5 d-flex">
      <div class="card login-card flex-fill p-4">
        <h2 class="mb-3 text-center">Login</h2>
        <form id="login-form" method="post" action="">
          <div class="mb-3">
            <label class="form-label" for="login_email">Email address</label>
            <input type="email" class="form-control" id="login_email" name="email">
          </div>
          <div class="mb-3">
            <label class="form-label" for="login_password">Password</label>
            <input type="password" class="form-control" id="login_password" name="password">
          </div>
          <div class="text-center">
            <button type="submit" name="login" value="1" class="btn btn-primary">Login</button>
          </div>
        </form>
      </div>
    </div>

    <!-- REGISTER CARD -->
    <div class="col-md-6 col-lg-5 d-flex">
      <div class="card login-card flex-fill p-4">
        <h2 class="mb-3 text-center">Register</h2>
        <form id="registration-form" method="post" action="">
          <div class="mb-3">
            <label class="form-label" for="reg_email">Email address</label>
            <input type="email" class="form-control" id="reg_email" name="email">
          </div>
          <div class="mb-3">
            <label class="form-label" for="reg_password">Password</label>
            <input type="password" class="form-control" id="reg_password" name="password">
          </div>
          <div class="mb-3">
            <label class="form-label" for="reg_password_confirm">Confirm Password</label>
            <input type="password" class="form-control" id="reg_password_confirm" name="password_confirm">
          </div>
          <div class="text-center">
            <button type="submit" name="register" value="1" class="btn btn-primary">Register</button>
          </div>
        </form>
      </div>
    </div>

  </div>
</div>

   
{/block}