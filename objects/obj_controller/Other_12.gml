/// @description Set Hole and Check Win
imgSlices[holeX][holeY] = pointer_null

if(!setup){
	var chk = 0
	for(var cx = 0; cx < xSlices; cx++)
		for(var cy = 0; cy < ySlices; cy++){
			if(imgSlices[cx][cy] != pointer_null && imgSlices[cx][cy].ind != chk)
				return;
			chk++
		}
	
	draw_set_color(c_lime)
	text = "You win."
}