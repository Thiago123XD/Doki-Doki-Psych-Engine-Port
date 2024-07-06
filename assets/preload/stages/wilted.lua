local spin = 3
local spin2 = 1.8
local followchars = true;

function onCreatePost()

	for i = 0,3 do
setPropertyFromGroup('strumLineNotes', i, 'texture', 'PIXELNOTE_assets');
end

	addCharacterToList('senpai-angry','dad');
	addCharacterToList('senpai-nonpixel','dad');
	addCharacterToList('senpai-angynonpixel','dad');
BFxx = getProperty('boyfriend.x')
BFyy = getProperty('boyfriend.y')
DADxx = getProperty('dad.x')
DADyy = getProperty('dad.y')
        makeLuaSprite('whiteback','', -715, -795);
        makeGraphic('whiteback',3000,3000,'FFFFFF')
	setScrollFactor('whiteback', 0, 0);
	setProperty('whiteback.alpha',1)
	addLuaSprite('whiteback', false);

	makeLuaSprite('scrollingBG', 'scrollingBG', -715, -795);
	setScrollFactor('scrollingBG', 0, 0);
        scaleObject('scrollingBG',4.8,4.8)
        setProperty('scrollingBG.alpha', 0.3)
	addLuaSprite('scrollingBG',false)

	makeLuaSprite('pocBackground', 'doki/images/credits/pocBackground', 0, 0);
	setScrollFactor('pocBackground', 0.1, 0.1);
        setProperty('pocBackground.scale.x', 2)
        setProperty('pocBackground.scale.y', 2)
	addLuaSprite('pocBackground',false)

	makeLuaSprite('bg', 'doki/images/wilt/bg', -248, -10);
	setScrollFactor('bg', 0.85, 1);
	scaleObject('bg',5,5)
	addLuaSprite('bg',false)

	makeLuaSprite('p1', 'doki/images/wilt/p1', -250, -10);
	setScrollFactor('p1', 1, 1);
	scaleObject('p1',5,5)
	addLuaSprite('p1',false)


        makeAnimatedLuaSprite('hoii_senpai','doki/images/wilt/hoii_senpai',-250, -10)
        addAnimationByPrefix('hoii_senpai','idle','Hey_Senpai',24,false)
        scaleObject('hoii_senpai',1.25,1.25)
	setProperty('hoii_senpai.alpha',0.00000001)
	addLuaSprite('hoii_senpai', true)

        makeAnimatedLuaSprite('hmhphph','doki/images/wilt/hmhphph',-257, -100)
        addAnimationByPrefix('hmhphph','idle','Hmph',24,false)
        scaleObject('hmhphph',2.5,2.5)
	setProperty('hmhphph.alpha',0.000001)
	addLuaSprite('hmhphph', true)

        makeAnimatedLuaSprite('hoii','doki/images/wilt/hoii',420, -70)
        addAnimationByPrefix('hoii','idle','Hey',24,false)
        scaleObject('hoii',2.5,2.5)
	setProperty('hoii.alpha',0.000001)
	addLuaSprite('hoii', true)
end
function onStepHit()
	if curStep == 516 then
	triggerEvent('Change Character','dad', 'senpai-angry')
end
	if curStep == 520 then
	makeLuaSprite('p1', 'doki/images/wilt/p2', -250, -10);
	setScrollFactor('p1', 1, 1);
	scaleObject('p1',5,5)
	addLuaSprite('p1',false)

end
	if curStep == 656 then
	for i = 0,3 do
setPropertyFromGroup('strumLineNotes', i, 'texture', 'NOTE_assets');
end
	setProperty('defaultCamZoom',0.8)
wiltswap(1)
end
	if curStep == 708 then
	setProperty('defaultCamZoom',0.7)
end
	if curStep == 841 then
	triggerEvent('Play Animation','swap', 'dad')
end
	if curStep == 848 then
	triggerEvent('Change Character','dad', 'senpai-angynonpixel')
setProperty('dad.x',DADxx-200)
setProperty('dad.y',DADyy-275)
end
	if curStep == 912 then
	setProperty('hoii_senpai.alpha',1)
	setProperty('hoii.alpha',1)
	playAnim('hoii_senpai','idle')
	playAnim('hoii','idle')
end
	if curStep == 929 then
	removeLuaSprite('hoii', true)
	removeLuaSprite('hoii_senpai', true)
end
	if curStep == 928 then
wiltswap(0)
end
	if curStep == 1056 then
	setProperty('boyfriend.visible',false)
	setProperty('dad.visible',false)
	setProperty('hmhphph.alpha',1)
	playAnim('hmhphph','idle')
	removeLuaSprite('bg', true)
	removeLuaSprite('p1', true)
end
	if curStep == 1100 then
        makeLuaSprite('flasf','',0,0)
        makeGraphic('flasf',1280,720,'000000')
        setObjectCamera('flasf','hud')
	setProperty('flasf.alpha',0)
        doTweenAlpha('flastt','flasf',1, (stepCrochet*0.001*16)*0.7,'sineOut')
	addLuaSprite('flasf', false);
end
end
function wiltswap(sayi)
	if sayi == 1 then
	for i = 0,3 do

setPropertyFromClass('PlayState', 'isPixelStage',true)
	triggerEvent('Change Character','dad', 'senpai-nonpixel')
	triggerEvent('Change Character','BF', 'monika-pixelnew')
	makeLuaSprite('bg', 'doki/images/wilt/bg2', -248, -10);
	setScrollFactor('bg', 0.85, 1);
	scaleObject('bg',5,5)
	addLuaSprite('bg',false)

	makeLuaSprite('p1', 'doki/images/wilt/p2', -250, -10);
	setScrollFactor('p1', 1, 1);
	scaleObject('p1',5,5)
	addLuaSprite('p1',false)



triggerEvent('Alt Idle Animation','BF','-alt')
setProperty('boyfriend.x',BFxx+350)
setProperty('boyfriend.y',BFyy+300)
setProperty('dad.x',DADxx-200)
setProperty('dad.y',DADyy-275)

setPropertyFromGroup('strumLineNotes', i+4, 'texture', 'degisti');
end
end
	if sayi == 0 then
setPropertyFromClass('PlayState', 'isPixelStage',false)
	triggerEvent('Change Character','dad', 'senpai-angry')
	triggerEvent('Change Character','BF', 'monika-player')

	makeLuaSprite('bg', 'doki/images/wilt/bg', -248, -10);
	setScrollFactor('bg', 0.85, 1);
	scaleObject('bg',5,5)
	addLuaSprite('bg',false)

	makeLuaSprite('p1', 'doki/images/wilt/p1', -250, -10);
	setScrollFactor('p1', 1, 1);
	scaleObject('p1',5,5)
	addLuaSprite('p1',false)

	for i = 0,3 do
setPropertyFromGroup('strumLineNotes', i, 'texture', 'PIXELNOTE_assets');

triggerEvent('Alt Idle Animation','BF','')
setProperty('boyfriend.x',BFxx)
setProperty('boyfriend.y',BFyy)
setProperty('dad.x',DADxx)
setProperty('dad.y',DADyy)

setPropertyFromGroup('strumLineNotes', i+4, 'texture', 'NOTE_assets');
end
end
end
function onUpdate()
	if mustHitSection == true then
	triggerEvent('Camera Follow Pos','698', '425')
end
	if mustHitSection == false then
	triggerEvent('Camera Follow Pos','560', '425')
end
end