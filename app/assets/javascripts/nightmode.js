// app/assets/javascripts/night_mode_toggle.js
document.addEventListener('DOMContentLoaded', () => {
    const toggleNightModeButton = document.getElementById('toggleNightModeButton');
  
    toggleNightModeButton.addEventListener('click', () => {
      document.body.classList.toggle('night-mode');
    });
  });
  