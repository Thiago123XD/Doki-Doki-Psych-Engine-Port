function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'pixel2' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'degisti');
end
end
end
