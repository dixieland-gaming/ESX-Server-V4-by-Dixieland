document.addEventListener('DOMContentLoaded', () => {
    const progressBar = document.querySelector('.loading-progress');
    const loadingText = document.querySelector('.loading-text');
    const discordButton = document.getElementById('discord');
    const websiteButton = document.getElementById('website');
    const musicToggle = document.getElementById('music-toggle');
    const backgroundMusic = document.getElementById('background-music');
    const logoContainer = document.querySelector('.logo-container');
    const particleContainer = document.getElementById('particles');

    let isMusicPlaying = false;
    let particles = [];

    // Create particles
    function createParticles() {
        for (let i = 0; i < 50; i++) {
            const particle = document.createElement('div');
            particle.className = 'particle';
            particle.style.width = Math.random() * 5 + 'px';
            particle.style.height = particle.style.width;
            particle.style.left = Math.random() * 100 + '%';
            particle.style.top = Math.random() * 100 + '%';
            particle.style.animationDelay = Math.random() * 3 + 's';
            particleContainer.appendChild(particle);
            particles.push(particle);
        }
    }

    // Simulate loading progress
    let progress = 0;
    const loadingMessages = [
        'Loading resources...',
        'Preparing game assets...',
        'Initializing systems...',
        'Almost there...'
    ];

    const simulateLoading = () => {
        if (progress < 100) {
            progress += Math.random() * 2;
            if (progress > 100) progress = 100;
            
            progressBar.style.width = `${progress}%`;
            
            // Update loading message
            const messageIndex = Math.floor(progress / 25);
            if (messageIndex < loadingMessages.length) {
                loadingText.textContent = loadingMessages[messageIndex];
            }

            requestAnimationFrame(simulateLoading);
        } else {
            loadingText.textContent = 'Ready to play!';
            // Here you would typically trigger the game to start
        }
    };

    // Start loading animation
    simulateLoading();
    createParticles();

    // Music controls
    musicToggle.addEventListener('click', () => {
        if (isMusicPlaying) {
            backgroundMusic.pause();
            musicToggle.querySelector('i').className = 'fas fa-music';
        } else {
            backgroundMusic.play();
            musicToggle.querySelector('i').className = 'fas fa-pause';
        }
        isMusicPlaying = !isMusicPlaying;
    });

    // Logo interaction
    logoContainer.addEventListener('click', () => {
        logoContainer.style.transform = 'scale(1.1)';
        setTimeout(() => {
            logoContainer.style.transform = 'scale(1)';
        }, 200);
    });

    // Button click handlers
    discordButton.addEventListener('click', () => {
        // Replace with your Discord invite link
        window.open('https://discord.gg/YzsQUU46kE', '_blank');
    });

    websiteButton.addEventListener('click', () => {
        // Replace with your website URL
        window.open('https://www.dixieland-gaming.de', '_blank');
    });

    // Add hover effect for buttons
    const buttons = document.querySelectorAll('.glow-button');
    buttons.forEach(button => {
        button.addEventListener('mouseover', () => {
            button.style.transform = 'translateY(-2px)';
        });
        
        button.addEventListener('mouseout', () => {
            button.style.transform = 'translateY(0)';
        });
    });

    // Loading bar interaction
    const loadingBar = document.querySelector('.loading-bar');
    loadingBar.addEventListener('click', (e) => {
        const rect = loadingBar.getBoundingClientRect();
        const x = e.clientX - rect.left;
        const percentage = (x / rect.width) * 100;
        progress = Math.min(100, Math.max(0, percentage));
        progressBar.style.width = `${progress}%`;
    });
}); 