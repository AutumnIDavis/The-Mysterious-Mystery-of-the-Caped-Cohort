// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/


function pink() {
  var panthar = document.getElementById("pink")
  panthar.play()
};

//rain sounds
function rain() {
  var thunder = document.getElementById("rain")
  thunder.play()
};

// Allegra voice over
function Allegra() {
  var voice1 = document.getElementById("Allegra")
  setTimeout(function(){ voice1.play(); }, 34000);
};

// Frida voice over
function Frida() {
  var voice2 = document.getElementById("Frida")
  setTimeout(function(){ voice2.play(); }, 36000);
};

// Sharif voice over
function Sharif() {
  var voice3 = document.getElementById("Sharif")
  setTimeout(function(){ voice3.play(); }, 42000);
};

// Clayton voice over
function C_Because() {
  var voice4 = document.getElementById("C_Because")
  setTimeout(function(){ voice4.play(); }, 2000);
};

// Clayton voice over2
function C_Board() {
  var voice5 = document.getElementById("C_Board")
  setTimeout(function(){ voice5.play(); }, 3500);
};







// door sound
  // function door() {
  //   var creak = document.getElementById("door")
  //   setInterval(function(){ creak.play(); }, 18000);
  //   creak.pause()
  // };
