function onEvent(n,v1,v2)
	if n == 'Ejected Video' then
		startVideo('lnf')
		setProperty('inCutscene', false)
	end
end