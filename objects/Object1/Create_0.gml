/// @description Insert description here
// You can write your code in this editor

//xSpeed is how many pixels the player will move each frame
xSpeed = 4; 

//what direction the player is moving. 1 = right, -1 = left. 0 is 
xDirection = 0; 

//multiply speed * direction
xVector = xSpeed * xDirection; 

 //gravity 
grv = .3; 
jumpForce = -10;

yVector = 0; 