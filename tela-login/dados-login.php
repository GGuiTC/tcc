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


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['login'];
    $password = $_POST['senha'];

    // Conexão ao banco de dados
    // $pdo = new PDO('mysql:host=localhost;dbname=seu_banco', 'usuario', 'senha');
    $stmt = $pdo->prepare("SELECT * FROM users WHERE username = ?");
    $stmt->execute([$username]);
    $user = $stmt->fetch();

    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['user_id'] = $user['id'];
        echo "Login bem-sucedido!";
        // Redirecionar ou mostrar uma mensagem de sucesso
    } else {
        echo "Usuário ou senha incorretos.";
    }
}
?>