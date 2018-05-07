// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

//pink panther sounds
function pink() {
  var panther = document.getElementById("pink")
  panther.play()
}


// //rain sounds
// function rain() {
//   var thunder = document.getElementById("rain")
//   thunder.play()
// };
//
//
// //door sound
//   function door() {
//     var creak = document.getElementById("door")
//     setInterval(function(){ creak.play(); }, 18000);
//     creak.pause()
//   };


var currentpos=0,alt=1,curpos1=0,curpos2=-1
function initialize(){
startit()
}
function scrollwindow(){
if (document.all)
  temp=document.body.scrollTop
else
  temp=window.pageYOffset
if (alt==0)
  alt=1
else
  alt=0
if (alt==0)
  curpos1=temp
else
  curpos2=temp
if (curpos1!=curpos2){
  if (document.all)
    currentpos=document.body.scrollTop+1
else
  currentpos=window.pageYOffset+1
  window.scroll(0,currentpos)
}
else{
    currentpos=0
    window.scroll(0,currentpos)
}
}
function startit(){
    setInterval("scrollwindow()",1)
}
  window.onload=initialize
