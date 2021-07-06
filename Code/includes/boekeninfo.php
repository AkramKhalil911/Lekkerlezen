<?php 

include_once 'config.php';

class bookinfo {
    var $titel;
    var $auteur;
    var $ISBN;
    var $genre;
    var $prijs;
    var $vorm;
    var $datum;
    var $samenvatting;
    var $afbeedling;

    public function print_info(){
        echo '<div class="allbookinfo">';        
        echo '<div class="infobox1"><img class="boekeninfoIMG" src="images/boeken/'.  $this->afbeelding .'"></img>';
        echo '<div class="basicinfo">';
        echo '<h1>' . $this->titel . '</h1>';
        echo '<h2>' . $this->auteur .' | ' . $this->ISBN .'</h2>';
        echo '<h3>Prijs: ' . $this->prijs .'</h3>';
        echo '</div>
        </div>';
        echo '<div class="samenvattingboek">';
        echo '<h1>Samenvatting:</h1><p>'. $this->samenvatting . '</p></div>';
        echo '<div class="detailedinfo">';
        echo '<div class="informationbook">';
        echo '<h3>Informatie<h3>';
        echo '<p>Genre: '. $this->genre . '</p>';
        echo '<p>Vorm: '. $this->vorm . '</p>';
        echo '<p> ISBN: '. $this->ISBN . '</p>';
        echo '<p> Datum: '. $this->datum . '</p>';
        echo '</div>';
        echo '</div>';
        echo '</div>';
    }
}

$ISBN = $_GET['ISBN'];

function bookslayoutpage(){
    global $con, $ISBN;
    $result = $con->query('SELECT * FROM boekenlijst WHERE ISBN=' . +$ISBN);
    $result->setFetchMode(PDO::FETCH_CLASS, 'bookinfo');
    while ($row = $result->fetch()) {
        $row->print_info();
    }
}

bookslayoutpage();

?>