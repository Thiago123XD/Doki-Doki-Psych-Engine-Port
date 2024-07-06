local spin = 3
local spin2 = 1.8
local followchars = true;

function onStartCountdown()

end
-- monika dad.x += 25
-- natsuki dad.x += 25
-- protag dad.x += dad.x += 50; dad.y += 25;
--gfli pixel gf.x += 275;gf.y += 272;
function onCreatePost()
	triggerEvent('Camera Follow Pos','585', '-930')
setProperty('camGame.alpha',0.00001)

	addCharacterToList('monika-pixelnew','dad');
	addCharacterToList('sayori-casual','dad');
	addCharacterToList('natsuki-casual','dad');
	addCharacterToList('yuri-casual','dad');
	addCharacterToList('protag-casual','dad');
	addCharacterToList('yuri-crazy-casual','dad');
	addCharacterToList('monika-casual','dad');
        setProperty('camHUD.alpha', 0)
        setProperty('dad.visible', false)
setProperty('dad.x', 55)
setProperty('dad.y', 435)

      noteTweenX('bbe3asd131', 0, 999999,0.5,'cubeOut')
      noteTweenX('bbe3s131', 1, 999999,0.5,'cubeOut')
      noteTweenX('cce3131', 2, 999999,0.5,'cubeOut')
      noteTweenX('cceasdasdsad3131', 3, 999999,0.5,'cubeOut')
      noteTweenX('bbe6asd969', 4, 412,0.5,'cubeIn')
      noteTweenX('bbe6969', 5, 524,0.5,'cubeIn')
      noteTweenX('cce6969', 6, 636,0.5,'cubeIn')
      noteTweenX('cce69asdasdads69', 7, 748,0.5,'cubeIn')

        makeLuaSprite('whiteback','', -715, -795);
        makeGraphic('whiteback',3000,3000,'FFFFFF')
	setScrollFactor('whiteback', 0, 0);
	setProperty('whiteback.alpha',1)
	addLuaSprite('whiteback', false);

	makeLuaSprite('scrollingBG', 'scrollingBG', -715, -795);
	setScrollFactor('scrollingBG', 0, 0);
       scaleObject('scrollingBG',5.4,5.4)
        setProperty('scrollingBG.alpha', 1.2)
	addLuaSprite('scrollingBG',false)

	makeLuaSprite('pocBackground', 'doki/images/credits/pocBackground', 0, 0);
	setScrollFactor('pocBackground', 0.1, 0.1);
	scaleObject('pocBackground',4,4)
        setProperty('pocBackground.scale.x', 8)
        setProperty('pocBackground.scale.y', 8)
	addLuaSprite('pocBackground',false)

	makeLuaSprite('window_bottomSEN', 'doki/images/credits/window_bottom_senpai', 190, 1060);
	setScrollFactor('window_bottomSEN', 1, 1);
	scaleObject('window_bottomSEN',5,5)
	addLuaSprite('window_bottomSEN',false)

	makeLuaSprite('window_topSEN', 'doki/images/credits/window_top', 180, 1050);
	setScrollFactor('window_topSEN', 1, 1);
	scaleObject('window_topSEN',5,5)
	addLuaSprite('window_topSEN',false)

	makeLuaSprite('window_bottomDAD', 'doki/images/credits/window_bottom', -255, 10);
	setScrollFactor('window_bottomDAD', 1, 1);
	scaleObject('window_bottomDAD',5,5)
	addLuaSprite('window_bottomDAD',false)

	makeLuaSprite('window_topDAD', 'doki/images/credits/window_top', -265, 10);
	setScrollFactor('window_topDAD', 1, 1);
	scaleObject('window_topDAD',5,5)
	addLuaSprite('window_topDAD',false)

	makeLuaSprite('window_bottom_funkin', 'doki/images/credits/window_bottom_funkin', 665, 10);
	setScrollFactor('window_bottom_funkin', 1, 1);
	scaleObject('window_bottom_funkin',5,5)
	addLuaSprite('window_bottom_funkin',false)

	makeLuaSprite('window_topBF', 'doki/images/credits/window_top', 655, 10);
	setScrollFactor('window_topBF', 1, 1);
	scaleObject('window_topBF',5,5)
	addLuaSprite('window_topBF',false)

	makeLuaSprite('imlec', 'doki/images/credits/Arrow', 500, 1060);
	setScrollFactor('imlec', 1, 1);
	scaleObject('imlec',4,4)
	addLuaSprite('imlec',true)

        makeAnimatedLuaSprite('HomeStatic','doki/images/credits/HomeStatic', 0, 0)
        addAnimationByPrefix('HomeStatic','idle','HomeStatic',24,true)
	setBlendMode('HomeStatic','MULTIPLY')
	setProperty('HomeStatic.alpha',0.000000000001)
        scaleObject('HomeStatic',4,4)
        setObjectCamera('HomeStatic','hud')
	addLuaSprite('HomeStatic', false)

	setProperty('healthBar.visible',false)
	setProperty('healthBarBG.visible',false)

        makeLuaSprite('DokiTakeoverLogo','DokiTakeoverLogo', 200, -50)
	setProperty('DokiTakeoverLogo.alpha',1)
        scaleObject('DokiTakeoverLogo',1,1)
	setScrollFactor('DokiTakeoverLogo', 0, 0);
	addLuaSprite('DokiTakeoverLogo', false)

        makeLuaSprite('beyaz','', 0, 0);
        makeGraphic('beyaz',1280,720,'FFFFFF')
        setObjectCamera('beyaz','other')
	setProperty('beyaz.alpha',0)
	addLuaSprite('beyaz', false);

	makeLuaSprite('camXX', '', 585, 999999);
	addLuaSprite('camXX', true)

	makeLuaSprite('camYY', '', -930, 999999);
	addLuaSprite('camYY', true)
