


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container my-5">
        <h2>LIST OF CLIENTS</h2>
        <a class="btn btn-primary" href="/vr kamalesh/create.php" role="button">NEW CLIENT </a>
        <br>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>EMAIL</th>
                    <th>PHONE</th>
                    <th>ADDRESS</th>
                    <th>CREATED AT</th>
                    <th>ACTION</th>
                </tr>
            </thead>
            <tbody>
                <?php
                 $servername ="localhost";
                 $username ="root";
                 $password ="";
                 $database ="vr kamalesh";

                 // Create connection
                 $connection = new mysqli($servername, $username, $password, $database);

                 // Check connection
                 if($connection->connect_error){
                    die("Connection failed:" . $connection->connect_error);
                 }

                 // read all row from the database table
                 $sql = "SELECT * FROM hello";
                 $result = $connection->query($sql);

                 if(!$result){
                    die("Invaild query:" . $connection->error);
                 }
                 
                 // read data of each row
                 while($row = $result->fetch_assoc()) {
                    echo"
                    <tr>
                    <td>$row[id]</td>
                    <td>$row[name]</td>
                    <td>$row[email]</td>
                    <td>$row[phone]</td>
                    <td>$row[address]</td>
                    <td>$row[created_at]</td>
                    <td>
                        <a class='btn btn-primary btn-sm'href='/vr kamalesh/edit.php?id=$row[id]'>EDIT</a>
                        <a class='btn btn-danger btn-sm'href='/vr kamalesh/delete.php?id=$row[id]'>DELETE</a>
                    </td>
                </tr>
                    ";
                 } 
                  
                ?>
            <tr>
                <td>10</td>
                <td>khishor</td>
                <td>khishor@gmail.com</td>
                <td>123456745</td>
                <td>CALIFORNIA</td>
                <td>18/05/2022</td>
                <td>
                    <a class='btn btn-primary btn-sm' href='/vr kamalesh/edit.php'>EDIT</a>
                    <a class='btn btn-danger btn-sm' href='/vr kamalesh/delete.php'>DELETE</a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</body>
</html>