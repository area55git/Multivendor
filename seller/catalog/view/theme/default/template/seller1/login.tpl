<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" /> -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans|PT+Serif" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/AdminLTE.min.css">
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/skins/_all-skins.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
      <?php if ($logo) { ?>  
      <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"  height="40px" /></a   
     <?php } else { ?>        
      <b><a href="<?php echo $home; ?>"><?php echo $name; ?></a></b><?php } ?>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>
    <?php if ($success) { ?>
      <div   class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
      <?php } ?>
      <?php if ($error_warning) { ?>
      <div  class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
      <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
      <div class="form-group has-feedback">
        <input type="email" name="email" class="form-control" value="<?php echo $email; ?>"  placeholder="<?php echo $entry_email; ?>">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" name="password" class="form-control" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <!-- <label>
              <input type="checkbox"> Remember Me
            </label> 
             SILENCE IS GOLDEN
            -->
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
        </div>
        <!-- /.col -->
        <?php if ($redirect) { ?>
              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
      </div>
    </form>
    <a  id="login1" href="<?php echo $forgotten; ?>" class="register">I forgot my password</a><br><br>
    <a  id="login1" href="<?php echo $register; ?>" class="text-center">Register a new membership</a> <Hr>
    <a  id="login1" href="<?php echo HTTP_SERVER1; ?>" class="text-center"> Back to store</a>  
<!--     <a href="#"></a>
    <a href="register.html" class="text-center"></a>
    <a href="register.html" class="text-center">Register a new membership</a>
 -->
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->
<!-- Bootstrap 3.3.5 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../../plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
</html>
<!-- <div  style="background-color: #e9eff3;">
 <h1 class="loginh1">  </h1>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script><link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" /><script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script><link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" /><link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" /><link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet"><link href="catalog/view/theme/default/stylesheet/register.css" rel="stylesheet">
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
              </div>
              <div class="form-group">
                <label class="control-label" for="input-password" style="font-size: 14px;font-weight: 600;"><?php echo $entry_password; ?></label>
                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
              </div>
            </form>
          </div> -->
<?php echo $footer; ?>