function onCreatePost()
	makeLuaSprite('sky', 'weeb/weebSky', 0, 0);
	setScrollFactor('sky', 0.1, 0.1);
	setProperty('sky.antialiasing', false);
	widShit = math.floor(getProperty('sky.width') * 6);
	scaleObject('sky', 6, 6);
	addLuaSprite('sky', false);

	repositionShit = -200;
	makeLuaSprite('school', 'weeb/weebSchool', repositionShit, 0);
	setScrollFactor('school', 0.6, 0.9);
	setProperty('school.antialiasing', false);
	scaleObject('school', 6, 6);
	addLuaSprite('school', false);
	
	makeLuaSprite('street', 'weeb/weebStreet', repositionShit, 0);
	setScrollFactor('street', 0.95, 0.95);
	setProperty('street.antialiasing', false);
	scaleObject('street', 6, 6);
	addLuaSprite('street', false);

		makeLuaSprite('treesBack', 'weeb/weebTreesBack', repositionShit + 170, 130);
		setScrollFactor('treesBack', 0.9, 0.9);
		setProperty('treesBack.antialiasing', false);
		setGraphicSize('treesBack', math.floor(widShit * 0.8));
		addLuaSprite('treesBack', false);

	makeAnimatedLuaSprite('schoolTree','schoolStage/weebTrees',-800,-1000)
    addAnimationByPrefix('schoolTree','idle','tress_',12,true)
    setScrollFactor('schoolTree',0.85,0.85)
    setProperty('schoolTree.antialiasing',false)
    scaleObject('schoolTree',6,6)
    addLuaSprite('schoolTree',false)

	
		makeAnimatedLuaSprite('petals', 'weeb/petals', repositionShit, -40);
		addAnimationByPrefix('petals', 'idle', 'PETALS ALL', 24, true);
		setScrollFactor('petals', 0.85, 0.85);
		setProperty('petals.antialiasing', false);
		setGraphicSize('petals', widShit);
		addLuaSprite('petals', false);

	if songName == 'Bara no Yume' or songName == 'Poems n Thorns' then
        makeAnimatedLuaSprite('bgFreaks31','pixelWeek/bgFreaks31',0,200)
        addAnimationByPrefix('bgFreaks31','idle','BG fangirls dissuaded0',24,true)
	setProperty('bgFreaks31.antialiasing', false)
        scaleObject('bgFreaks31',6,6)
	addLuaSprite('bgFreaks31',false)
end
	if songName == 'Your Reality' then
	setProperty('gf.y', getProperty('gf.y')+650)
	setProperty('boyfriend.y', getProperty('boyfriend.y')+200)
end

	setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'bf-pixel-dead');
	setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pixel');
	setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameOver-pixel');
	setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameOverEnd-pixel');
end