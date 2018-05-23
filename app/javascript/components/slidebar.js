const slider = document.getElementById("myRange");
const cleanliness = document.getElementById("sock_cleanliness");

function sliderValue() {
  cleanliness.value = slider.value;
}

export { sliderValue };