end
function onUpdate()
math.randomseed(os.time())
	setProperty('simge1.visible',false)
	setProperty('simge2.visible',false)
  setShaderFloat("scrollingBG", "iTime", os.clock())
  setShaderFloat("pocBackground", "iTime", os.clock())
   runHaxeCode([[

    ]])
end
local twoyuri = false
local camlock = false
function onStepHit()
	if curStep == 1 then
	doTweenAlpha('beyazT','beyaz', 1, 2.6,'sineOut')
end
	if curStep == 16 then
	doTweenAlpha('beyazT','beyaz', 0, 1,'sineOut')
setProperty('camGame.alpha',1)
camlock = true
end
	if curStep == 48 then
	doTweenAlpha('DokiTakeoverLogoT','DokiTakeoverLogo', 0, 1,'sineOut')
end
	if curStep == 2 then
	setProperty('HomeStatic.alpha',0)
end
	if curStep == 54 then
	setProperty('camXX.x',585)
	doTweenX('camFollowPosYT','camYY', 460, 2, 'sineOut')
	doTweenAlpha('camHUDT','camHUD', 1, 2,'sineOut')
end
	if curStep == 66 or curStep == 450 or curStep == 834 or curStep == 1218 or curStep == 1606 or curStep == 1866 then
	prepareCharSwap()
end
	if curStep == 76 then
	creditsCharSwap('monika-pixelnew')
summmonStickies()
end
	if curStep == 239 then
	doTweenX('window_bottomDADT','window_bottomDAD', getProperty('window_bottomDAD.x') - 200, stepCrochet*0.001*16, 'sineOut')
	doTweenX('window_topDADT','window_topDAD', getProperty('window_topDAD.x') - 200, stepCrochet*0.001*16, 'sineOut')
	doTweenX('dadT','dad', getProperty('dad.x') - 200, stepCrochet*0.001*16, 'sineOut')

	doTweenX('window_bottom_funkinT','window_bottom_funkin', getProperty('window_bottom_funkin.x') + 200, stepCrochet*0.001*16, 'sineOut')
	doTweenX('window_topBFT','window_topBF', getProperty('window_topBF.x') + 200, stepCrochet*0.001*16, 'sineOut')
	doTweenX('boyfriendT','boyfriend', getProperty('boyfriend.x') + 200, stepCrochet*0.001*16, 'sineOut')

	doTweenY('window_bottomSENT','window_bottomSEN', getProperty('window_bottomSEN.y') - 900, stepCrochet*0.001*16, 'sineOut')
	doTweenY('window_topSENT','window_topSEN', getProperty('window_topSEN.y') - 900, stepCrochet*0.001*16, 'sineOut')
	doTweenY('gfT','gf', getProperty('gf.y') - 900, stepCrochet*0.001*16, 'sineOut')

