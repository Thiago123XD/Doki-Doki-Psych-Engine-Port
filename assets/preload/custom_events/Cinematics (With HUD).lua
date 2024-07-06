function onCreatePost()
	makeLuaSprite('upBar', '', -320, -360)
	makeGraphic('upBar', 1920, 360, '000000')
	setObjectCamera('upBar', 'hud')
	addLuaSprite('upBar', false)

	makeLuaSprite('downBar', '', -320, 720)
	makeGraphic('downBar', 1920, 360, '000000')
	setObjectCamera('downBar', 'hud')
	addLuaSprite('downBar', false)

end
local upYYYY = -360
local downYYYY = 720
function onEvent(name,value1,value2)
	if name == 'Cinematics (With HUD)' then
mcqueen = value1
mesafe = value2
		doTweenY('upBarT', 'upBar', upYYYY + mesafe, mcqueen, 'quadOut')
		doTweenY('downBarT', 'downBar', downYYYY - mesafe, mcqueen, 'quadOut')
end
end
function onUpdate()
	if getProperty('upBar.y') > -360 then
setProperty('upBar.alpha',1)
else
setProperty('upBar.alpha',0)
end
	if getProperty('downBar.y') < 720 then
setProperty('downBar.alpha',1)
else
setProperty('downBar.alpha',0)
end
end