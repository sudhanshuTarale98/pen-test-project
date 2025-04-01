<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
    <title>Search</title>
</head>

<header>
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color:#6e6e6e;">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="index.html" style="font-family: 'Lato', sans-serif">Arts Tailor</a>
        </div>
    </nav>
</header>
<body style="font-family: 'Nunito', sans-serif;">
    <div class="container text-center">
        <form method="POST">
            <label for="search">Search Product</label>
            <input type="text" class="form-control p-2" name="search">
            <input type="submit" class="btn btn-info m-2" value="Search">
        </form>
    </div>
    <div class="container">
    <table class="table table-striped">
		<thead>
		<tr>
			<th scope="col">product_name</th>
			<th scope="col">cost</th>
		</tr>
		</thead>
		<tbody>
		<?php
        if(isset($_POST['search'])){
            require "showProduct.php";
            if ( $result ) {
                foreach ( $result as $row ) {
                    echo '<tr>';
                    echo '<td>' . $row['product_name'] . '</td>';
                    echo '<td>' . $row['cost'] . '</td>';
                    echo '</tr>';
                }
            }
        }
		
		?>
		</tbody>
	</table>

    </div>
    
</body>
</html>