setProperty('defaultCamZoom', 0.5)
setProperty('imlec.x', 500)
setProperty('imlec.y', 1040)
	doTweenY('imlecYT','imlec', getProperty('imlec.y') - 900, stepCrochet*0.001*16, 'sineOut')
end
	if curStep == 336 then
	triggerEvent('Change Character','GF', 'senpai-angry')
setProperty('gf.y', getProperty('gf.y') - 900)
summmonStickies()
end
	if curStep == 440 then
	doTweenY('window_bottomSENT','window_bottomSEN', getProperty('window_bottomSEN.y') - 1200, stepCrochet*0.001*16, 'sineOut')
	doTweenY('window_topSENT','window_topSEN', getProperty('window_topSEN.y') - 1200, stepCrochet*0.001*16, 'sineOut')
	doTweenY('gfT','gf', getProperty('gf.y') - 1200, stepCrochet*0.001*16, 'sineOut')

	doTweenY('imlecYT','imlec', getProperty('imlec.y') - 1200, stepCrochet*0.001*16, 'sineOut')
end
	if curStep == 447 then
	doTweenX('window_bottomDADT','window_bottomDAD', getProperty('window_bottomDAD.x') + 200, stepCrochet*0.001*16, 'sineOut')
	doTweenX('window_topDADT','window_topDAD', getProperty('window_topDAD.x') + 200, stepCrochet*0.001*16, 'sineOut')
	doTweenX('dadT','dad', getProperty('dad.x') + 200, stepCrochet*0.001*16, 'sineOut')

	doTweenX('window_bottom_funkinT','window_bottom_funkin', getProperty('window_bottom_funkin.x') - 200, stepCrochet*0.001*16, 'sineOut')
	doTweenX('window_topBFT','window_topBF', getProperty('window_topBF.x') - 200, stepCrochet*0.001*16, 'sineOut')
	doTweenX('boyfriendT','boyfriend', getProperty('boyfriend.x') - 200, stepCrochet*0.001*16, 'sineOut')
setProperty('defaultCamZoom', 0.7)
end
	if curStep == 460 then
	removeLuaSprite('window_bottomSEN', true)
	removeLuaSprite('window_topSEN', true)
setProperty('gf.visible', false)
	creditsCharSwap('sayori')
end
	if curStep == 844 then
	creditsCharSwap('natsuki')

end
	if curStep == 1228 then
	creditsCharSwap('yuri')

        makeAnimatedLuaSprite('gff','characters/yuri/Doki_Yuri_Casual_Crazy_Assets', -90, 95)
	setObjectOrder('gff', getObjectOrder('dadGroup')+1)
	scaleObject('gff',2,2)
	setProperty('gff.alpha',0.000001)

        addAnimationByPrefix('gff','idle','Yuri Crazy Idle',24,false)

        addAnimationByPrefix('gff','left','Yuri Crazy Left',24,false)

        addAnimationByPrefix('gff','right','Yuri Crazy Right',24,false)

        addAnimationByPrefix('gff','up','Yuri Crazy Up',24,false)

        addAnimationByPrefix('gff','down','Yuri Crazy Down',24,false)

        addOffset('gff', 'idle', 0, 0)
        addOffset('gff', 'left', 153, 15)
        addOffset('gff', 'right', -51, -4)
        addOffset('gff', 'up', 48, 60)
        addOffset('gff', 'down', -3, -40)

        addLuaSprite('gff', false);

twoyuri = true
summmonStickies()
end
	if curStep == 1392 then
	doTweenAlpha('DADAT','dad', 0, 5,'sineOut')
	doTweenAlpha('GFFAT','gff', 1, 5,'sineOut')
	doTweenAlpha('HomeStaticT','HomeStatic', 1, (stepCrochet*0.001*16)*5,'sineOut')
end
	if curStep == 1488 then
	removeLuaSprite('gff', true)
	removeLuaSprite('HomeStatic', true)
	setProperty('dad.alpha', 1)
summmonStickies()
end
	if curStep == 1616 then
	creditsCharSwap('protag')
