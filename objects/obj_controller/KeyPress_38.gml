/// @description Up Pressed
if(holeY < ySlices - 1){
	imgSlices[holeX][holeY++] = imgSlices[holeX][holeY + 1]
	event_user(2)
}