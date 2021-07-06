<?php include 'includes/header.php'?>
    <div id="contactbanner">
        <h1>Contact</h1>
    </div>
    <div id="spacingcontact">
        <form id="contactBG" action="includes/contactdb.php" method="POST">
                <div id='contactinhoud'>
                    <div class="contactinput">
                        <label for='voornaam'>Voornaam</label>
                        <input type="text" name="voornaam" id="voornaam">
                    </div>
                    <div class="contactinput">
                        <label for='achternaam'>Achternaam</label>
                        <input type="text" name="achternaam" id="achternaam">
                    </div>
                    <div class="contactinput">
                        <label for='email'>Email</label>
                        <input type="text" name="email" id="email">
                    </div>
                    <div class="contactinput">
                        <label for='telefoonnummer'>Telefoonnummer</label>
                        <input type="text" name="telefoonnummer" id="">
                    </div>
                    <div class="contactinput">
                        <label for='onderwerp'>Onderwerp</label>
                        <input type="text" name="onderwerp" id="onderwerp">
                    </div>
                    <input type="submit" id="contactsubmit" value="submit" name="contactsubmit">
                </div id='contactbanner'>
            </form>
        <div>
    <div>
</div>
<?php include 'includes/footer.php'?>