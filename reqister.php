<?php

//Получаем данные с регистрации
$password = md5($_POST['password']);
$userName = $_POST['user'];
$email = $_POST['email'];


foreach ($_POST as $input) {
	if (empty($input)) {
		include 'errors.php';
		exit();
	}
}
 

// Выпольнаем запрос к БД

$mysqli = new mysqli("localhost", "root", "", "test");
$query_email = 'SELECT id FROM users WHERE email=?';

$stmt = $mysqli->prepare($query_email);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();
 
$check_email = $result->num_rows;

var_dump($check_email);

if ($check_email > 0) {
	$errorMessage = "Такой Email уже занят кем-то другим";
	include 'errors.php';
	exit();	
} else {
	$sql = "INSERT INTO users (login, email, password) VALUES ('$userName', '$email', '$password')";
  	$addUser = $mysqli->query($sql);
  	header("Location: /register-form.php");
  	exit;
}








 ?>