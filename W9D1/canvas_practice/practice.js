document.addEventListener("DOMContentLoaded", function(){
const canvasVar = document.getElementById("mycanvas");
canvasVar.height = 500;
canvasVar.width = 500;
const ctx = canvasVar.getContext('2d');
ctx.fillStyle = "pink",
ctx.fillRect(0, 0, 500, 500);


});
