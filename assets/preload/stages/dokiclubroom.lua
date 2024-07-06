function onCreate()
	makeLuaSprite('DDLCfarbg', 'doki/images/clubroom/DDLCfarbg', -700, -520);
	setScrollFactor('DDLCfarbg', 0.9, 1);
        scaleObject('DDLCfarbg',4,4)
	addLuaSprite('DDLCfarbg',false)

	makeLuaSprite('DDLCbg', 'doki/images/clubroom/DDLCbg', -700, -520);
	setScrollFactor('DDLCbg', 1.0, 1.0);
        scaleObject('DDLCbg',4,4)
	addLuaSprite('DDLCbg',false)

	makeLuaSprite('DesksFront', 'doki/images/clubroom/DesksFront', -700, -520);
	setScrollFactor('DesksFront', 1.3, 1);
        scaleObject('DesksFront',4,4)
	addLuaSprite('DesksFront', true)

end

function onCreatePost()
ilbfX = getProperty('boyfriend.x')

if songName == 'Rain Clouds' or songName == 'My Confession' then
        makeAnimatedLuaSprite('natsuki','doki/images/bgdoki/natsuki', getProperty('boyfriend.x')+325, getProperty('boyfriend.y')-175)
        addAnimationByPrefix('natsuki','idle','Natsu BG0',24,false)
        scaleObject('natsuki',1.4,1.4)
	addLuaSprite('natsuki', false)

        makeAnimatedLuaSprite('yuri','doki/images/bgdoki/yuri', getProperty('dad.x')-175, getProperty('dad.y')+20)
        addAnimationByPrefix('yuri','idle','Yuri BG0',24,false)
        scaleObject('yuri',1.4,1.4)
	addLuaSprite('yuri', false)

	makeLuaSprite('black', '', 0, 0);
	makeGraphic('black',1280,720,'000000')
        setObjectCamera('black','hud')
        setProperty('black.alpha',0.000000000000000001)
	setBlendMode('black','MULTIPLY')
	addLuaSprite('black', true)

        makeAnimatedLuaSprite('staticshock','doki/images/clubroom/staticshock', 0, 0)
        addAnimationByPrefix('staticshock','idle','hueh',24,true)
	setProperty('staticshock.alpha',0.000000000001)
        scaleObject('staticshock',2.5,2.5)
        setObjectCamera('staticshock','hud')
	addLuaSprite('staticshock', true)


end
if songName == 'My Sweets' or songName == 'Baka' then
        makeAnimatedLuaSprite('yuri','doki/images/bgdoki/yuri', getProperty('dad.x')+25, getProperty('dad.y')-100)
        addAnimationByPrefix('yuri','idle','Yuri BG0',24,false)
        scaleObject('yuri',1.4,1.4)
	addLuaSprite('yuri', false)

        makeAnimatedLuaSprite('sayori','doki/images/bgdoki/sayori', getProperty('boyfriend.x')+275, getProperty('boyfriend.y')-195)
        addAnimationByPrefix('sayori','idle','Sayori BG0',24,false)
        scaleObject('sayori',1.4,1.4)
	addLuaSprite('sayori', false)

        makeAnimatedLuaSprite('BakaBGDoodles','doki/images/clubroom/BakaBGDoodles', 0, 0)
        addAnimationByPrefix('BakaBGDoodles','idle','Normal Overlay',24,false)
        addAnimationByPrefix('BakaBGDoodles','idle2','Rock Overlay',24,false)
	setProperty('BakaBGDoodles.alpha',0.00000000000000000001)
        scaleObject('BakaBGDoodles',2.5,2.5)
        setObjectCamera('BakaBGDoodles','hud')
	addLuaSprite('BakaBGDoodles', false)
