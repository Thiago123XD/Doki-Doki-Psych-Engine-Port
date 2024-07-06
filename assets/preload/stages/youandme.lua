local spin = 3
local spin2 = 1.8
local followchars = true;

function onStartCountdown()

	triggerEvent('Camera Follow Pos','789', '-3204')
end
function onCreatePost()
	makeLuaSprite('skybox', 'doki/images/ynm/skybox', -140, -795);
	setScrollFactor('skybox', 0.2, 0.2);
        scaleObject('skybox',4.8,4.8)
	addLuaSprite('skybox',false)

	makeLuaSprite('bg3', 'doki/images/ynm/bg3', 10, -795);
	setScrollFactor('bg3', 1, 0.5);
        scaleObject('bg3',1.2,1.2)
	addLuaSprite('bg3',false)

	makeLuaSprite('bg2', 'doki/images/ynm/bg2', 0, -795);
	setScrollFactor('bg2', 1, 0.8);
        scaleObject('bg2',1.2,1.2)
	addLuaSprite('bg2',false)

	makeLuaSprite('bg', 'doki/images/ynm/bg', 0, -795);
	setScrollFactor('bg', 1, 0.9);
        scaleObject('bg',4.8,4.8)
	addLuaSprite('bg',false)

	makeLuaSprite('beyaz', '', 0, 0);
	makeGraphic('beyaz',1280,720,'000000')
        setObjectCamera('beyaz','other')
        setProperty('beyaz.alpha', 1)
	addLuaSprite('beyaz', true)

	makeLuaSprite('scrollingBG', 'scrollingBG', -215, -795);
	setScrollFactor('scrollingBG', 0, 0);
      --  scaleObject('scrollingBG',5.4,5.4)
        setProperty('scrollingBG.alpha', 0.00001)
	addLuaSprite('scrollingBG',false)

	initLuaShader("scroll")
 
	setSpriteShader('scrollingBG',"scroll")
  setShaderFloat("scrollingBG", "timeMulti", 0.02)
  setShaderFloat("scrollingBG", "xSpeed", 1)
  setShaderFloat("scrollingBG", "ySpeed", 1)

	makeLuaSprite('sozler1TT', '', 0.0001, 999999);
	addLuaSprite('sozler1TT', true)

	makeLuaSprite('sozler2TT', '', 0.0001, 999999);
	addLuaSprite('sozler2TT', true)

	makeLuaText('sozler1', 'A few days passed since Boyfriend and Girlfriends', 0, 50, 255)
        setObjectCamera('sozler1','game')
	setScrollFactor('sozler1', 0, 0);
	setTextFont('sozler1', 'Journal.TTF')
	setTextSize('sozler1', 90)
	setTextAlignment('sozler1', 'left')
setTextBorder('sozler1', 0.5, '000000')
        setProperty('sozler1.antialiasing', true)
	addLuaText('sozler1')

	makeLuaText('sozler2', 'last visit to the club.', 0, 50, 355)
        setObjectCamera('sozler2','game')
	setScrollFactor('sozler2', 0, 0);
	setTextFont('sozler2', 'Journal.TTF')
	setTextSize('sozler2', 90)
	setTextAlignment('sozler2', 'left')
setTextBorder('sozler2', 0.5, '000000')
        setProperty('sozler2.antialiasing', true)
	addLuaText('sozler2')

        setProperty('camHUD.alpha', 0)

-- A few days passed since Boyfriend and Girlfriends
--last visit to the club.
--The Literature Club returned to its original 5 members.
--The days countinued as normal with club meetings
--filled with stories sweets and singing.
--Things were going well especially for a certain someone-
end
function onStepHit()
--debugPrint(getTextWidth('sozler1'))
	if curStep == 14 then
	doTweenX('camFollowPosXT','camFollowPos', 589, 15, 'linear')
	doTweenY('camFollowPosYT','camFollowPos', -3404, 15, 'linear')
end
	if curStep == 16 then
	doTweenAlpha('beyazT','beyaz', 0, 3,'sineOut')
end
	if curStep == 19 then
	doTweenX('sozler1TTT','sozler1TT', 1071.65625, stepCrochet*0.001*16,'linear')
