local spin = 3
local spin2 = 1.8
local followchars = true;

function onCreate()
	makeLuaSprite('DDLCfarbg', 'doki/images/festival/FarBack', -700, -520);
	setScrollFactor('DDLCfarbg', 0.9, 1);
        scaleObject('DDLCfarbg',4,4)
	addLuaSprite('DDLCfarbg',false)

	makeLuaSprite('DDLCbg', 'doki/images/festival/MainBG', -700, -520);
	setScrollFactor('DDLCbg', 1.0, 1.0);
        scaleObject('DDLCbg',4,4)
	addLuaSprite('DDLCbg',false)

        makeAnimatedLuaSprite('lights_back','doki/images/festival/lights_back', 210, 110);
        addAnimationByPrefix('lights_back','idle','lights back',24,true)
	scaleObject('lights_back',4,4)
	addLuaSprite('lights_back', false)

	makeLuaSprite('DesksFront', 'doki/images/festival/DesksFestival', -700, -520);
	setScrollFactor('DesksFront', 1.3, 1);
        scaleObject('DesksFront',4,4)
	addLuaSprite('DesksFront', true)

        makeAnimatedLuaSprite('lights_front','doki/images/festival/lights_front', -1400, 250);
        addAnimationByPrefix('lights_front','idle','Lights front',24,true)
	scaleObject('lights_front',4,4)
	addLuaSprite('lights_front', true)

	makeLuaSprite('black', '', 0, 0);
	makeGraphic('black',1280,720,'000000')
        setObjectCamera('black','hud')
        setProperty('black.alpha',0.4)
	setBlendMode('black','MULTIPLY')
	addLuaSprite('black', true)
end

function onCreatePost()
ilbfX = getProperty('boyfriend.x')
ildadX = getProperty('dad.x')
ilgfX = getProperty('gf.x')
ilbfY = getProperty('boyfriend.y')
ildadY = getProperty('dad.y')
ilgfY = getProperty('gf.y')

if songName == 'Beathoven (Natsuki Mix)' then
        makeAnimatedLuaSprite('monika','doki/images/bgdoki/monika', getProperty('boyfriend.x')+425, getProperty('boyfriend.y')-280)
        addAnimationByPrefix('monika','idle','Moni BG0',24,false)
        scaleObject('monika',1.4,1.4)
	addLuaSprite('monika', false)

        makeAnimatedLuaSprite('yuri','doki/images/bgdoki/yuri', getProperty('boyfriend.x')+260, getProperty('dad.y')-100)
        addAnimationByPrefix('yuri','idle','Yuri BG0',24,false)
        scaleObject('yuri',1.4,1.4)
	addLuaSprite('yuri', false)

        makeAnimatedLuaSprite('protag','doki/images/bgdoki/protag', getProperty('dad.x')+275, getProperty('boyfriend.y')-300)
        addAnimationByPrefix('protag','idle','Protag-kun BG',24,false)
        scaleObject('protag',1.4,1.4)
	addLuaSprite('protag', false)

        makeAnimatedLuaSprite('sayori','doki/images/bgdoki/sayori', getProperty('dad.x')-190, getProperty('boyfriend.y')-195)
        addAnimationByPrefix('sayori','idle','Sayori BG0',24,false)
        scaleObject('sayori',1.4,1.4)
	addLuaSprite('sayori', false)
end
if songName == 'Its Complicated (Sayori Mix)' then
        makeAnimatedLuaSprite('monika','doki/images/bgdoki/monika', getProperty('boyfriend.x')+425, getProperty('boyfriend.y')-280)
        addAnimationByPrefix('monika','idle','Moni BG0',24,false)
        scaleObject('monika',1.4,1.4)
	addLuaSprite('monika', false)

        makeAnimatedLuaSprite('natsuki','doki/images/bgdoki/natsuki', getProperty('boyfriend.x')+275, getProperty('boyfriend.y')-175)
        addAnimationByPrefix('natsuki','idle','Natsu BG0',24,false)
        scaleObject('natsuki',1.4,1.4)
	addLuaSprite('natsuki', false)

        makeAnimatedLuaSprite('protag','doki/images/bgdoki/protag', getProperty('dad.x')+275, getProperty('boyfriend.y')-300)
        addAnimationByPrefix('protag','idle','Protag-kun BG',24,false)
        scaleObject('protag',1.4,1.4)
	addLuaSprite('protag', false)

        makeAnimatedLuaSprite('yuri','doki/images/bgdoki/yuri', getProperty('dad.x')-175, getProperty('dad.y')+20)
        addAnimationByPrefix('yuri','idle','Yuri BG0',24,false)
        scaleObject('yuri',1.4,1.4)
	addLuaSprite('yuri', false)

