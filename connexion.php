<?php require_once 'elements/header.php' ?>

<div class="title beige">
  <h2 class="sous-menu vert">Connexion</h2>
</div>
<div class="maineco1">
      <form action="login.php" method="post" class="formulaire">
          <fieldset id="contact">
              <div id="div_username">
                  <label for="username">Utilisateur :</label>
                  <input type="text" name="username" id="username" placeholder="Nom d'utilisateur" required>
              </div>

              <div id="div_password">
                  <label for="password">Mot de passe :</label>
                  <input type="password" name="mdp" id="mdp" placeholder="Mot de passe" style="border-radius: 20px; padding: 10px; border: 1px solid black;" required>
              </div>

              <button type="submit" class="button">Connexion</button>
              <?php
    // Affiche le message d'erreur si le paramètre 'error' est dans l'URL
    if (isset($_GET['error']) && $_GET['error'] == 1) {
        echo "<div class='alert alert-danger text-center' role='alert'>
        Nom d'utilisateur ou mot de passe incorrect.
      </div>";
    }
    ?>
          </fieldset>
      </form>
</div>


<?php require_once 'elements/footer.php' ?>