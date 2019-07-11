<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>View Properties</title>
	<style>
        * {
            font-family: Arial, Helvetica, sans-serif;
        }

		section {
			display: flex;
			flex-flow: row wrap;
		}

		article {
			display: flex;
			flex-direction: row;
			width: 600px;
			border: 1px solid black;
			padding: 0.5em;
			margin: 0.5em;
		}

		div {
            width: 45%;
			padding: 0.5em;
		}

        h2, p {
            font-size: 0.75em;
        }

		#emph {
			font-weight: 800;
			font-style: italic;
			font-size: 1em;
		}

        #box {
            height: 100px;
            border: 1px solid black;
            overflow: auto;
        }

        img {
            height: 150px;
            width: 200px;
        }
    </style>
</head>
<body>
	<h1>Product list</h1>
	<hr>

	<?php 

	require_once 'database.php';

	$db_handle = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD);
	$db_found = mysqli_select_db($db_handle, DB_NAME);

	if($db_found) {

		$sql_query = 'SELECT * FROM housing ORDER BY price DESC'; 

		$result_query = mysqli_query($db_handle, $sql_query);		
		echo "<section>";
		while ($db_record = mysqli_fetch_assoc($result_query)) {
			echo "<article>";
            echo "<div>";
            echo "<h2>" . $db_record['title'] . "<h2>";
            echo "<img src=" . $db_record['photo'] . " />";
            echo "<p> Area = " . $db_record['area'] . " Square metres<h2>";
            echo "</div>";
            echo "<div>";
            echo "<p id='emph'> Type: " . $db_record['type'] . "<p>";
			echo "<p id='emph'> Price: " . $db_record['price'] . "€<p>";
			echo "<p> Address: " . $db_record['address'] . ", " . $db_record['city'] . ", " . $db_record['pc'] . "<p>";
            echo "<p id = 'box'> Description: " . $db_record['description'] . "</p>";
			echo "</div>";
			echo "</article>";
		}		
		echo "</section>";

	} else {
		echo 'DB not found (' . DB_NAME . ')';
	}

	 ?>


</body>
</html>
    
</body>
</html>