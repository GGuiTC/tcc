<?php 
if(!isset($_SESSION['logado'])){
    header("Location: acessoneg");
}else{

include 'conexao.php'; ?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Controle da turma</title>
  <link href="https://fonts.googleapis.com/css?family=Work+Sans&display=swap" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="css/cont.css">
</head>
<body>
    <div class="navb">
    <a href="dashboard">
            <img src="img/back.png" height="40px">
        </a>
      <h2>CONTROLE</h2>
      <p></p>
    </div>
<div class="tetudo">

  <div class="metade1">
    <div class="form-controle">
      <div class="tudo">
        <div class="input-box">
            <label>Professor(a)</label>
            <input type="text" name="prof" id="prof">
        </div>
    
        <div class="input-box">
            <label>Matéria</label>
            <input type="text" name="materia" id="materia">
        </div>
    
        <div class="input-box">
            <label>Data controle</label>
            <input type="date" name="data" id="data">
        </div>
      </div>

      <div class="selects">
        <select name="periodo" id="periodo">
          <option value="matutino">Matutino</option>
          <option value="vespertino">Vespertino</option>
          <option value="noturno">Noturno</option>
        </select>
        <select name="turma" id="turma">
          <option value="151">151</option>
          <option value="152">152</option>
          <option value="153">153</option>
          <option value="154">154</option>
          <option value="251">251</option>
          <option value="252">252</option>
          <option value="253">253</option>
          <option value="254">254</option>
          <option value="351">351</option>
          <option value="352">352</option>
          <option value="353">353</option>
          <option value="354">354</option>
        </select>
      </div>
        <button type="submit" class="btn-tm btn-white">Puxar</button>
    </div>
  </div>


</div>
</body>

<script>
  const meuSelect = document.getElementById('periodo');
  meuSelect.addEventListener('focus', () => {
      meuSelect.classList.add('active');
  });
  
  meuSelect.addEventListener('blur', () => {
      meuSelect.classList.remove('active');
  });

  const meuSelect2 = document.getElementById('turma');
  meuSelect2.addEventListener('focus', () => {
      meuSelect2.classList.add('active');
  });
  
  meuSelect2.addEventListener('blur', () => {
      meuSelect2.classList.remove('active');
  });
</script>
</html>
<?php 
}
?>