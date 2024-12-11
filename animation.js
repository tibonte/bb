function showImage() {
    document.getElementById('firstImage').style.display = 'none';
    document.getElementById('secondImage').style.display = 'block';
}

function hideImage() {
    document.getElementById('firstImage').style.display = 'block';
    document.getElementById('secondImage').style.display = 'none';
}

// JavaScript

function showImage1() {
    document.getElementById('firstImage1').style.display = 'none';
    document.getElementById('secondImage1').style.display = 'block';
}

function hideImage1() {
    document.getElementById('firstImage1').style.display = 'block';
    document.getElementById('secondImage1').style.display = 'none';
}

function showImage2() {
    document.getElementById('image1').style.display = 'none';
    document.getElementById('image2').style.display = 'block';
}

function hideImage2() {
    document.getElementById('image1').style.display = 'block';
    document.getElementById('image2').style.display = 'none';
}

 function image3() {
    document.getElementById('image3.1').style.display = 'none';
    document.getElementById('image3.2').style.display = 'block';
}

function images3() {
    document.getElementById('image3.1').style.display = 'block';
    document.getElementById('image3.2').style.display = 'none';
}


	
 function image4() {
    document.getElementById('image4.1').style.display = 'none';
    document.getElementById('image4.2').style.display = 'block';
}

function images4() {
    document.getElementById('image4.1').style.display = 'block';
    document.getElementById('image4.2').style.display = 'none';
}

/* Deuxieme colonne */
 function Simage1() {
    document.getElementById('Simage1').style.display = 'none';
    document.getElementById('Simage1.1').style.display = 'block';
}

function Simages1() {
    document.getElementById('Simage1').style.display = 'block';
    document.getElementById('Simage1.1').style.display = 'none';
}

function openModal() {
    var modal = document.getElementById('myModal');
    var modalContent = document.getElementById('modalContent');
    
    // Créer une copie du formulaire et l'ajouter à la fenêtre modale
    var formClone = document.querySelector('form').cloneNode(true);
    modalContent.innerHTML = ''; // Effacer le contenu précédent
    modalContent.appendChild(formClone);

    modal.style.display = 'block';
}

function closeModal() {
    var modal = document.getElementById('myModal');
    modal.style.display = 'none';
}

// Fermer le modal si l'utilisateur clique en dehors du contenu
window.onclick = function(event) {
    var modal = document.getElementById('myModal');
    if (event.target == modal) {
        modal.style.display = 'none';
    }
}