end
if songName == 'Crucify (Yuri Mix)' then
        makeAnimatedLuaSprite('monika','doki/images/bgdoki/monika', getProperty('boyfriend.x')+425, getProperty('boyfriend.y')-280)
        addAnimationByPrefix('monika','idle','Moni BG0',24,false)
        scaleObject('monika',1.4,1.4)
	addLuaSprite('monika', false)

        makeAnimatedLuaSprite('natsuki','doki/images/bgdoki/natsuki', getProperty('boyfriend.x')+275, getProperty('boyfriend.y')-175)
        addAnimationByPrefix('natsuki','idle','Natsu BG0',24,false)
        scaleObject('natsuki',1.4,1.4)
	addLuaSprite('natsuki', false)

        makeAnimatedLuaSprite('protag','doki/images/bgdoki/protag', getProperty('dad.x')+275, getProperty('boyfriend.y')-300)
        addAnimationByPrefix('protag','idle','Protag-kun BG',24,false)
        scaleObject('protag',1.4,1.4)
	addLuaSprite('protag', false)

        makeAnimatedLuaSprite('sayori','doki/images/bgdoki/sayori', getProperty('dad.x')-190, getProperty('boyfriend.y')-195)
        addAnimationByPrefix('sayori','idle','Sayori BG0',24,false)
        scaleObject('sayori',1.4,1.4)
	addLuaSprite('sayori', false)

end
if songName == 'Titular (MC Mix)' then
        makeAnimatedLuaSprite('natsuki','doki/images/bgdoki/natsuki', getProperty('boyfriend.x')+475, getProperty('boyfriend.y')-150)
        addAnimationByPrefix('natsuki','idle','Natsu BG0',24,false)
        scaleObject('natsuki',1.4,1.4)
	addLuaSprite('natsuki', false)

        makeAnimatedLuaSprite('yuri','doki/images/bgdoki/yuri', getProperty('boyfriend.x')+260, getProperty('dad.y')+110)
        addAnimationByPrefix('yuri','idle','Yuri BG0',24,false)
        scaleObject('yuri',1.4,1.4)
	addLuaSprite('yuri', false)

        makeAnimatedLuaSprite('monika','doki/images/bgdoki/monika', getProperty('dad.x')+200, getProperty('boyfriend.y')-300)
        addAnimationByPrefix('monika','idle','Moni BG0',24,false)
        scaleObject('monika',1.4,1.4)
	addLuaSprite('monika', false)

        makeAnimatedLuaSprite('sayori','doki/images/bgdoki/sayori', getProperty('dad.x')-140, getProperty('boyfriend.y')-195)
        addAnimationByPrefix('sayori','idle','Sayori BG0',24,false)
        scaleObject('sayori',1.4,1.4)
	addLuaSprite('sayori', false)
end
if songName == 'Glitcher (Monika Mix)' then
        makeAnimatedLuaSprite('natsuki','doki/images/bgdoki/natsuki', getProperty('boyfriend.x')+475, getProperty('boyfriend.y')-150)
        addAnimationByPrefix('natsuki','idle','Natsu BG0',24,false)
        scaleObject('natsuki',1.4,1.4)
	addLuaSprite('natsuki', false)

        makeAnimatedLuaSprite('yuri','doki/images/bgdoki/yuri', getProperty('boyfriend.x')+260, getProperty('dad.y')+75)
        addAnimationByPrefix('yuri','idle','Yuri BG0',24,false)
        scaleObject('yuri',1.4,1.4)
	addLuaSprite('yuri', false)

        makeAnimatedLuaSprite('protag','doki/images/bgdoki/protag', getProperty('dad.x')+50, getProperty('boyfriend.y')-300)
        addAnimationByPrefix('protag','idle','Protag-kun BG',24,false)
        scaleObject('protag',1.4,1.4)
	addLuaSprite('protag', false)

        makeAnimatedLuaSprite('sayori','doki/images/bgdoki/sayori', getProperty('dad.x')-140, getProperty('boyfriend.y')-195)
        addAnimationByPrefix('sayori','idle','Sayori BG0',24,false)
        scaleObject('sayori',1.4,1.4)
	addLuaSprite('sayori', false)

	makeLuaSprite('street', 'pixelWeek/pixelSky', -350, -200);
	setScrollFactor('street', 0.95, 0.95);
	setProperty('street.antialiasing', false);
        setProperty('street.alpha',0)
	scaleObject('street', 6, 6);
	addLuaSprite('street', false);