summmonStickies()
end
	if curStep == 1876 then
	creditsCharSwap('monika')
end
	if curStep == 2240 then
	doTweenX('camFollowPosYT','camYY', -960, 5, 'sineOut')
	doTweenAlpha('camHUDT','camHUD', 0, 5,'sineOut')
	triggerEvent('Camera Follow Pos','585', '-960')
end
	if curStep == 2280 then
        makeLuaSprite('CreditsShit2','doki/images/credits/CreditsShit2', 150,0)
	setProperty('CreditsShit2.alpha',0)
        scaleObject('CreditsShit2',4,4)
	setScrollFactor('CreditsShit2', 0, 0);
	addLuaSprite('CreditsShit2', false)
	doTweenAlpha('CreditsShit2T','CreditsShit2', 1, 0.5,'sineOut')
end
	if curStep == 2322 then
	doTweenAlpha('CreditsShit2T','CreditsShit2', 0, 0.5,'sineOut')
end
	if curStep == 2330 then
	doTweenAlpha('DokiTakeoverLogoT','DokiTakeoverLogo', 1, 1,'sineOut')
end
	if curStep == 2358 then
        makeLuaSprite('thanksforplaying','doki/images/credits/thanksforplaying', 0, 0);
        setObjectCamera('thanksforplaying','other')
        scaleObject('thanksforplaying',4, 4)
	setProperty('thanksforplaying.alpha',0)
	addLuaSprite('thanksforplaying', false);
	doTweenAlpha('thanksforplayingT','thanksforplaying', 1, 1,'sineOut')
end
	if curStep == 208 or curStep == 464 or curStep == 592 or curStep == 720 or curStep == 848 or curStep == 976 or curStep == 1104 or curStep == 1300 or curStep == 1744 or curStep == 1880 or curStep == 2008 or curStep == 2072 or curStep == 2136 or curStep == 2200 then
summmonStickies()
end
end
function onUpdatePost()
	if camlock == true then
	setProperty('camFollowPos.x', getProperty('camXX.x'))
	setProperty('camFollowPos.y', getProperty('camYY.x'))
end
end
local randomStick = {
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
    11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
    21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
    41, 42, 43, 44, 45, 46, 47, 48, 49, 50,
    51, 52, 53, 54, 55, 56, 57, 58, 59, 60,
    61, 62, 63, 64, 65, 66, 67, 68, 69, 70,
    71, 72, 73, 74, 75, 76
} 
local selectedNumbers = {}