end
if songName == 'Deep Breaths' then
	makeLuaSprite('YuriSparkleFG', 'doki/images/clubroom/YuriSparkleFG', 0, -100);
	setScrollFactor('YuriSparkleFG', 0.2, 0.2);
	setProperty('YuriSparkleFG.velocity.x',-15)
        setProperty('YuriSparkleFG.alpha',0.000000000001)
        scaleObject('YuriSparkleFG',3.5,3.5)
	addLuaSprite('YuriSparkleFG', false)

        makeAnimatedLuaSprite('natsuki','doki/images/bgdoki/natsuki', getProperty('boyfriend.x')+325, getProperty('boyfriend.y')-175)
        addAnimationByPrefix('natsuki','idle','Natsu BG0',24,false)
        scaleObject('natsuki',1.4,1.4)
	addLuaSprite('natsuki', false)

        makeAnimatedLuaSprite('sayori','doki/images/bgdoki/sayori', getProperty('dad.x')-190, getProperty('boyfriend.y')-195)
        addAnimationByPrefix('sayori','idle','Sayori BG0',24,false)
        scaleObject('sayori',1.4,1.4)
	addLuaSprite('sayori', false)

	makeLuaSprite('YuriSparkleBG', 'doki/images/clubroom/YuriSparkleBG', 0, -100);
	setScrollFactor('YuriSparkleBG', 0.2, 0.2);
	setProperty('YuriSparkleBG.velocity.x',-15)
        setProperty('YuriSparkleBG.alpha',0.000000000001)
        scaleObject('YuriSparkleBG',3.25,3.25)
	addLuaSprite('YuriSparkleBG',true)

	makeLuaSprite('YuriSparkleBG2', 'doki/images/clubroom/YuriSparkleBG', 1280, -100);
	setScrollFactor('YuriSparkleBG2', 0.2, 0.2);
	setProperty('YuriSparkleBG2.velocity.x',-15)
        setProperty('YuriSparkleBG2.alpha',0.0000000000000001)
        scaleObject('YuriSparkleBG2',3.25,3.25)
	addLuaSprite('YuriSparkleBG2',true)

	makeLuaSprite('morefekt', '', 0, 0);
	makeGraphic('morefekt',1280,720,'9C73CE')
        setObjectCamera('morefekt','hud')
        setProperty('morefekt.alpha',0)
	setBlendMode('morefekt','SCREEN')
	addLuaSprite('morefekt', false)
end
if songName == 'Obsession' then
triggerEvent('Alt Idle Animation','dad','-alt')

	makeLuaSprite('black', '', 0, 0);
	makeGraphic('black',1280,720,'000000')
        setObjectCamera('black','hud')
        setProperty('black.alpha',0.000000000000000001)
	setBlendMode('black','MULTIPLY')
	addLuaSprite('black', true)

	makeLuaSprite('blackG', '', -250, -200);
	makeGraphic('blackG',2560,1440,'000000')
        setProperty('blackG.alpha',0)
	setScrollFactor('blackG', 0, 0);
	setObjectOrder('blackG', getObjectOrder('gfGroup')+1)
	addLuaSprite('blackG', false)

        makeAnimatedLuaSprite('staticshock','doki/images/clubroom/staticshock', 0, 0)
        addAnimationByPrefix('staticshock','idle','hueh',24,true)
	setProperty('staticshock.alpha',0.000000000001)
        scaleObject('staticshock',2.5,2.5)
        setObjectCamera('staticshock','hud')
	addLuaSprite('staticshock', true)

	makeLuaSprite('vignette', 'doki/images/vignette', 0, 0);
        setObjectCamera('vignette','hud')
        setProperty('vignette.alpha',0)
	addLuaSprite('vignette', false)
	scaleObject('vignette',2.5,2.5)
end
if songName == 'Reconciliation' then
        makeAnimatedLuaSprite('natsuki','doki/images/bgdoki/natsuki', getProperty('boyfriend.x')+325, getProperty('boyfriend.y')-175)
        addAnimationByPrefix('natsuki','idle','Natsu BG0',24,false)
        scaleObject('natsuki',1.4,1.4)
	addLuaSprite('natsuki', false)

        makeAnimatedLuaSprite('yuri','doki/images/bgdoki/yuri', getProperty('dad.x')-175, getProperty('dad.y')+70)
        addAnimationByPrefix('yuri','idle','Yuri BG0',24,false)
        scaleObject('yuri',1.4,1.4)
	addLuaSprite('yuri', false)

        makeAnimatedLuaSprite('sayori','doki/images/bgdoki/sayori', getProperty('dad.x')+35, getProperty('boyfriend.y')-195)
        addAnimationByPrefix('sayori','idle','Sayori BG0',24,false)
        scaleObject('sayori',1.4,1.4)
	addLuaSprite('sayori', false)
