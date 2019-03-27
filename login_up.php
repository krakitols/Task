
<?php 

session_start();

$password = md5($_POST['password']);
$email = $_POST['email'];


foreach ($_POST as $input) {
	if (empty($input)) {
 	$errorMessage = "Заполните все поля";
	include 'errors.php';
	exit();	
	}

}
$dsn = new PDO('mysql:host=localhost;dbname=test', 'root', '');	
$connSqlCheck = 'SELECT id FROM	users WHERE password = :password or email = :email';
$stmt = $dsn->prepare($connSqlCheck);
$stmt->bindParam(':password', $password );
$stmt->bindParam(':email', $email);
$stmt->execute();
$checkUser = $stmt->fetchColumn();

var_dump($checkUser);

if ($checkUser) {
	header('Location: list.php');
	exit();

} else {
	$errorMessage = "Email или пароль неправильный";
    include 'errors.php';
}


 ?>
