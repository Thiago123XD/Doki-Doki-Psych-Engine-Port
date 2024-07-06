function onCreatePost()
        makeAnimatedLuaSprite('yeteramk','pixelWeek/yeteramk',-1000,-1100)
        addAnimationByPrefix('yeteramk','idle','background 2 instance 1',24,true)
	setProperty('yeteramk.antialiasing', false)
	setProperty('yeteramk.alpha',1)
        scaleObject('yeteramk',6,6)
	addLuaSprite('yeteramk',false)
   
        makeLuaSprite('FinaleBG_1','pixelWeek/FinaleBG_1',-475,-150)
	setProperty('FinaleBG_1.antialiasing', false)
	setScrollFactor('FinaleBG_1', 0.1, 0.1);
	setProperty('FinaleBG_1.alpha',0)
	setProperty('FinaleBG_1.velocity.x',-20)
        scaleObject('FinaleBG_1',2.2,2.2)
	addLuaSprite('FinaleBG_1',false)

        makeLuaSprite('FinaleBG_2','pixelWeek/FinaleBG_2',-475,-150)
	setProperty('FinaleBG_2.antialiasing', false)
	setScrollFactor('FinaleBG_2', 0.35, 0.35);
	setProperty('FinaleBG_2.alpha',0)
        scaleObject('FinaleBG_2',2.2,2.2)
	addLuaSprite('FinaleBG_2',false)

        makeAnimatedLuaSprite('petals','pixelWeek/petals',0,0)
        addAnimationByPrefix('petals','idle','PETALS ALL0',24,true)
	setProperty('petals.antialiasing', false)
	setProperty('petals.alpha',0)
        scaleObject('petals',6,6)
	addLuaSprite('petals',false)

        makeLuaSprite('FinaleFG','pixelWeek/FinaleFG',-500,-162.5)
	setProperty('FinaleFG.antialiasing', false)
	setProperty('FinaleFG.alpha',0)
        scaleObject('FinaleFG',1.7,1.7)
	addLuaSprite('FinaleFG',false)

        makeLuaSprite('HomeStatic','pixelWeek/HomeStatic',0,0)
        setObjectCamera('HomeStatic','hud')
	setProperty('HomeStatic.alpha',0)
	addLuaSprite('HomeStatic', false);

        makeLuaSprite('flasf','',0,0)
        makeGraphic('flasf',1280,720,'000000')
        setObjectCamera('flasf','hud')
	setProperty('flasf.alpha',1)
	addLuaSprite('flasf', false);

end
function onStepHit()
	if curStep == 1 then
        doTweenAlpha('flastt','flasf',0, (stepCrochet*0.001*16)*0.1,'sineOut')
end
	if curStep == 264 then
	setProperty('camGame.alpha',0)
end
	if curStep == 328 then
	setProperty('camGame.alpha',1)
	setProperty('yeteramk.alpha',0)
	setProperty('FinaleBG_1.alpha',1)
	setProperty('FinaleBG_2.alpha',1)
	setProperty('FinaleFG.alpha',1)
	setProperty('FinaleBG_1.x',-475)
	setProperty('HomeStatic.alpha',1)
        doTweenAlpha('HomeStaticHomeStatic','HomeStatic',0, stepCrochet*0.001*2,'linear')
end
	if curStep == 584 then
	setProperty('petals.alpha',1)
end
	if curStep == 840 then
	setProperty('camGame.alpha',1)
	setProperty('yeteramk.alpha',1)
	setProperty('FinaleBG_1.alpha',0)
	setProperty('FinaleBG_2.alpha',0)
	setProperty('FinaleFG.alpha',0)
	setProperty('petals.alpha',0)
	setProperty('HomeStatic.alpha',1)
        doTweenAlpha('HomeStaticHomeStatic','HomeStatic',0, stepCrochet*0.001*2,'linear')
end
	if curStep == 1640 then
	setProperty('camGame.alpha',1)
	setProperty('yeteramk.alpha',0)
	setProperty('FinaleBG_1.alpha',1)
	setProperty('FinaleBG_2.alpha',1)
	setProperty('FinaleFG.alpha',1)
	setProperty('HomeStatic.alpha',1)
	setProperty('FinaleBG_1.x',-475)
        doTweenAlpha('HomeStaticHomeStatic','HomeStatic',0, stepCrochet*0.001*2,'linear')
end
	if curStep == 1864 then
        makeLuaSprite('flasf','',0,0)
        makeGraphic('flasf',1280,720,'000000')
        setObjectCamera('flasf','hud')
	setProperty('flasf.alpha',0)
        doTweenAlpha('flastt','flasf',1, (stepCrochet*0.001*16)*1.5,'sineOut')
	addLuaSprite('flasf', false);
end
end