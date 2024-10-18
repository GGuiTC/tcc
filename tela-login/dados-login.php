<?php
include 'conexao.php'; 

$login = $_POST['login']; 
$senha = $_POST['senha']; 

$stmt = $con->prepare("SELECT senha FROM usuarios WHERE login = :login");
$stmt->execute(['login' => $login]);
$senhaArmazenada = $stmt->fetchColumn();

if ($senhaArmazenada) {
    if (password_verify($senha, $senhaArmazenada)) {
        header("location:dashboard.php");
        exit;
    } else {
       echo "<script>alert('Senha incorreta!'); window.location.href = 'index.php';</script>";
    }
} else {
    echo "<script>alert('Login não encontrado!'); window.location.href = 'index.php';</script>";
}
?>
