textures/tsh3_25th/wires01_flat
{
	qer_editorimage textures/base_trim/wires01.tga
	surfaceparm alphashadow
	surfaceparm nomarks
	surfaceparm nonsolid
	cull disable
	qer_alphafunc greater .5
	{
		map textures/base_trim/wires01.tga
		depthWrite
		alphaFunc GE128
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
		tcGen lightmap 
		depthFunc equal
	}
}

textures/tsh3_25th/shinymetaldoor_outside3a2_noglow
{
	qer_editorimage textures/base_door/shinymetaldoor_outside3a2.tga
	{
		map textures/base_wall/chrome_env.tga
		rgbGen identity
		tcMod scale 0.25 0.25
		tcGen environment 
	}
	{
		map textures/base_door/shinymetaldoor_outside3a2.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
	}
}

textures/tsh3_25th/shinymetaldoor_outside3a2_crusty
{
qer_editorimage textures/base_door/shinymetaldoor_outside3a2.tga
	{
		map textures/base_wall/patch10_beatup3.tga
		rgbGen identity
		tcMod scale 2 2
	}
	{
		map textures/base_door/shinymetaldoor_outside3a2.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendFunc filter
	}
	{
		map textures/base_door/shinymetaldoor_outside3glow.tga
		blendFunc add
		rgbGen wave sin .9 .1 0 5
	}
}

textures/tsh3_25th/wsupprt1_12_off
{
	qer_editorimage textures/base_light/wsupprt1_12.tga
	surfaceparm nomarks
	q3map_lightRGB 1 0.3 0.2
	q3map_surfacelight 300
	{
		map $lightmap 
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/base_light/wsupprt1_12.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/base_light/wsupprt1_12.blend.tga
		rgbGen const ( 0.5 0.05 0.05 )
		alphaGen wave sin 0.5 0.5 1 1
		blendfunc GL_ONE GL_SRC_ALPHA
	}
}

textures/tsh3_25th/wsupprt1_12_400
{
	qer_editorimage textures/base_light/wsupprt1_12.tga
	surfaceparm nomarks
	q3map_surfacelight 400
	//light1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/wsupprt1_12.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/base_light/wsupprt1_12.blend.tga
		rgbGen wave sin 0.5 0.5 1 1
		blendfunc GL_ONE GL_ONE
	}
}

textures/tsh3_25th/laptopscreen
{
	surfaceparm nomarks
	nopicmip
	q3map_lightsubdivide 16
	q3map_surfacelight 800
	q3map_lightRGB 0.8 0.92 1
	{
		map textures/tsh3_25th/laptopscreen.tga
		rgbGen identity
	}
	{
		map $lightmap 
		blendfunc filter
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/tsh3_25th/laptopscreen.tga
		blendfunc blend
		rgbGen wave sin 1.2 0.4 0 30 
	}
}

textures/tsh3_25th/metalfloor_wall_9b_fancyglow
{
	q3map_lightimage textures/sfx/metalfloor_wall_9bglow.tga
	q3map_lightsubdivide 32
	q3map_surfacelight 250
	{
		map $lightmap 
		rgbGen identity
		tcGen lightmap 
	}
	{
		map textures/tsh3_25th/metalfloor_wall_9b_fancyglow.tga
		blendfunc filter
		rgbGen identity
	}
	{
		map textures/sfx/metalfloor_wall_9bglow.tga
		blendfunc gl_dst_alpha gl_one
		tcMod scale -0.2 -0.2
		tcMod turb 0 0.07 0 0.07
		tcMod scroll -0.04 0.1
		rgbGen wave sin 1 0.2 0 0.18 
	}
	{
		map textures/sfx/metalfloor_wall_9bglow.tga
		blendfunc add
		rgbGen wave sin 1.5 0.4 0.5 0.18 
	}
}

