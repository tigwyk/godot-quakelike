models/mapobjects/cake/cake
{      
        {
                map models/mapobjects/cake/cake.tga
                rgbGen identity
        }
        {
                map textures/effects/tinfx.tga
                blendFunc add
                tcGen environment
                rgbGen identity
        }
        {
                map models/mapobjects/cake/cake.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
                rgbGen exactvertex
        }
                
}

models/mapobjects/cake/cake_candle
{      
        {
                map models/mapobjects/cake/cake_candle.tga
                rgbGen identity
        }
        {
                map textures/effects/tinfx.tga
                blendFunc add
                tcGen environment
                rgbGen identity
        }
        {
                map models/mapobjects/cake/cake_candle.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
                rgbGen exactvertex
        }
                
}

models/mapobjects/cake/cake_plate
{
        {
                map models/mapobjects/cake/cake_plate.tga
                //rgbGen identity
        }
        {
                map textures/effects/tinfx.tga
		blendFunc add
                tcGen environment
                rgbGen identity
        }
        {
                map models/mapobjects/cake/cake_plate.tga
                blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
                rgbGen exactvertex
        }
}

//flame uses textures/sfx/xflame1 internally