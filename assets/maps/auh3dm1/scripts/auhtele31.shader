textures/auhtele31/blue_telep
{ 
	  cull disable	
        surfaceparm nomarks
        surfaceparm trans
        sort additive	

        {
	        
	        clampmap textures/auhtele31/blue_telep.tga
		blendFunc add
                //depthWrite
                //tcMod stretch sin .9 0.1 0 .5
                tcmod rotate 50
                rgbGen identity
	}
        {
	        clampmap textures/auhtele31/blue_telep2.tga
		blendFunc add
                //depthWrite
                //tcMod stretch sin .9 0.1 0 .1
                tcmod rotate -100
                rgbGen identity
        }
        {
	        clampmap textures/auhtele31/telep.tga
		alphaFunc GE128
                depthWrite
	        rgbGen identity
	}
        {
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}



}
