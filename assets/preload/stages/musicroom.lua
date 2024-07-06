local spin = 3
local spin2 = 1.8
local followchars = true;

function onCreate()
	makeLuaSprite('Music_Room', 'doki/images/musicroom/Music_Room', -250, -100);
	setScrollFactor('Music_Room', 1, 1);
        scaleObject('Music_Room',3.75,3.75)
	addLuaSprite('Music_Room',false)

	makeLuaSprite('Music_Room_FG', 'doki/images/musicroom/Music_Room_FG', -250, -100);
	setScrollFactor('Music_Room_FG', 1.2, 1);
        scaleObject('Music_Room_FG',3.75,3.75)
	addLuaSprite('Music_Room_FG', true)

	makeLuaSprite('Music_RoomLight', 'doki/images/musicroom/Music_RoomLight', -250, -100);
	setScrollFactor('Music_RoomLight', 1.1, 0.9);
        scaleObject('Music_RoomLight',3.75,3.75)
	setBlendMode('Music_RoomLight','ADD')
	addLuaSprite('Music_RoomLight', true)
end
function onCreatePost()
if songName == 'Hot Air Balloon' then
        makeAnimatedLuaSprite('BakaBGDoodles','doki/images/clubroom/BakaBGDoodles', 0, 0)
        addAnimationByPrefix('BakaBGDoodles','idle','Normal Overlay',24,false)
        addAnimationByPrefix('BakaBGDoodles','idle2','Rock Overlay',24,false)
	setProperty('BakaBGDoodles.alpha',0.00000000000000000001)
        scaleObject('BakaBGDoodles',2.5,2.5)
        setObjectCamera('BakaBGDoodles','hud')
	addLuaSprite('BakaBGDoodles', false)
end
if songName == 'Shrinking Violet' then
	makeLuaSprite('YuriSparkleFG', 'doki/images/clubroom/YuriSparkleFG', 0, -100);
	setScrollFactor('YuriSparkleFG', 0.2, 0.2);
	setProperty('YuriSparkleFG.velocity.x',-15)
        setProperty('YuriSparkleFG.alpha', 0.00000000000001)
        scaleObject('YuriSparkleFG',1.3,1.3)
	addLuaSprite('YuriSparkleFG', false)

	makeLuaSprite('YuriSparkleBG', 'doki/images/clubroom/YuriSparkleBG', 0, -100);
	setScrollFactor('YuriSparkleBG', 0.2, 0.2);
	setProperty('YuriSparkleBG.velocity.x',-15)
        setProperty('YuriSparkleBG.alpha', 0.00000000000001)
        scaleObject('YuriSparkleBG',1.3,1.3)
	addLuaSprite('YuriSparkleBG',true)

	makeLuaSprite('YuriSparkleBG2', 'doki/images/clubroom/YuriSparkleBG', 1280, -100);
	setScrollFactor('YuriSparkleBG2', 0.2, 0.2);
	setProperty('YuriSparkleBG2.velocity.x',-15)
        setProperty('YuriSparkleBG2.alpha', 0.00000000000001)
        scaleObject('YuriSparkleBG2',1.3,1.3)
	addLuaSprite('YuriSparkleBG2',true)

	makeLuaSprite('morefekt', '', 0, 0);
	makeGraphic('morefekt',1280,720,'9C73CE')
        setObjectCamera('morefekt','hud')
        setProperty('morefekt.alpha', 0)
	setBlendMode('morefekt','SCREEN')
	addLuaSprite('morefekt', false)
