// document.getElementById("button").addEventListener("click", function () {
//   document.querySelector(".popup").style.display = "flex";
//   document.body.style.overflow = "hidden";
// })



var buttons = document.querySelectorAll(".text-20");
buttons.forEach(function (button) {
  button.addEventListener("click", function () {
    document.querySelector(".popup").style.display = "flex";
    document.body.style.overflow = "hidden";

  });
});

document.querySelector(".close").addEventListener("click", function () {
  document.querySelector(".popup").style.display = "none";
  document.body.style.overflow = "auto";
})
