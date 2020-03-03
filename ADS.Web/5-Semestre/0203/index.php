<?php
include("./database/connection.php");
include("./Pessoa.php");

$titulo = "Hello World!";

$query = "SELECT * FROM contatos ORDER BY nome ASC";

$select = $connection->prepare($query);
$result = $select->execute();

$rows = $select->fetchAll(PDO::FETCH_OBJ);
?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $titulo ?></title>

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>

<body>
  <div class="container">
    <h1 class="text-center">
      <?= $titulo ?>
      <small>
        <?php echo date("d/m/Y H:i:s"); ?>
      </small>
    </h1>

    <div class="text-center">
      <a href="/cadastro.php" class="btn btn-success">Cadastrar contato</a>
    </div>

    <h3>Lista de pessoas Objeto</h3>
    <ul>
      <?php foreach($rows as $contato): ?>
      <li>
        <?php echo $contato->id ?>
        <?php echo $contato->nome ?>
        <?php echo $contato->email ?>
        <?php echo $contato->fone ?>
      </li>
      <?php endforeach ?>
    </ul>

  </div>
</body>

</html>