
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">

    <title>Errors</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    
    <style>
      
    </style>
  </head>
    
  <body>
    <div class="container text-center mt-5">

      <?php if (isset($errorMessage)):?>
        <p><?php echo $errorMessage;?></p>
        <?php else: ?>
          <p>Заполните все поля</p>
        <?php endif ?>
        <a href="register-form.html">Назад</a>
    </div>
  </body>
</html>
