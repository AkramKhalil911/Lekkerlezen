<?php include 'includes/header.php'?>
<?php include_once 'includes/config.php'?>
<?php include_once 'includes/configtop10.php'?>
    <main>
        <div id="index-background">
            <div id="index-container">
                <div id="banner">
                    <div id="bannercontent">
                        <h1 id="bannerTXT">Kies je favoriete boek</h1>
                        <h2 id="bannerBTN"><a href="boeken.php">Zoek meer</a></h2>
                    </div>
                </div>
                <div id="top10new">
                    <h2>Top 10 nieuwste boeken</h2>
                        <div class="top10booksIMGcontainer">
                            <?php 
                                $result = $con->query('SELECT * FROM boekenlijst ORDER BY id DESC LIMIT 5');
                                while ($row = $result->fetch()) {
                                    echo '<img class="top10booksIMG" src="images/boeken/' . $row[9] .'"</img>';}
                            ?> 
                        </div>
                    <div class="BTNcontainer"><a class="top10BTN" href="top10.php">Bekijk meer</a></div>
                </div>
                <div id="top10populair">
                    <h2>Top 10 populairste boeken</h2>
                        <div class="top10booksIMGcontainer">
                            <?php 
                                $result = $con->query('SELECT * FROM boeken ORDER BY id DESC LIMIT 5');
                                while ($row = $result->fetch()) {
                                    echo '<img class="top10booksIMG" src="images/' . $row[8] .'"</img>';}
                            ?> 
                        </div>
                    <div class="BTNcontainer"><a class="top10BTN" href="top10.php">Bekijk meer</a></div>
                </div>
            </div>
            <div id="footer-spacing"></div>
        </div>
    </main>
<?php include 'includes/footer.php'?>