textures/tsh3_25th/toxicskytsh
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight
	nopicmip //no picmip muddiness
	q3map_sunext 1 0.78 0.48 125 55 50 5 16
	q3map_lightmapFilterRadius 0 8
	q3map_skylight 175 12
	q3map_lightRGB 0.6 0.75 1
	qer_editorimage textures/skies/bluedimclouds.tga
	skyparms - 512 -
	{
		map textures/skies/bluedimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/skies/topclouds.tga
		blendFunc GL_ONE GL_ONE
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/tsh3_25th/comp3_manifesto
{
	surfaceparm nomarks
	q3map_lightRGB 1 0.831373 0.498039
	qer_editorimage textures/sfx/qer_imgs/comp3_qer.tga
	q3map_surfacelight 500
	{
		map textures/tsh3_25th/manifesto.tga
		tcmod scale 0.9 0.45
		tcMod transform 1 0 0 1 0.05 0 //centering
		tcmod scroll 0 .02
		rgbGen wave sin 1.2 .05 0 5
	}
	{
		map textures/tsh3_25th/scanlines.tga
		tcmod scale 32 32
		rgbGen identity
		alphagen const 0.25
		blendfunc blend
	}
	{
		map textures/base_wall/comp3env.tga
		tcGen environment
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin .98 .02 0 5
	}
	{
		map $lightmap
		tcGen environment
		blendFunc GL_DST_COLOR GL_ONE
	}
	{
		map textures/base_wall/comp3.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/tsh3_25th/atech1_crazy
{
	qer_editorimage textures/base_wall/atech1_alpha.tga
	q3map_lightimage textures/sfx/proto_zzztblu2.tga
	q3map_lightsubdivide 32
	q3map_surfacelight 200
	{
		map textures/sfx/proto_zzztblu2.tga
		tcMod turb 0 .5 0 4.5
		tcmod scale 2 2
		tcmod scroll 4 2.25
		blendFunc GL_ONE GL_ZERO
		rgbGen identity
	}
	{
		map textures/base_wall/atech1_alpha.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
}

textures/tsh3_25th/beam_dusty2_scroll
{
	qer_editorimage textures/sfx/beam_1.tga
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm nolightmap
	nopicmip // no glowy trapezoids!
	cull none
	qer_trans .5
	{
		map textures/sfx/beam_1.tga
		tcmod scroll .2 0
		rgbGen const ( .25 .25 .25 )
		blendFunc add
	}
	{
		map textures/sfx/beam_1.tga
		tcmod scale 0.2 1
		tcmod scroll -.07 0
		rgbGen const ( .25 .25 .25 )
		blendFunc add
	}
}

textures/tsh3_25th/fan3bladeb_slow
{
	qer_editorimage textures/sfx/fan3bladeb.tga
	qer_alphafunc greater .4
	cull disable
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	sort 5
	{
		clampmap textures/sfx/fan3bladeb.tga
		blendFunc blend
		tcmod rotate 577
		rgbGen identity
	}
}

textures/tsh3_25th/fan3bladeb_fast
{
	qer_editorimage textures/sfx/fan3bladeb.tga
	qer_alphafunc greater .4
	cull disable
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	sort 5
	{
		clampmap textures/sfx/fan3bladeb.tga
		blendFunc blend
		tcmod rotate 1031
		rgbGen identity
	}
}

textures/tsh3_25th/fan3bladeb_vfast
{
	qer_editorimage textures/sfx/fan3bladeb.tga
	qer_alphafunc greater .4
	cull disable
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	sort 5
	{
		clampmap textures/sfx/fan3bladeb.tga
		blendFunc blend
		tcmod rotate 1873
		rgbGen identity
	}
}

textures/tsh3_25th/light5_service
{
	qer_editorimage textures/base_light/light5.tga
//	light 1
	surfaceparm nomarks
	q3map_surfacelight 1000
	q3map_lightsubdivide 32
	q3map_backsplash 30 3 //no funky glow from below
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/xlight5.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/base_light/xlight5.blend.tga
		blendFunc GL_ONE GL_ONE
	}
}

textures/tsh3_25th/reinforced_glass // TF2-style unbreakable glass
{
	qer_editorimage textures/tsh3_25th/reinforced_glass_dirt.tga
	surfaceparm trans
	surfaceparm nomarks
	nopicmip //no picmip muddiness
	qer_trans 1
	sort 10
	

	{
		map textures/tsh3_25th/reinforced_glass_grid.tga
		tcmod transform 1 -1 1 1 0 0 // janky Q3 45 degree turn, allows use of square texture instead of pre-rotated texture
		tcmod scale 12 12 // make it small!
		blendfunc gl_one gl_zero
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map textures/effects/tinfx.tga
		tcgen environment
		blendFunc GL_src_alpha GL_ONE
		alphaGen const 0.15 // since it can't be lit, tone it down
	}
	{
		map textures/tsh3_25th/reinforced_glass_dirt.tga
		tcmod scale 2 2
		blendFunc gl_src_alpha gl_one_minus_src_alpha
		alphagen const 0.35
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc gl_dst_color gl_zero
		depthfunc equal
	}
}

textures/tsh3_25th/reinforced_glass2 // TF2-style unbreakable glass, now with more shit on it
{
	qer_editorimage textures/tsh3_25th/reinforced_glass_dirtier.tga
	surfaceparm trans
	surfaceparm nomarks
	nopicmip //no picmip muddiness
	qer_trans 1
	sort 10
	

	{
		map textures/tsh3_25th/reinforced_glass_grid.tga
		tcmod transform 1 -1 1 1 0 0 // janky Q3 45 degree turn, allows use of square texture instead of pre-rotated texture
		tcmod scale 12 12 // make it small!
		blendfunc gl_one gl_zero
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map textures/effects/tinfx.tga
		tcgen environment
		blendFunc GL_src_alpha GL_ONE
		alphaGen const 0.15 // since it can't be lit, tone it down
	}
	{
		map textures/tsh3_25th/reinforced_glass_dirtier.tga
		tcmod scale 2 2
		blendFunc gl_src_alpha gl_one_minus_src_alpha
	}
	{
		map $lightmap
		rgbGen identity
		blendfunc gl_dst_color gl_zero
		depthfunc equal
	}
}

textures/tsh3_25th/zzztblu //funky backdrop behind the "borg cubes"
{
	qer_editorimage textures/sfx/proto_zzztblu3.tga
	q3map_lightimage textures/sfx/proto_zzztblu3.tga
	q3map_lightsubdivide 16
	q3map_surfacelight 15000 //seriously, light the room already
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map textures/sfx/proto_zzztblu3.tga
		tcGen environment
		tcMod turb 0 -.5 0 7
		tcmod scale 6 6
		tcmod scroll 5 4
		rgbGen identity
	}
	{
		map textures/sfx/proto_zzztblu3.tga
		tcGen environment
		tcMod turb 0 .5 0 0.5
		tcmod scale 4 4
		tcmod scroll -1.3 0.5
		blendfunc gl_one gl_one
		rgbGen identity
	}
	{
		map textures/tsh3_25th/zzztmask.tga
		tcGen environment
		blendfunc gl_zero gl_src_color
		rgbGen identity
	}
}

textures/tsh3_25th/zzztblu2 //funky backdrop behind the teleporter, turns out the mask doesn't work properly when facing south.
{
	qer_editorimage textures/sfx/proto_zzztblu3.tga
	q3map_lightimage textures/sfx/proto_zzztblu3.tga
	q3map_lightsubdivide 16
	q3map_surfacelight 15000 //seriously, light the room already
	surfaceparm nomarks
	surfaceparm nolightmap
	{
		map textures/sfx/proto_zzztblu3.tga
		tcGen environment
		tcMod turb 0 -.5 0 7
		tcmod scale 6 6
		tcmod scroll 5 4
		rgbGen identity
	}
	{
		map textures/sfx/proto_zzztblu3.tga
		tcGen environment
		tcMod turb 0 .5 0 0.5
		tcmod scale 4 4
		tcmod scroll -1.3 0.5
		blendfunc gl_one gl_one
		rgbGen identity
	}
}

textures/tsh3_25th/ceil1_22a_machine
{
	surfaceparm nomarks
	qer_editorimage textures/base_light/ceil1_22a.tga
	q3map_lightsubdivide 16
	q3map_surfacelight 800
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/tsh3_25th/proto_lightred_bright
{
	qer_editorimage textures/base_light/proto_lightred.tga
	surfaceparm nomarks
	q3map_surfacelight 3000
//	light 1
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/proto_lightred.tga
		blendFunc filter
		rgbGen identity
	}
	{
		map textures/base_light/proto_lightred.tga
		blendFunc add
	}
}

textures/tsh3_25th/hfloor3_spec
{
	{
		rgbGen identity
		map $lightmap
	}
	{
		map textures/effects/tinfx.tga
		tcgen environment
		blendFunc GL_DST_COLOR GL_ONE
		rgbGen identity
	}
	{
		map textures/tsh3_25th/hfloor3_spec.tga
		blendFunc GL_DST_COLOR GL_SRC_ALPHA
		rgbGen identity
		alphaGen lightingSpecular
	}
}

textures/tsh3_25th/tele_stars //Q1-style teleporter with a twist
{
	qer_editorimage textures/tsh3_25th/tele_stars_1.tga
	q3map_lightrgb 0.7 0.75 1
	q3map_lightsubdivide 32
	q3map_surfacelight 500
	surfaceparm nomarks
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight //you don't expect a starry cosmic background to be able to be lit
	nopicmip //no picmip muddiness

	{
		map textures/tsh3_25th/tele_stars_2.tga
		tcmod transform 1 0 0 1 0.634 0.044
		tcmod turb 0 0.07 0 0.05
		tcmod scale -4 -4
		tcmod scroll 0.04 0
		rgbGen const ( 0.25 0.25 0.25 )
	}
	{
		map textures/tsh3_25th/tele_stars_2.tga
		tcmod transform 1 0 0 1 0.366 0.524
		tcmod turb 0 0.07 0 0.05
		tcmod scale 2 2
		tcmod scroll -0.01 0
		rgbGen const ( 0.3 0.3 0.3 )
		blendfunc gl_one gl_one
	}
	{
		map textures/tsh3_25th/tele_stars_1.tga
		tcmod transform 1 0 0 1 0.245 0.888
		tcmod turb 0 0.07 0 0.05
		tcmod scale 2 2
		tcmod scroll 0.01 0
		rgbGen const ( 0.4 0.4 0.4 )
		blendfunc gl_one gl_one
	}
	{
		map textures/tsh3_25th/tele_stars_1.tga
		tcmod transform 1 0 0 1 0.665 0.798
		tcmod turb 0 0.07 0 0.05
		tcmod scale -1 -1
		tcmod scroll -0.04 0
		rgbGen const ( 0.5 0.5 0.5 )
		blendfunc gl_one gl_one
	}
}

textures/tsh3_25th/zap_scroll_smooth
{
	q3map_lightimage textures/sfx/zap_scroll.tga
	qer_editorimage textures/sfx/zap_scroll2.tga
	qer_trans .4
	q3map_lightsubdivide 16
	q3map_surfacelight 350
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm nolightmap
	cull none
	{
		Map textures/sfx/zap_scroll.tga
		blendFunc GL_ONE GL_ONE
		rgbgen wave triangle .8 2 0 7
		tcMod scroll 0 1
	}
	{
		Map textures/sfx/zap_scroll.tga
		blendFunc GL_ONE GL_ONE
		rgbgen wave triangle 1 1.4 0 5
		tcMod scale -1 1
		tcMod scroll 0 1
	}
	{
		Map textures/sfx/zap_scroll2.tga
		blendFunc GL_ONE GL_ONE
		rgbgen wave triangle 1 1.4 0 6.3
		tcMod scale -1 1
		tcMod scroll 2 1
	}
	{
		Map textures/sfx/zap_scroll2.tga
		blendFunc GL_ONE GL_ONE
		rgbgen wave triangle 1 1.4 0 7.7
		tcMod scroll -1.3 1
	}
}

textures/tsh3_25th/proto_grate4_as_solid
{
	qer_editorimage textures/base_floor/proto_grate4.tga
	qer_alphafunc greater .5
	surfaceparm metalsteps
	surfaceparm trans
	surfaceparm alphashadow
	surfaceparm nomarks
	cull none
	nopicmip
	{
		map textures/base_floor/proto_grate4.tga
		blendFunc GL_ONE GL_ZERO
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

textures/tsh3_25th/proto_grate4_solid
{
	qer_editorimage textures/base_floor/proto_grate4.tga
	qer_alphafunc greater .5
	surfaceparm metalsteps
	surfaceparm trans
	surfaceparm nomarks
	cull none
	nopicmip
	{
		map textures/base_floor/proto_grate4.tga
		blendFunc GL_ONE GL_ZERO
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

textures/tsh3_25th/achtung_clang_noisy //give me some clanging noises!
{
	qer_editorimage textures/base_floor/achtung_clang.tga
	surfaceparm metalsteps
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/achtung_clang.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbgen identity
	}
}

textures/tsh3_25th/xborder11b_noisy //give me some clanging noises!
{
	qer_editorimage textures/base_trim/xborder11b.tga
	surfaceparm metalsteps
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_trim/xborder11b.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbgen identity
	}
}

textures/tsh3_25th/proto_grill_noisy //give me some clanging noises!
{
	qer_editorimage textures/base_floor/proto_grill.tga
	surfaceparm metalsteps
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/proto_grill.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbgen identity
	}
}

textures/tsh3_25th/clang_floor_ow2_noisy //give me some clanging noises!
{
	qer_editorimage textures/base_floor/clang_floor_ow2.tga
	surfaceparm metalsteps
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_floor/clang_floor_ow2.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbgen identity
	}
}

models/mapobjects/lamps/flare03_nolight
{
	qer_editorimage models/mapobjects/lamps/flare03.tga
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm trans
	cull disable
	deformVertexes autosprite
	{
		map models/mapobjects/lamps/flare03.tga
		blendfunc add
	}
}

