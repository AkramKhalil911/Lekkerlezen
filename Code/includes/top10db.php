<?php 

include_once 'configtop10.php';

class boeken {
    var $Image;
    var $Titel;
    var $Schrijver;
    var $sales;


    public function layout(){
        echo '<li><div class="boeken-box">';
        echo '<img class="boekenIMG" src="images/'. $this->Image .'"></img>';
        echo '</a>';
        echo '<h1>' . $this->Titel . '</h1>';
        echo '</a>';
        echo '<h2>' . $this->Schrijver .'</h2>';
        echo '<p>' . $this->sales . ' keer verkocht </p>';
        echo '</div></li>';
    }
}

function bookslayoutpage(){
    global $con;
    $result = $con->query('SELECT * FROM boeken');
    $result->setFetchMode(PDO::FETCH_CLASS, 'boeken');
    while ($row = $result->fetch()) {
        $row->layout();
    }
}

bookslayoutpage();
?>