// Récupérer les éléments
const burgerMenu = document.getElementById('burger-menu');
const navMenu = document.getElementById('nav-menu');
const menuItems = document.querySelectorAll('.menu-item');

// Ajouter un événement pour ouvrir/fermer le menu principal
burgerMenu.addEventListener('click', () => {
    const mainNav = navMenu.querySelector('.main-nav');
    mainNav.classList.toggle('active'); // Afficher/masquer le menu
});