function summmonStickies()
    selectedNumbers = {}  -- Önceki seçilen sayıları temizle
    for i = 1, 4 do
        local index = math.random(#randomStick)
        table.insert(selectedNumbers, randomStick[index])
        table.remove(randomStick, index)
    end

    -- Seçilen sayıları değişkenlere atama
    eleman1 = selectedNumbers[1]
    eleman2 = selectedNumbers[2]
    eleman3 = selectedNumbers[3]
    eleman4 = selectedNumbers[4]

        makeLuaSprite('stick1','stickies/'..eleman1, -22.5, -22.5);
        setObjectCamera('stick1','hud')
	setProperty('stick1.scale.x',1)
	setProperty('stick1.scale.y',1)
	setProperty('stick1.alpha',1)
	addLuaSprite('stick1', false);
	doTweenX('stick1XT','stick1.scale', 0.85, 0.1)
	doTweenY('stick1YT','stick1.scale', 0.85, 0.1)

        makeLuaSprite('stick2','stickies/'..eleman2, 1002.5, -22.5);
        setObjectCamera('stick2','hud')
	setProperty('stick2.scale.x',1)
	setProperty('stick2.scale.y',1)
	scaleObject('stick2',1,1)
	setProperty('stick2.alpha',1)
	addLuaSprite('stick2', false);
	doTweenX('stick2XT','stick2.scale', 0.85, 0.1)
	doTweenY('stick2YT','stick2.scale', 0.85, 0.1)

        makeLuaSprite('stick3','stickies/'..eleman3, -22.5, 442.5);
        setObjectCamera('stick3','hud')
	setProperty('stick3.scale.x',1)
	setProperty('stick3.scale.y',1)
	scaleObject('stick3',1,1)
	setProperty('stick3.alpha',1)
	addLuaSprite('stick3', false);
	doTweenX('stick3XT','stick3.scale', 0.85, 0.1)
	doTweenY('stick3YT','stick3.scale', 0.85, 0.1)

        makeLuaSprite('stick4','stickies/'..eleman4, 1002.5, 442.5);
        setObjectCamera('stick4','hud')
	setProperty('stick4.scale.x',1)
	setProperty('stick4.scale.y',1)
	scaleObject('stick4',1,1)
	setProperty('stick4.alpha',1)
	addLuaSprite('stick4', false);
	doTweenX('stick4XT','stick4.scale', 0.85, 0.1)
	doTweenY('stick4YT','stick4.scale', 0.85, 0.1)

runTimer('stickgitti',8)
end
function onTimerCompleted(tag)
	if tag == 'stickgitti' then
	doTweenAlpha('stick1T','stick1', 0, 1)
	doTweenAlpha('stick2T','stick2', 0, 1)
	doTweenAlpha('stick3T','stick3', 0, 1)
	doTweenAlpha('stick4T','stick4', 0, 1)
end
end
function creditsCharSwap(char)
        setProperty('dad.visible', true)

	makeLuaSprite('imlec', 'doki/images/credits/Arrow', 205, 415);
	setScrollFactor('imlec', 1, 1);
	scaleObject('imlec',4,4)
	addLuaSprite('imlec',true)

	doTweenX('imlecXT','imlec', 205-120, stepCrochet*0.001*8, 'sineInOut')
	doTweenY('imlecYT','imlec', 415-700, stepCrochet*0.001*8, 'sineInOut')

	if char == 'monika-pixelnew' then
		triggerEvent('Change Character','dad', char)
else
		triggerEvent('Change Character','dad', char..'-casual')
end

	if char == 'monika-pixelnew' or char == 'monika' then

	makeLuaSprite('window_bottomDAD', 'doki/images/credits/window_bottom_monika', -255, 10);
	setScrollFactor('window_bottomDAD', 1, 1);
	scaleObject('window_bottomDAD',5,5)
	addLuaSprite('window_bottomDAD',false)

	makeLuaSprite('window_topDAD', 'doki/images/credits/window_top', -265, 10);
	setScrollFactor('window_topDAD', 1, 1);
	scaleObject('window_topDAD',5,5)
	addLuaSprite('window_topDAD',false)
else
	makeLuaSprite('window_bottomDAD', 'doki/images/credits/window_bottom_'..char, -255, 10);
	setScrollFactor('window_bottomDAD', 1, 1);
	scaleObject('window_bottomDAD',5,5)
	addLuaSprite('window_bottomDAD',false)

	makeLuaSprite('window_topDAD', 'doki/images/credits/window_top', -265, 10);
	setScrollFactor('window_topDAD', 1, 1);
	scaleObject('window_topDAD',5,5)
	addLuaSprite('window_topDAD',false)
end
	if char == 'natsuki' then
setProperty('dad.x', getProperty('dad.x')+25)
end
	if char == 'monika' then
	removeLuaSprite('imlec',true)
setProperty('dad.x', getProperty('dad.x')-25)
end
	if char == 'protag' then
setProperty('dad.x', getProperty('dad.x')+50)
setProperty('dad.y', getProperty('dad.y')+25)
end
end
function prepareCharSwap()

	makeLuaSprite('imlec', 'doki/images/credits/Arrow_HOLD', 1300, 1080);
	setScrollFactor('imlec', 1, 1);
	scaleObject('imlec',4,4)
	addLuaSprite('imlec',true)

	doTweenX('imlecXT','imlec', 205, (stepCrochet*0.001*16)*0.6, 'sineOut')
	doTweenY('imlecYT','imlec', 415, (stepCrochet*0.001*16)*0.6, 'sineOut')
end
function opponentNoteHit(id, noteData, noteType, isSustainNote)

	if noteType == '' and twoyuri == true then
		if noteData == 0 then
		playAnim('gff', 'left', true)
		end
		if noteData == 1 then
		playAnim('gff', 'down', true)
		end
		if noteData == 2 then
		playAnim('gff', 'up', true)
		end
		if noteData == 3 then
		playAnim('gff', 'right', true)
		end
	end
end