end
end


local ilkimsi = 'idle'
local gfboyungg = false
function onUpdatePost()
if songName == 'My Sweets' or songName == 'Baka' then
playAnim('BakaBGDoodles',ilkimsi, false)
end
	if gfboyungg == true then
	playAnim('gf', 'boyungg', false)
end
end
function onBeatHit()
    if curBeat % 2 == 0 then
		playAnim('yuri', 'idle', true)
		playAnim('natsuki', 'idle', true)
		playAnim('sayori', 'idle', true)
		playAnim('monika', 'idle', true)
		playAnim('protag', 'idle', true)
end
end
function onStepHit()
	if (curStep == 576 or curStep == 1088 or curStep == 1360 or curStep == 1392 or curStep == 1424 or curStep == 1456) and songName == 'Glitcher (Monika Mix)' then
   setProperty('defaultCamZoom', 1.05)
setPropertyFromClass('PlayState', 'isPixelStage',true)
	triggerEvent('Change Character','BF','pixelbf-new')
	triggerEvent('Change Character','dad','monika-pixelnew')
	triggerEvent('Change Character','GF','gf-pixel')
        setProperty('DDLCfarbg.alpha',0)
        setProperty('DDLCbg.alpha',0)
        setProperty('lights_back.alpha',0)
        setProperty('DesksFront.alpha',0)
        setProperty('lights_front.alpha',0)
        setProperty('black.alpha',0)
        setProperty('natsuki.alpha',0)
        setProperty('protag.alpha',0)
        setProperty('sayori.alpha',0)
        setProperty('yuri.alpha',0)
        setProperty('street.alpha',1)
	setProperty('boyfriend.x', ilbfX+200)
	setProperty('boyfriend.y', ilbfY)
	setProperty('dad.x', ildadX+200)
	setProperty('dad.y', ildadY+125)
	setProperty('gf.x', ilgfX+200)
	setProperty('gf.y', ilgfY+100)
end
	if (curStep == 832 or curStep == 1344 or curStep == 1376 or curStep == 1408 or curStep == 1440 or curStep == 1472) and songName == 'Glitcher (Monika Mix)' then
   setProperty('defaultCamZoom', 0.75)
setPropertyFromClass('PlayState', 'isPixelStage',false)
	triggerEvent('Change Character','BF','bf-doki')
	triggerEvent('Change Character','dad','monika')
	triggerEvent('Change Character','GF','gf-realdoki')
        setProperty('DDLCfarbg.alpha',1)
        setProperty('DDLCbg.alpha',1)
        setProperty('lights_back.alpha',1)
        setProperty('DesksFront.alpha',1)
        setProperty('lights_front.alpha',1)
        setProperty('black.alpha',0.4)
        setProperty('natsuki.alpha',1)
        setProperty('protag.alpha',1)
        setProperty('sayori.alpha',1)
        setProperty('yuri.alpha',1)
        setProperty('street.alpha',0)
	setProperty('boyfriend.x', ilbfX)
	setProperty('boyfriend.y', ilbfY)
	setProperty('dad.x', ildadX)
	setProperty('dad.y', ildadY)
	setProperty('gf.x', ilgfX)
	setProperty('gf.y', ilgfY)
end
end
function onTweenCompleted(tag)
	if tag == 'camGameT' then
	setProperty('defaultCamZoom',getProperty('camGame.zoom'))
end
end

