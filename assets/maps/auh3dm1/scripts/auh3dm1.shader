textures/auh3dm1/auhgglight_10k
{
	qer_editorimage textures/auh3dm1/auhgglight.tga
	q3map_lightimage textures/auh3dm1/auhgglight.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	light 1

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhgglight.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhgglight.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/auh3dm1/auhgglight_1k
{
	qer_editorimage textures/auh3dm1/auhgglight.tga
	q3map_lightimage textures/auh3dm1/auhgglight.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 1000
	light 1

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhgglight.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhgglight.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/auh3dm1/auhgglight_2k
{
	qer_editorimage textures/auh3dm1/auhgglight.tga
	q3map_lightimage textures/auh3dm1/auhgglight.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	light 1

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhgglight.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhgglight.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/auh3dm1/auhgglight_5k
{
	qer_editorimage textures/auh3dm1/auhgglight.tga
	q3map_lightimage textures/auh3dm1/auhgglight.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	light 1

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhgglight.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhgglight.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/auh3dm1/auhglight_10k
{
	qer_editorimage textures/auh3dm1/auhglight.tga
	q3map_lightimage textures/auh3dm1/auhglight.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 10000
	light 1

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhglight.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhglight.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/auh3dm1/auhglight_2k
{
	qer_editorimage textures/auh3dm1/auhglight.tga
	q3map_lightimage textures/auh3dm1/auhglight.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 2000
	light 1

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhglight.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhglight.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/auh3dm1/auhglight_5k
{
	qer_editorimage textures/auh3dm1/auhglight.tga
	q3map_lightimage textures/auh3dm1/auhglight.blend.tga
	surfaceparm nomarks
	q3map_surfacelight 5000
	light 1

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhglight.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhglight.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/auh3dm1/auhgrate
{
	surfaceparm nodamage
	q3map_lightimage textures/auh3dm1/greenfire.tga
	q3map_surfacelight 400

	{
		map textures/auh3dm1/greenfire.tga
		tcmod rotate 50
		tcmod scroll 0 1
		tcMod turb 0 .25 0 1.6
		tcmod scale 2 2
		rgbGen identity
	}
	{
		map textures/auh3dm1/auhgrate.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/auh3dm1/auhsky
{
	qer_editorimage textures/auh3dm1/auhsky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	q3map_globaltexture
	q3map_lightsubdivide 256
	q3map_sun 0.266383 0.3 0.2 100 60 85
	q3map_surfacelight 50
	skyparms - 512 -

	{
		map textures/skies/dimclouds.tga
		tcMod scroll 0.01 0.01
		tcMod scale 3 3
		depthWrite
	}
	{
		map textures/auh3dm1/auhsky.tga
		blendfunc GL_ONE GL_ONE
		tcMod scroll -0.01 -0.01
		tcMod scale 5 5
	}
}

textures/auh3dm1/auhslime
{
	qer_editorimage textures/liquids/slime7.tga
	q3map_lightimage textures/liquids/slime7.tga
	q3map_globaltexture
	qer_trans .5
	surfaceparm noimpact
	surfaceparm slime
	surfaceparm nolightmap
	surfaceparm trans
	q3map_surfacelight 250
	tessSize 32
	cull disable
	deformVertexes wave 100 sin 0 1 .5 .5

	{
		map textures/liquids/slime7c.tga
		tcMod turb .3 .2 1 .05
		tcMod scroll .01 .01
	}
	{
		map textures/liquids/slime7.tga
		blendfunc GL_ONE GL_ONE
		tcMod turb .2 .1 1 .05
		tcMod scale .5 .5
		tcMod scroll .01 .01
	}
	{
		map textures/liquids/bubbles.tga
		blendfunc GL_ZERO GL_SRC_COLOR
		tcMod turb .2 .1 .1 .2
		tcMod scale .05 .05
		tcMod scroll .001 .001
	}
}

textures/auh3dm1/auhslime_500
{
	qer_editorimage textures/liquids/slime7.tga
	q3map_lightimage textures/liquids/slime7.tga
	q3map_globaltexture
	qer_trans .5
	surfaceparm noimpact
	surfaceparm slime
	surfaceparm nolightmap
	surfaceparm trans
	q3map_surfacelight 500
	tessSize 32
	cull disable
	deformVertexes wave 100 sin 0 1 .5 .5

	{
		map textures/liquids/slime7c.tga
		tcMod turb .3 .2 1 .05
		tcMod scroll .01 .01
	}
	{
		map textures/liquids/slime7.tga
		blendfunc GL_ONE GL_ONE
		tcMod turb .2 .1 1 .05
		tcMod scale .5 .5
		tcMod scroll .01 .01
	}
	{
		map textures/liquids/bubbles.tga
		blendfunc GL_ZERO GL_SRC_COLOR
		tcMod turb .2 .1 .1 .2
		tcMod scale .05 .05
		tcMod scroll .001 .001
	}
}

textures/auh3dm1/auhwater
{
	qer_editorimage textures/liquids/pool3d_3.tga
	q3map_lightsubdivide 32
	qer_trans .5
	q3map_globaltexture
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water
	q3map_surfacelight 500
	surfaceparm nolightmap
	cull disable
	deformVertexes wave 64 sin .5 .5 0 .5

	{
		map textures/liquids/pool3d_5.tga
		blendFunc GL_dst_color GL_one
		rgbgen identity
		tcmod scale .5 .5
		tcmod transform 1.5 0 1.5 1 1 2
		tcmod scroll -.05 .001
	}
	{
		map textures/liquids/pool3d_6.tga
		blendFunc GL_dst_color GL_one
		rgbgen identity
		tcmod scale .5 .5
		tcmod transform 0 1.5 1 1.5 2 1
		tcmod scroll .025 -.001
	}
	{
		map textures/liquids/pool3d_3.tga
		blendFunc GL_dst_color GL_one
		rgbgen identity
		tcmod scale .25 .5
		tcmod scroll .001 .025
	}
}

textures/auh3dm1/flameanim_green_auh
{
	qer_editorimage textures/auh3dm1/auh_g_flame6.tga
	q3map_lightimage textures/auh3dm1/auh_g_flame6.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	q3map_surfacelight 500

	{
		animMap 10 textures/auh3dm1/auh_g_flame1.tga textures/auh3dm1/auh_g_flame2.tga textures/auh3dm1/auh_g_flame3.tga textures/auh3dm1/auh_g_flame4.tga textures/auh3dm1/auh_g_flame5.tga textures/auh3dm1/auh_g_flame6.tga textures/auh3dm1/auh_g_flame7.tga textures/auh3dm1/auh_g_flame8.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave inverseSawtooth 0 1 0 10
	}
	{
		animMap 10 textures/auh3dm1/auh_g_flame2.tga textures/auh3dm1/auh_g_flame3.tga textures/auh3dm1/auh_g_flame4.tga textures/auh3dm1/auh_g_flame5.tga textures/auh3dm1/auh_g_flame6.tga textures/auh3dm1/auh_g_flame7.tga textures/auh3dm1/auh_g_flame8.tga textures/auh3dm1/auh_g_flame1.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sawtooth 0 1 0 10
	}
	{
		map textures/auh3dm1/auh_g_flameball.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin .6 .2 0 .6
	}
}
