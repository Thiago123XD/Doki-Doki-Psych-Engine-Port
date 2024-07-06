function onCreatePost()

        makeLuaSprite('FinaleBG_1','pixelWeek/FinaleBG_1',-475,-150)
	setProperty('FinaleBG_1.antialiasing', false)
	setScrollFactor('FinaleBG_1', 0.1, 0.1);
	setProperty('FinaleBG_1.velocity.x',0)
        scaleObject('FinaleBG_1',2.2,2.2)
	addLuaSprite('FinaleBG_1',false)

        makeLuaSprite('FinaleBG_2','pixelWeek/FinaleBG_2',-475,-150)
	setProperty('FinaleBG_2.antialiasing', false)
	setScrollFactor('FinaleBG_2', 0.35, 0.35);
        scaleObject('FinaleBG_2',2.2,2.2)
	addLuaSprite('FinaleBG_2',false)

        makeLuaSprite('FinaleFG2','pixelWeek/FinaleFG',-500,-162.5)
	setProperty('FinaleFG2.antialiasing', false)
        scaleObject('FinaleFG2',1.7,1.7)
	addLuaSprite('FinaleFG2',false)

end