const dropdowns = document.querySelectorAll('.dropdown-filter');
const submit = document.querySelector('input[type="submit"]');

dropdowns.forEach((dropdown) => {
  dropdown.addEventListener('change', () => { submit.click() })
});
