<!-- AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO
 AAAAARRUMARRR ESSA BOMBA DESSE NEGOCIOOOOOOOOOOOOOOOO)OOO-->
<?php 
include 'conexao.php';

$login = $_POST['login'];
$senha = $_POST['senha'];
// $tipo = $_POST['tipo'];

$sql = "SELECT * FROM usuarios WHERE login = ?";
$stmt = $con->prepare($sql);
$stmt->bind_param("s", $login);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $usuario = $result->fetch_assoc();
    // Verificar a senha
    if (password_verify($senha, $usuario['senha'])) {
        // Login bem-sucedido
        $_SESSION['usuario_id'] = $usuario['id'];
        $_SESSION['usuario_nome'] = $usuario['nome'];
        echo "Login realizado com sucesso, " . $usuario['nome'] . "!";
        // Redirecionar para uma página de sucesso ou painel
        // header("Location: painel.php"); // Descomente para redirecionar
    } else {
        echo "Senha incorreta.";
    }
} else {
    echo "Usuário não encontrado.";
}

$con->close();
?>