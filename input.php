<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Input new Property</title>
    <style>
        * {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>

<body>
    <h1>Property Input Page</h1>

    <form action="input.php" method="post">
        Advertisement title:<br>
        <input type="text" name="title" placeholder="advert title" size="50" required /><br><br>
        Property address:<br>
        <input type="text" name="address" size="75" placeholder="street address" required></textarea><br><br>
        Town/City:<br>
        <input type="text" name="city" placeholder="e.g. Bettembourg" size="50" required /><br><br>
        Postcode:<br>
        <input type="number" name="postcode" placeholder="e.g. 8010" size="20" required /><br><br>
        Property surface area:<br>
        <input type="number" name="area" placeholder="area in square metres" size="20" required /><br><br>
        Property Asking Price:<br>
        <input type="number" name="price" placeholder="asking price in whole €" size="20" required /><br><br>
        Property Primary Photograph:<br>
        <input type="file" name="photo" accept="image/*"><br><br>
        To sell or to rent?<br>
        <select name="type" required>
            <option value="sale">To sell</option>
            <option value="rent">To rent</option>
        </select><br><br>
        Property Description:<br>
        <textarea name="description" rows="8" cols="75" placeholder="enter the description of the property here"></textarea><br><br>
        <input type="submit" name="sub" value="submit" />
    </form>

</body>

</html>

<?php

// check for post imput and read inputs and sanitise at the same time
if (isset($_POST['sub'])) {
    if ($_POST['title'] && $_POST['address'] && $_POST['city'] && $_POST['postcode'] && $_POST['area'] && $_POST['price'] && $_POST['type']) {
        $title = htmlspecialchars($_POST['title']);
        $address =  htmlspecialchars($_POST['address']);
        $city = htmlspecialchars($_POST['city']);
        $postcode =  (int) htmlspecialchars($_POST['postcode']);
        $area = (int) htmlspecialchars($_POST['area']);
        $price =  (int) htmlspecialchars($_POST['price']);
        $photo = htmlspecialchars($_POST['photo']);
        $type =  htmlspecialchars($_POST['type']);
        $descr = htmlspecialchars($_POST['description']);
        // basic validation of image and integer fields
        if ($postcode > 999 && $postcode < 10000) {
            if ($price > 500 && $price < 10000000) {
                if ($area > 20 && $area < 10000) {
                    // To work with databases we will use a library call: mysqli
                    require_once 'database.php';
                    // Connect to my database server - see database.php file
                    $conn = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD, DB_NAME);
                    // Prepare my query - insert
                    $query = "INSERT
                    INTO housing(title, address, city, pc, area, price, photo, type, description)
                    VALUES('$title' , '$address', '$city', '$postcode', '$area', '$price', '$photo', '$type', '$descr')";
                    // Send the query to the DB
                    $results = mysqli_query($conn, $query);
                    if ($results) {
                        echo "The property details have been successfully added to our database";
                    } else {
                        echo "Sorry there was an error<br>";
                    }
                    // Close the connection to the database
                    mysqli_close($conn);
                } else echo "<br><br><h2>Property area not in valid range 20-10000m2</h2>";
            } else echo "<br><br><h2>Property price not in valid range 500€ - 10M€</h2>";
        } else echo "<br><br><h2>Invalid postcode</h2>";
    } else echo "<br><br><h2>All fields except photo and description are mandatory</h2>";
}

?>