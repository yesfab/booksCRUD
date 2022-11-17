<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <div class="content update">
        <h2>Create Contact</h2>
        <form action="create.php" method="post">

            <label for="id_titre">ID Titre</label>
            <input type="number" name="id_titre" placeholder="id_titre" value="auto" id="id_titre">

            <label for="titre">Titre</label>
            <input type="text" name="titre" placeholder="titre" id="titre">

            <label for="genre">Genre</label>
            <input type="text" name="genre" placeholder="genre" id="genre">

            <label for="synopsis">Synopsis</label>
            <input type="text" name="synopsis" placeholder="synopsis" id="synopsis">

            <label for="id_auteur">ID Auteur</label>
            <input type="text" name="id_auteur" placeholder="id_auteur" id="id_auteur">

            <label for="date_parution">Date de parution</label>
            <input type="datetime-local" name="date_parution" value="<?=date('Y-m-d\TH:i')?>" id="date_parution">

            <input type="submit" value="Créer">
        </form>
    </div>

    <?php
        include 'connect.php';
        $pdo = pdo_connect_mysql();

        
        
        if (!empty($_POST)) {
            //attribution de l'id
            $id_titre = isset($_POST['id_titre']) && !empty($_POST['id_titre']) && $_POST['id_titre'] != 'auto' ? $_POST['id_titre'] : NULL;
            //attribution du titre
            $titre = isset($_POST['titre']) ? $_POST['titre'] : '';
            $genre = isset($_POST['genre']) ? $_POST['genre'] : '';
            $synopsis = isset($_POST['synopsis']) ? $_POST['synopsis'] : '';
            $id_auteur = isset($_POST['id_auteur']) ? $_POST['id_auteur'] : '';
            $date_parution = isset($_POST['date_parution']) ? $_POST['date_parution'] : date('Y-m-d H:i:s');
            
            $stmt = $pdo->prepare('INSERT INTO livres VALUES (?, ?, ?, ?, ?, ?)');
            $stmt->execute([$id, $name, $email, $phone, $title, $created]);
        }
    ?>
</body>
</html>