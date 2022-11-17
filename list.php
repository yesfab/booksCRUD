<?php
include('connect.php');

$sth = $dbh->prepare("SELECT * FROM livres");
$sth->execute();

/* Fetch all of the remaining rows in the result set */
$result = $sth->fetchAll();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <title>Liste de livres</title>
</head>
<body>
    <table class="table table-hover">
    <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Titre</th>
            <th scope="col">Genre</th>
            <th scope="col">Synopsis</th>
            <th scope="col">Auteur</th>
            <th scope="col">Date de parution</th>
            <th scope="col">Action</th>
        </tr>
    </thead>
    <tbody>
        <?php
            foreach ($result as $row) {
                ?><tr>
                    <td><?=$row['id_titre']?></td>
                    <td><?=$row['titre']?></td>
                    <td><?=$row['genre']?></td>
                    <td><?=$row['synopsis']?></td>
                    <td><?=$row['auteur']?></td>
                    <td><?=$row['date_parution']?></td>
                    <td>
                        <button type="button" class="btn btn-success btn-sm mb-3"><a href="update.php" style="color: white">Modify</a></button>
                        <button type="button" class="btn btn-danger btn-sm"><a href="delete.php" style="color: white">Delete</a></button>
                    </td>
                </tr><?php
            }
        ?>
    </tbody>
    </table>
</body>
</html>