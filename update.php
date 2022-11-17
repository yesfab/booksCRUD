<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <h2>Modifier votre livre :</h2>
    <form>
    <div class="form-group">
        <label for="exampleInputEmail1">Titre</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Genre</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Synopsis</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Auteur</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Date de parution</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="">
    </div>
    <button type="submit" class="btn btn-success">Submit</button>
    <button type="submit" class="btn btn-danger"><a href="list.php" style="color: white"> Retour à la liste de livres</a></button>
    </form>
</body>
</html>