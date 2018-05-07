// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/


//rain sounds
function rain() {
  var thunder = document.getElementById("rain")
  thunder.play()
};

// Allegra voice over
function Allegra() {
  var voice1 = document.getElementById("Allegra")
  setInterval(function(){ voice1.play(); }, 5000);
};

// Frida voice over
function Frida() {
  var voice2 = document.getElementById("Frida")
  setInterval(function(){ voice2.play(); }, 7000);
};

// Sharif voice over
function Sharif() {
  var voice3 = document.getElementById("Sharif")
  setInterval(function(){ voice3.play(); }, 9000);
};

// Clayton voice over
function C_Because() {
  var voice4 = document.getElementById("C_Because")
  setInterval(function(){ voice4.play(); }, 14000);
};

// // Clayton voice over2
// function C_Board() {
//   var voice5 = document.getElementById("C_Board")
//   setInterval(function(){ voice5.play(); }, 200);
// };







// door sound
  // function door() {
  //   var creak = document.getElementById("door")
  //   setInterval(function(){ creak.play(); }, 18000);
  //   creak.pause()
  // };
