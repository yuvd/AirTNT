const toggleActiveOnClick = (event) => {
  event.currentTarget.classList.toggle("active");
};
const toggleActiveClass = (category) => {
  category.addEventListener("click", toggleActiveOnClick);
};
const categories = document.querySelectorAll(".category");
categories.forEach(toggleActiveClass);