end
if songName == 'NEET' then
        makeAnimatedLuaSprite('monika','doki/images/bgdoki/monika', getProperty('boyfriend.x')+425, getProperty('boyfriend.y')-280)
        addAnimationByPrefix('monika','idle','Moni BG0',24,false)
        setProperty('monika.alpha',0.0000000001)
        scaleObject('monika',1.4,1.4)
	addLuaSprite('monika', false)

        makeAnimatedLuaSprite('natsuki','doki/images/bgdoki/natsuki', getProperty('boyfriend.x')+275, getProperty('boyfriend.y')-175)
        addAnimationByPrefix('natsuki','idle','Natsu BG0',24,false)
        setProperty('natsuki.alpha',0.0000000001)
        scaleObject('natsuki',1.4,1.4)
	addLuaSprite('natsuki', false)

        makeAnimatedLuaSprite('sayori','doki/images/bgdoki/sayori', getProperty('dad.x')-170, getProperty('boyfriend.y')-195)
        addAnimationByPrefix('sayori','idle','Sayori BG0',24,false)
        setProperty('sayori.alpha',0.0000000001)
        scaleObject('sayori',1.4,1.4)
	addLuaSprite('sayori', false)

        makeAnimatedLuaSprite('yuri','doki/images/bgdoki/yuri', getProperty('dad.x')+175, getProperty('dad.y')+100)
        addAnimationByPrefix('yuri','idle','Yuri BG0',24,false)
        setProperty('yuri.alpha',0.0000000001)
        scaleObject('yuri',1.4,1.4)
	addLuaSprite('yuri', false)

	makeLuaSprite('NEETspotlight', 'doki/images/clubroom/NEETspotlight', -700, -520);
	setScrollFactor('NEETspotlight', 1, 0.9);
        setProperty('NEETspotlight.alpha',0.0000001)
        scaleObject('NEETspotlight',1.6,1.6)
	addLuaSprite('NEETspotlight', false)

end
if songName == 'Constricted' then
	makeLuaSprite('vignette', 'doki/images/vignette', 0, 0);
        setObjectCamera('vignette','hud')
        setProperty('vignette.alpha',0.00000001)
        scaleObject('vignette',2.5,2.5)
	addLuaSprite('vignette', false)

	makeLuaSprite('zippergoo', 'doki/images/zippergoo', 0, 0);
        setObjectCamera('zippergoo','hud')
        setProperty('zippergoo.alpha',0.00000001)
	addLuaSprite('zippergoo', false)

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
end
end
function onStepHit()
	if curStep == 2 and (songName == 'Rain Clouds' or songName == 'My Confession' or songName == 'Obsession') then
        setProperty('black.alpha',0)
	setProperty('staticshock.alpha',0)
end
	if curStep == 2 and (songName == 'My Sweets' or songName == 'Baka') then
	setProperty('BakaBGDoodles.alpha',0)
end
	if curStep == 2 and songName == 'Deep Breaths' then
        setProperty('YuriSparkleBG.alpha', 0)
        setProperty('YuriSparkleFG.alpha', 0)
        setProperty('YuriSparkleBG2.alpha',0)
end
	if curStep == 752 and songName == 'My Confession' then
        setProperty('black.alpha',0.8)
	setProperty('staticshock.alpha',0.1)
end
	if curStep == 768 and songName == 'My Confession' then
        setProperty('black.alpha',0)
	setProperty('staticshock.alpha',0)
end
	if curStep == 64 and songName == 'Baka' then
	doTweenAlpha('BakaBGDoodlesT','BakaBGDoodles', 1, stepCrochet*0.001*32)
end
	if curStep == 128 and songName == 'Baka' then
ilkimsi = 'idle2'
triggerEvent('Screen Shake', (stepCrochet*0.001*32)..',0.0025', '')
triggerEvent('Set Camera Zoom','1.2','1')
end
	if curStep == 192 and songName == 'Baka' then
triggerEvent('Set Camera Zoom','0.75','2')
end
	if curStep == 448 and songName == 'Baka' then
	doTweenAlpha('BakaBGDoodlesT','BakaBGDoodles', 0, stepCrochet*0.001*32)
end
	if curStep == 576 and songName == 'Baka' then
ilkimsi = 'idle'
	doTweenAlpha('BakaBGDoodlesT','BakaBGDoodles', 1, stepCrochet*0.001*32)
end
	if curStep == 704 and songName == 'Baka' then
ilkimsi = 'idle2'
	doTweenAlpha('BakaBGDoodlesT','BakaBGDoodles', 1, stepCrochet*0.001*32)
end
	if curStep == 1056 and songName == 'Baka' then
	doTweenAlpha('BakaBGDoodlesT','BakaBGDoodles', 0, stepCrochet*0.001*32)
