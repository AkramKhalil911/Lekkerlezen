<?php include "includes/header.php"?>
    <main>
        <div id="boeken-background">
            <div id="boeken-banner">
                <h1>De top 10 meest verkochte boeken ooit!</h1>
            </div>
            <div id="boeken-container">
                <ul>
                    <?php include 'includes/top10db.php'?>
                </ul>
            </div>
        </div> 
    </main>
<?php include "includes/footer.php"?>