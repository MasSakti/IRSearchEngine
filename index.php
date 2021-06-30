<?php
$connect = mysqli_connect("localhost","root","","search");

$output = "";
if (isset($_POST['search'])) {
    $input = $_POST['input'];

    if (!empty($input)) {
        $query = "SELECT * FROM tb_search WHERE firstname LIKE '%$input%'";
        $res = mysqli_query($connect,$query);

        $output .= "
        <table class='table table-bordered table-striped'>
            <tr>
                <th>ID</th>
                <th>Firstname</th>
                <th>username</th>
                <th>Email</th>
                <th>Gender</th>
            </tr>
        ";

        if (mysqli_num_rows($res)<1) {
            $output.="
            <tr>
                <td colspan='6' class='text-center'> No data found</td>
                </tr>
            ";
        } else {
            while ($row = mysqli_fetch_array($res)) {
            $output.="
            <tr>
                <td>".$row['id']."</td>
                <td>".$row['firstname']."</td>
                <td>".$row['username']."</td>
                <td>".$row['email']."</td>
                <td>".$row['gender']."</td>
                ";
            }
        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title> Search Engine</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
    <h2 class="text-center my-5"> Search Engine Tugas Akhir IR</h2>
    <div class="container d-flex justify-content-center">
     <div class="col-md-12">
        <form method="post">
         <div class="row">
             <div class="col-md-9">
                 <input type="text" name="input" class="form-control" placeholder="Search....">
             </div>
             <div class="col-md-3">
                 <input type="submit" name="search" class="btn btn-info" value="Search">
             </div>
         </div>
        </form>
<br><br>
        <?php
            echo $output;

        ?>

     </div>
    </div>
</body>
</html>