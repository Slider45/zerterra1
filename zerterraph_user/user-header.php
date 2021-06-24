

<nav class="navbar is-dark">
        <div class="navbar-brand">
            <a class="navbar-item" href="index.php">
                <img src="images/weblogo.png">
            </a>
            <div class="navbar-burger burger is-active" data-target="navMenu">
            <i class="fa fa-bars fa-2x"></i>
            </div>
        </div> 

        <div id="navMenu" class="navbar-menu">
            <div class="navbar-end">
                <p class="navbar-item" id="userid"><?= $_SESSION['userEmail']?><img src="images/avatar.png" id="userIcon"></p>
                <input type="hidden" value="<?= $_SESSION['userID']?>" name="userid">
            <!--    <a class="navbar-item" href="logout.php"><i class="fas fa-sign-out-alt"></i>&nbspLogout</a> -->
            </div>
        </div>
</nav>