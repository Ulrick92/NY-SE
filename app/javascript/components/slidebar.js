const slider = document.getElementById("myRange");
const cleanliness = document.getElementById("sock_cleanliness");

function sliderValue() {
  // console.log(slider.value);
  cleanliness.value = slider.value;
}

export { sliderValue };
