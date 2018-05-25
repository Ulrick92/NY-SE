// écouter le click sur la class .button-label
function selectPayMethod() {
  const labels = document.querySelectorAll('.button-label');
  // const pickup = document.querySelector('.button-label');
  // const shipping_input = document.getElementById('sock_shipping_method');

  labels.forEach((label) => {
    console.log("pay method")
    label.addEventListener('click', (event) => {
      if (event.currentTarget.nextElementSibling) {
        event.currentTarget.nextElementSibling.classList.remove('checked');
      } else {
        event.currentTarget.previousElementSibling.classList.remove('checked');
      }
      event.currentTarget.classList.add('checked');
      const value = event.currentTarget.innerText;
      document.getElementById('transaction_pay_method').value = value;
      // event.pickup.idList.toggle("#no-button:checked")
    });
  });
}

export { selectPayMethod };
  // 1. lui ajouter une certaine classe css (active) -- enlever la classe active de l'autre
  // 2. récuperer le texte
  // 3. selectionner l'input #sock_shipping_method
  // 3. lui donner la valeur du 2.