end
if songName == 'Shrinking Violet-alt' then
	makeLuaSprite('Music_Room', 'doki/images/musicroom/Music_RoomSpooky', -250, -100);
	setScrollFactor('Music_Room', 1, 1);
        scaleObject('Music_Room',3.75,3.75)
	addLuaSprite('Music_Room',false)

	makeLuaSprite('Music_Room_FG', 'doki/images/musicroom/Music_Room_FG', -250, -100);
	setScrollFactor('Music_Room_FG', 1.2, 1);
        scaleObject('Music_Room_FG',3.75,3.75)
	addLuaSprite('Music_Room_FG', true)

	makeLuaSprite('Music_RoomLight', 'doki/images/musicroom/Music_RoomLight', -250, -100);
	setScrollFactor('Music_RoomLight', 1.1, 0.9);
        scaleObject('Music_RoomLight',3.75,3.75)
	setBlendMode('Music_RoomLight','ADD')
	addLuaSprite('Music_RoomLight', true)


	makeLuaSprite('YuriSparkleFG', 'doki/images/clubroom/YuriSparkleFG', 0, -100);
	setScrollFactor('YuriSparkleFG', 0.2, 0.2);
	setProperty('YuriSparkleFG.velocity.x',-15)
        setProperty('YuriSparkleFG.alpha', 0.00000000000001)
        scaleObject('YuriSparkleFG',1.3,1.3)
	addLuaSprite('YuriSparkleFG', false)

	makeLuaSprite('YuriSparkleBG', 'doki/images/clubroom/YuriSparkleBG', 0, -100);
	setScrollFactor('YuriSparkleBG', 0.2, 0.2);
	setProperty('YuriSparkleBG.velocity.x',-15)
        setProperty('YuriSparkleBG.alpha', 0.00000000000001)
        scaleObject('YuriSparkleBG',1.3,1.3)
	addLuaSprite('YuriSparkleBG',true)

	makeLuaSprite('YuriSparkleBG2', 'doki/images/clubroom/YuriSparkleBG', 1280, -100);
	setScrollFactor('YuriSparkleBG2', 0.2, 0.2);
	setProperty('YuriSparkleBG2.velocity.x',-15)
        setProperty('YuriSparkleBG2.alpha', 0.00000000000001)
        scaleObject('YuriSparkleBG2',1.3,1.3)
	addLuaSprite('YuriSparkleBG2',true)

	makeLuaSprite('morefekt', '', 0, 0);
	makeGraphic('morefekt',1280,720,'9C73CE')
        setObjectCamera('morefekt','hud')
        setProperty('morefekt.alpha', 0)
	setBlendMode('morefekt','SCREEN')
	addLuaSprite('morefekt', false)
end
if songName == 'Our Harmony' then
        makeAnimatedLuaSprite('fakegf','characters/SPEAKER_ass_sets', 320, 430)
        addAnimationByPrefix('fakegf','idle','GF Dancing Beat',24,false)
        scaleObject('fakegf',2,2)
	addLuaSprite('fakegf', false)

        setProperty('gf.x', getProperty('gf.x')-95)
        setProperty('gf.y', getProperty('gf.y')+325)
end
if songName == 'Joyride' then
	makeLuaSprite('gunes', 'doki/images/musicroom/SayoSunshine', 0, 0);
        setObjectCamera('gunes','hud')
        setProperty('gunes.alpha', 0)
        scaleObject('gunes',2.5,2.5)
	addLuaSprite('gunes', false)
end
if songName == 'Love n Funkin' then
        makeAnimatedLuaSprite('fakegf','characters/SPEAKER_ass_sets', 320, 470)
        addAnimationByPrefix('fakegf','idle','GF Dancing Beat',24,false)
        scaleObject('fakegf',2,2)
	addLuaSprite('fakegf', false)

        setProperty('gf.x', getProperty('gf.x')-95)
        setProperty('gf.y', getProperty('gf.y')+325)
        
        makeLuaSprite('Music_RoomLNF', 'doki/images/musicroom/Music_RoomLNF', -250, -100);
	setScrollFactor('Music_RoomLNF', 1, 1);
        scaleObject('Music_RoomLNF',3.75,3.75)
	addLuaSprite('Music_RoomLNF',false)
end
end

local ilkimsi = 'idle'
function onUpdatePost()
if songName == 'Hot Air Balloon' then
playAnim('BakaBGDoodles',ilkimsi, false)
end
end

local colorefek = false
function onBeatHit()
if songName == 'Our Harmony' then
	playAnim('fakegf', 'idle', true)