end
	if curStep == 35 then
	doTweenX('sozler2TTT','sozler2TT', 452.65625, stepCrochet*0.001*16,'linear')
end
	if curStep == 84 then
        setProperty('sozler1TT.x', 0.0001)
        setProperty('sozler2TT.x', 0.0001)
	setTextString('sozler1', 'The Literature Club returned to its original 5 members.')
	doTweenX('sozler1TTT','sozler1TT', 1195.421875, stepCrochet*0.001*16,'linear')
end
	if curStep == 141 then
        setProperty('sozler1TT.x', 0.0001)
        setProperty('sozler2TT.x', 0.0001)
	setTextString('sozler1', 'The days countinued as normal with club meetings')
	doTweenX('sozler1TTT','sozler1TT', 1073.421875, stepCrochet*0.001*16,'linear')
end
	if curStep == 157 then
        setProperty('sozler2TT.x', 0.0001)
	setTextString('sozler2', 'filled with stories sweets and singing.')
	doTweenX('sozler2TTT','sozler2TT', 787.96875, stepCrochet*0.001*16,'linear')
end
	if curStep == 208 then
        setProperty('sozler1TT.x', 0.0001)
        setProperty('sozler2TT.x', 0.0001)
	setTextString('sozler1', 'Things were going well especially for a certain someone-')
	doTweenX('sozler1TTT','sozler1TT', 1161.5625, stepCrochet*0.001*16,'linear')
end
	if curStep == 252 then
	doTweenAlpha('sozler1TTTT','sozler1', 0, 0.5,'sineIn')
	doTweenAlpha('sozler2TTTT','sozler2', 0, 0.5,'sineIn')
end
	if curStep == 240 then
	doTweenAlpha('camHUDT','camHUD', 1, 0.5,'sineIn')
end
	if curStep == 248 then
	doTweenY('camFollowPosYT2','camFollowPos', 326, 3, 'linear')
	triggerEvent('Camera Follow Pos','', '')
end
	if curStep == 520 then
        setProperty('defaultCamZoom', 1.1)
end
	if curStep == 784 then
	doTweenAlpha('scrollingBGT','scrollingBG', 1, stepCrochet*0.001*8,'sineIn')
end
	if curStep == 1068 then
        setProperty('defaultCamZoom', 0.9)
	doTweenAlpha('scrollingBGT','scrollingBG', 0, 3,'sineIn')
end
	if curStep == 1122 then
	doTweenX('camFollowPosXT','camFollowPos', 589, 5, 'linear')
	doTweenY('camFollowPosYT','camFollowPos', -3404, 5, 'linear')
end
	if curStep == 1134 then
	doTweenAlpha('camHUDT','camHUD', 0, 1,'sineOut')
end
	if curStep == 1252 then
	doTweenY('camFollowPosYT2','camFollowPos', 326, 3, 'linear')
	triggerEvent('Camera Follow Pos','', '')
end
	if curStep == 1776 then
        setProperty('defaultCamZoom', 1)
end
	if curStep == 1904 then
        setProperty('defaultCamZoom', 0.9)
	doTweenAlpha('scrollingBGT','scrollingBG', 1, stepCrochet*0.001*8,'sineIn')
end
	if curStep == 2160 then
	doTweenAlpha('scrollingBGT','scrollingBG', 0, 3,'sineIn')
end
	if curStep == 2638 then
	doTweenX('camFollowPosXT','camFollowPos', 589, 5, 'linear')
	doTweenY('camFollowPosYT','camFollowPos', -3404, 5, 'linear')
	doTweenAlpha('camHUDT','camHUD', 0, 2,'sineOut')
end
end
function onUpdate()
	setProperty('sozler1._frame.frame.width', getProperty('sozler1TT.x'))
	setProperty('sozler2._frame.frame.width', getProperty('sozler2TT.x'))
  setShaderFloat("scrollingBG", "iTime", os.clock())
end
function onTweenCompleted(tag)
	if tag == 'camFollowPosXT' then
	triggerEvent('Camera Follow Pos','589', '-3404')
end
end