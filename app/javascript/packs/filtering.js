

const selectCategory = (categ) => {
  const slct = document.querySelectorAll('.category');
  console.log(slct);
};

document.addEventListener("keyup", (event) => {

})



query







// const moveWagon = (player) => {
//   const activePosition = document.querySelector(`#${player} > td.active`);
//   const nextPosition = document.querySelector(`#${player} > td.active + td`);
//   const finish = document.querySelector(`#${player} > td.finish`);
//   const start = document.querySelector(`#${player} > td.start`);
//   activePosition.classList.remove("active");
//   nextPosition.classList.add("active");
//   if (nextPosition === finish) {
//     alert(`${player} has won!`);
//     window.location.reload();
//   }
// };


// document.addEventListener("keyup", (event) => {
//   console.log(event.key);
//   let currentId;

//   if (event.key === 'r') {
//     currentId = "player1_race";
//     moveWagon(currentId);
//   } else if (event.key === 'b') {
//     currentId = "player2_race";
//     moveWagon(currentId);
//   }
// });
