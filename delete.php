<?php
    if(isset($_GET['id'])){
        $query = "delete from books where book_id =".$_GET['id'];
        $result = mysqli_query($conn, $query);
    if($result){
?>
    <div class="msg">
    <h3>Success!</h3>
    <p>
    Book deleted Successfully!<br/>
    <a href="viewbooks.php">View All Books</a>
    </p>
    </div>
<?php
}
}
?>
</div>