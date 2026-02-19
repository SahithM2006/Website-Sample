document.addEventListener('DOMContentLoaded', () => {
  const menuToggle = document.querySelector('.menu-toggle');
  const nav = document.querySelector('header nav');
  if (menuToggle && nav) {
    menuToggle.addEventListener('click', () => nav.classList.toggle('open'));
  }

  // Smooth scroll for internal anchors
  document.querySelectorAll('a[href^="#"]').forEach(a => {
    a.addEventListener('click', (e) => {
      const href = a.getAttribute('href');
      if (href && href.startsWith('#')) {
        e.preventDefault();
        document.querySelector(href)?.scrollIntoView({ behavior: 'smooth' });
      }
    });
  });

  // Modal viewer for project images
  document.querySelectorAll('.projects img').forEach(img => {
    img.style.cursor = 'zoom-in';
    img.addEventListener('click', () => {
      const modal = document.createElement('div');
      modal.className = 'image-modal';
      modal.innerHTML = `
        <div class="image-modal-inner">
          <button class="close-modal" aria-label="Close">×</button>
          <img src="${img.src}" alt="Project image">
        </div>`;
      document.body.appendChild(modal);
      modal.querySelector('.close-modal').addEventListener('click', () => modal.remove());
      modal.addEventListener('click', (ev) => { if (ev.target === modal) modal.remove(); });
    });
  });

  // Scroll to top button
  const scrollBtn = document.getElementById('scrollTop');
  if (scrollBtn) {
    window.addEventListener('scroll', () => {
      if (window.scrollY > 300) scrollBtn.classList.add('visible'); else scrollBtn.classList.remove('visible');
    });
    scrollBtn.addEventListener('click', () => window.scrollTo({ top: 0, behavior: 'smooth' }));
  }

  // Basic form validation enhancement + optional redirect support
  document.querySelectorAll('form').forEach(form => {
    form.addEventListener('submit', (e) => {
      const email = form.querySelector('input[type="email"]');
      if (email && !email.value.includes('@')) {
        e.preventDefault();
        alert('Please enter a valid email address.');
        email.focus();
        return;
      }

      // If the form includes a data-redirect attribute, show confirmation then redirect
      const redirect = form.dataset.redirect;
      if (redirect) {
        e.preventDefault();
        alert('Inquiry submitted successfully!');
        window.location.href = redirect;
      }
    });
  });
});
