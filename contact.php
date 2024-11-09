<?php require_once 'elements/header.php' ?>
<div class="mainpage">
   
   <img src="image/page d'accueil/Image.webp" alt="photo de l'entrée du zoo d'Arcadia" class="imgZoo">
       <p class="horaire">Nous sommes ouverts du mercredi au dimanche,
           <br>
           de <strong>10h</strong> à <strong>19h</strong> sans interruption.
           <br>
           Le zoo est également ouvert les jours fériés.
       </p>
   </div>
   <div class="mainpage">
   
   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d42676.09817185243!2d-2.2233505570440144!3d48.047392065857466!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x480faceab3587495%3A0xcdc883e818be2eb2!2sFor%C3%AAt%20de%20Broc%C3%A9liande!5e0!3m2!1sfr!2sfr!4v1730032286274!5m2!1sfr!2sfr" width="400" height="300" style="border:0; border-radius: 20px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> 
        <p class="horaire">Zoo ARCADIA
            Près de la la foret de Brocéliande
            42, avenue Carre, Paimpont 35211

            Numero : 0404040404
            Email : zoo-arcadia@hotmail.fr
        </p>
   </div>

   <div class="title vert">
        <h2 class="sous-menu beige">Envoyez un Message</h2>
    </div>
    <div class="title vert">
        <form class="formulaire">
            <fieldset id="contact">
                <legend><h4>Contact</h4></legend>

                <div id="div_nm">
                    <label for="name">Nom :</label><input type="text" name="nom" id="name" placeholder="Nom" required>
                </div>

                <div id="div_fnm">
                    <label for="firstname">Prenom :</label><input type="text" name="prenom" id="firstname" placeholder="Prenom" required>
                </div>
            
                <div>
                    <label for="email">Email :</label><input type="email" id="email" name="email" placeholder="email@mail.com" required>
                </div>

                <textarea name="message" id="message" cols="30" rows="10" placeholder="Message..." required></textarea>
                <a href="#" class="button">Envoyer</a>
            </fieldset>
        </form>
    </div>
    <div class="title beige">
        <h2 class="sous-menu vert">Laissez un avis</h2>
    </div>
    <div class="title beige">
        <form class="formulaire">
            <fieldset id="avis">
                <legend><h4>Avis</h4></legend>

                <div>
                    <div id="div_fnm">
                    <label for="firstname">Pseudo :</label><input type="text" name="prenom" id="firstname" placeholder="Prenom" required>
                </div>

                <div>
                    <label for="email">Email :</label><input type="email" id="email" name="email" placeholder="email@mail.com" required>
                </div>

                <textarea name="message" id="message" cols="30" rows="10" placeholder="Message..." required></textarea>

                <a href="#" class="button">Envoyer</a>
            </fieldset>
        </form>
    </div>
   
<?php require_once 'elements/footer.php'; ?>
<script src="script.js"></script> 
</body>
</html>