end

	if curStep == 144 and songName == 'Deep Breaths' then
	playSound('exhale',1)
end
	if (curStep == 416 or curStep == 928) and songName == 'Deep Breaths' then
        setProperty('YuriSparkleBG.x', 0)
        setProperty('YuriSparkleFG.x', 0)
        setProperty('YuriSparkleBG2.x', 1280)
        setProperty('YuriSparkleBG2.alpha', 1)
        setProperty('YuriSparkleBG.alpha', 1)
        setProperty('YuriSparkleFG.alpha', 1)
        setProperty('morefekt.alpha',0.25)
end
	if (curStep == 800 or curStep == 1152) and songName == 'Deep Breaths' then
	doTweenAlpha('YuriSparkleFGT','YuriSparkleFG', 0, stepCrochet*0.001*16)
	doTweenAlpha('YuriSparkleBGT','YuriSparkleBG', 0, stepCrochet*0.001*16)
	doTweenAlpha('YuriSparkleBG2T','YuriSparkleBG2', 0, stepCrochet*0.001*16)
	doTweenAlpha('morefektT','morefekt', 0, stepCrochet*0.001*16)
end
	if curStep == 480 and songName == 'Obsession' then
triggerEvent('Set Camera Zoom','1.45', stepCrochet*0.001*70)
	doTweenAlpha('staticshockT','staticshock', 0.2, stepCrochet*0.001*70)
	doTweenAlpha('blackT','black', 0.7, stepCrochet*0.001*70)
end
	if curStep == 544 and songName == 'Obsession' then
	playSound('Lights_Shut_off',1)
	doTweenAlpha('blackT','black', 1, 0.0001)
	doTweenAlpha('staticshockT','staticshock', 0, 0.000001)
        setProperty('vignette.alpha',0.5)
gfboyungg = true
end
	if curStep == 568 and songName == 'Obsession' then
        setProperty('boyfriend.x', getProperty('dad.x')+260)
	doTweenAlpha('blackT','black', 0, stepCrochet*0.001*8)
	setProperty('blackG.alpha',0.9)
	setProperty('staticshock.alpha',0)
end
	if curStep == 848 and songName == 'Obsession' then
	setProperty('blackG.alpha',1)
	setObjectOrder('blackG', getObjectOrder('boyfriendGroup')+1)
end
	if curStep == 384 and songName == 'NEET' then
	setProperty('gf.alpha',0)
	setProperty('DesksFront.alpha',0)
	setProperty('defaultCamZoom',1.05)
	setProperty('NEETspotlight.alpha',1)
	playSound('spotlight',1)
	triggerEvent('Camera Follow Pos','554', '450')
end
	if curStep == 512 and songName == 'NEET' then
	setProperty('gf.alpha',1)
	setProperty('DesksFront.alpha',1)
	setProperty('defaultCamZoom', 0.75)
	setProperty('NEETspotlight.alpha',0)
	triggerEvent('Camera Follow Pos','', '')
        setProperty('yuri.alpha',1)
        setProperty('sayori.alpha',1)
        setProperty('natsuki.alpha',1)
        setProperty('monika.alpha',1)
end
	if curStep == 624 and songName == 'Constricted' then
	triggerEvent('Camera Follow Pos',getProperty('camFollowPos.x')-100, getProperty('camFollowPos.y')+100)
   doTweenZoom('camGameT','camGame', 1.5, stepCrochet*0.001*16)
triggerEvent('Screen Shake', (stepCrochet*0.001*16)..',0.01', (stepCrochet*0.001*16)..',0.01')
        setProperty('vignette.alpha',0.2)
	doTweenAlpha('zippergooT','zippergoo', 1, (stepCrochet*0.001*16)*0.1,'sineOut')
end
	if curStep == 639 and songName == 'Constricted' then
	triggerEvent('Camera Follow Pos','', '')
   doTweenZoom('camGameT','camGame', 0.75, stepCrochet*0.001*16)
end
	if curStep == 1024 and songName == 'Constricted' then
	doTweenAlpha('zippergooT','zippergoo', 0, stepCrochet*0.001*32,'sineOut')
	doTweenAlpha('vignetteT','vignette', 0, stepCrochet*0.001*32,'sineOut')
end
end
function onTweenCompleted(tag)
	if tag == 'camGameT' then
	setProperty('defaultCamZoom',getProperty('camGame.zoom'))
end
end