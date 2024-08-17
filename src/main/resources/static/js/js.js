
  // JavaScript code for the slideshow
  let slideIndex = 0;
  showSlides();

  function showSlides() {
    let i;
    let slides = document.getElementsByClassName("mySlides");
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}
    slides[slideIndex-1].style.display = "block";
    setTimeout(showSlides, 1000); // Change image every 2 seconds
  }
  
  //Animacao do h1
  document.addEventListener('DOMContentLoaded', (event) => {
    const phrases = ["Seja bem Vindo!", "A loja de venda de material informatico", "Gerencie os seus produtos!", "Com maior eficiencia" ];
    const speed = 15; // Velocidade de digitação em ms
    const eraseSpeed = 50; // Velocidade de apagar em ms
    const delayBetweenPhrases = 2000; // Delay entre frases em ms

    let textElement = document.getElementById('animated-text');
    let phraseIndex = 0;
    let letterIndex = 0;
    let isDeleting = false;

    function type() {
        let currentPhrase = phrases[phraseIndex];
        let displayedText = currentPhrase.substring(0, letterIndex);

        textElement.textContent = displayedText;

        if (!isDeleting && letterIndex < currentPhrase.length) {
            letterIndex++;
            setTimeout(type, speed);
        } else if (isDeleting && letterIndex > 0) {
            letterIndex--;
            setTimeout(type, eraseSpeed);
        } else if (!isDeleting && letterIndex === currentPhrase.length) {
            setTimeout(() => isDeleting = true, delayBetweenPhrases);
            setTimeout(type, eraseSpeed);
        } else if (isDeleting && letterIndex === 0) {
            isDeleting = false;
            phraseIndex = (phraseIndex + 1) % phrases.length;
            setTimeout(type, speed);
        }
    }

    type();
});



