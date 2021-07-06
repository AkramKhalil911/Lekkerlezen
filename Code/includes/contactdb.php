<?php
include_once 'config.php';

if(isset($_POST['contactsubmit'])){
   $voornaam = $_POST['voornaam'];
   $achternaam = $_POST['achternaam'];
   $email = $_POST['email'];
   $telefoonnummer = $_POST['telefoonnummer'];
   $onderwerp = $_POST['onderwerp'];
   $message = "";

   if(empty($_POST["voornaam"]) && empty($_POST["achternaam"]) && (empty($_POST["email"]) && empty($_POST["telefoonnummer"])) && empty($_POST["onderwerp"])){
      $message = "U moet uw velden invullen";
   }
   if(Details($con, $voornaam, $achternaam, $email, $telefoonnummer, $onderwerp)); {
      $_SESSION['naam'] = $naam;
      header("location:contact.php?verzonden");
   }
}


function Details($con, $voornaam, $achternaam, $email, $telefoonnummer, $onderwerp) {
   $query = $con->prepare("
   INSERT INTO contact (voornaam, achternaam, email, telefoonnummer, onderwerp)
   VALUES(:voornaam, :achternaam, :email, :telefoonnummer, :onderwerp)
   ");

   $query->bindParam(":voornaam", $voornaam);
   $query->bindParam(":achternaam", $achternaam);
   $query->bindParam(":email", $email);
   $query->bindParam(":telefoonnummer", $telefoonnummer);
   $query->bindParam(":onderwerp", $onderwerp);

   return $query->execute();
}