end
	if songName == 'Joyride' then
	if colorefek == true then
	if curBeat % 8 == 0 then
        setProperty('gunes.color', 0x95e0fc)
        setProperty('gunes.alpha', 1)
	doTweenAlpha('gunesT','gunes', 0, stepCrochet*0.001*12,'cubeIn')
end
	if curBeat % 8 == 2 then
        setProperty('gunes.color', 0xfb94d4)
        setProperty('gunes.alpha', 1)
	doTweenAlpha('gunesT','gunes', 0, stepCrochet*0.001*12,'cubeIn')
end
	if curBeat % 8 == 4 then
        setProperty('gunes.color', 0x8cd465)
        setProperty('gunes.alpha', 1)
	doTweenAlpha('gunesT','gunes', 0, stepCrochet*0.001*12,'cubeIn')
end
	if curBeat % 8 == 6 then
        setProperty('gunes.color', 0x9c73ce)
        setProperty('gunes.alpha', 1)
	doTweenAlpha('gunesT','gunes', 0, stepCrochet*0.001*12,'cubeIn')
end

end
end
end

function onStepHit()
	if curStep == 2 and songName == 'Hot Air Balloon' then
	setProperty('BakaBGDoodles.alpha',0)
end
	if curStep == 2 and (songName == 'Shrinking Violet' or songName == 'Shrinking Violet-alt') then
        setProperty('YuriSparkleBG.alpha', 0)
        setProperty('YuriSparkleFG.alpha', 0)
        setProperty('YuriSparkleBG2.alpha',0)
end
	if curStep == 784 and (songName == 'Shrinking Violet' or songName == 'Shrinking Violet-alt') then
	setProperty('defaultCamZoom', 1.3)
        setProperty('YuriSparkleBG.x', 0)
        setProperty('YuriSparkleFG.x', 0)
        setProperty('YuriSparkleBG2.x', 1280)
        setProperty('YuriSparkleBG2.alpha', 1)
        setProperty('YuriSparkleBG.alpha', 1)
        setProperty('YuriSparkleFG.alpha', 1)
        setProperty('morefekt.alpha',0.25)
end
	if curStep == 1024 and (songName == 'Shrinking Violet' or songName == 'Shrinking Violet-alt') then
	setProperty('defaultCamZoom', 1)
end
	if curStep == 1040 and (songName == 'Shrinking Violet' or songName == 'Shrinking Violet-alt') then
	doTweenAlpha('YuriSparkleFGT','YuriSparkleFG', 0, stepCrochet*0.001*16,'sineOut')
	doTweenAlpha('YuriSparkleBGT','YuriSparkleBG', 0, stepCrochet*0.001*16,'sineOut')
	doTweenAlpha('YuriSparkleBG2T','YuriSparkleBG2', 0, stepCrochet*0.001*16,'sineOut')
	doTweenAlpha('morefektT','morefekt', 0, stepCrochet*0.001*16,'sineOut')
end
	if curStep == 1024 and songName == 'Hot Air Balloon' then
	setProperty('defaultCamZoom', 1.35)
	doTweenAlpha('BakaBGDoodlesT','BakaBGDoodles', 1, stepCrochet*0.001*16,'sineIn')
end
	if curStep == 1280 and songName == 'Hot Air Balloon' then
	setProperty('defaultCamZoom', 1)
	doTweenAlpha('BakaBGDoodlesT','BakaBGDoodles', 0, stepCrochet*0.001*32,'sineOut')
end
	if curStep == 126 and songName == 'Joyride' then
colorefek = true
	setProperty('defaultCamZoom', 1.3)
end
	if curStep == 254 and songName == 'Joyride' then
colorefek = false
	setProperty('defaultCamZoom', 1.6)
end
	if (curStep == 270 or curStep == 780) and songName == 'Joyride' then
colorefek = true
	setProperty('defaultCamZoom', 1)
end
	if curStep == 512 and songName == 'Joyride' then
colorefek = false
end
	if curStep == 768 and songName == 'Joyride' then
	setProperty('defaultCamZoom', 1.6)
end
	if curStep == 1024 and songName == 'Joyride' then
colorefek = false
	setProperty('defaultCamZoom', 1)
end
end