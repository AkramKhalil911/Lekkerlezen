<?php 
include_once 'config.php';

class books {
    var $afbeelding;
    var $titel;
    var $auteur;
    var $prijs;
    var $ISBN;

    public function layout(){
        echo '<li><div class="boeken-box">';
        echo '<a href="boekpagina.php?ISBN='. $this->ISBN .'">';
        echo '<img class="boekenIMG" src="images/boeken/'. $this->afbeelding .'"></img>';
        echo '</a>';
        echo '<a href="boekpagina.php?ISBN='. $this->ISBN .'">';
        echo '<h1>' . $this->titel . '</h1>';
        echo '</a>';
        echo '<h2>' . $this->auteur .'</h2>';
        echo '<p>' . $this->prijs . '</p>';
        echo '</div></li>';
    }
}

$titel = $_GET['titel'];

function booksearch(){
    global $con, $titel;
    $result = $con->query('SELECT * FROM boekenlijst WHERE titel LIKE "%'. $titel .'%"');
    $result->setFetchMode(PDO::FETCH_CLASS, 'books');
    while ($row = $result->fetch()) {
        $row->layout();
    }
}

booksearch();
?>