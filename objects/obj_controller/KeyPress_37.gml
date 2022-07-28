/// @description Left Pressed
if(holeX < xSlices - 1){
	imgSlices[holeX++][holeY] = imgSlices[holeX + 1][holeY]
	event_user(2)
}