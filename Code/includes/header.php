<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lekker lezen</title>
    <link rel="icon" href="images/logo.png">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Archivo+Black&family=Noto+Sans&family=Roboto:wght@300&family=Roboto+Condensed:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="stylesheet/style.css">
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBc_PDe5aqGgUv0rnyh368O7rrSZ1O-zqc&callback=initMap" type="text/javascript"></script>
    <script src="javascript/anime.min.js"></script>
    <script src="javascript/main.js" defer></script>
</head>
<body>
    <header>
        <div id="menubar">
            <div href="#" class="logolink"><a href="index.php" class="logoDesign1">Lekker</a><a href="index.php" class="logoDesign2">Lezen</a></div>
            <div id="menu_left">
                <ul class="menulinks">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="top10.php">Top 10</a></li>
                    <li><a href="boeken.php">Boeken</a></li>
                    <li><a href="contact.php">Contact</a></li>
                    <form id="searchflex" action="search.php" method="GET">
                        <label for="searchbar" id="searchIcon"><i class="fal fa-search"></i></label>                    
                        <input type="search" name="titel" id="searchbar" class="searchbar" placeholder="Zoek op titel">
                    </form>
                </ul>
            </div>
        </div>
    </header>