/// @description Insert description here
// You can write your code in this editor

//if I am pressing on right key, right = 1, otherwise right = 0 
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);

jump = keyboard_check_pressed(vk_space);

//can be either a 1, - or 0;
xDirection = right-left;
//if yVector is postive, sign(yVector) = 1, 
//if yVector is negitive, sign(yvector) = -1
yDirection = sign(yVector);

xVector = xSpeed * xDirection; 
yVector = yVector + grv; 

//check to see if the move is legal or if it 
//would colide and not be legal move. 
if (place_meeting(x + xVector, y, Object4))
{
    while (!place_meeting(x + xDirection, y, Object4))	
   {
      //it's safe to move one pixel 
        x = x + xDirection;
   }
   xVector = 0; 
}
//moves 4 pixels in a given direction 
x = x + xVector; 

if (place_meeting(x, y+ yVector, Object4))
{
    while (!place_meeting(x, y+ sign(yVector), Object4))	
   {
        //move one pixel 
		//if yVector is postive then sign(yVector) = 1 
		//if yVector is negative then sign(yVector) = -1 
        y = y + sign(yVector);
   }
   //make sure xVector won't move us
   yVector = 0; 
} 
y = y + yVector; 

//to jump we need to check 2 things,
//first check to see if the pixel below us is gound
//second, check to see if the jump button was pressed 

if (place_meeting(x, y+1, Object4) and (jump))
{
     yVector = jumpForce;	
}

if (place_meeting(x, y, Coin))
{
	instance_destroy(Coin); 
}

