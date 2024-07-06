function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'pixel1' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'PIXELNOTE_assets');
end
end
end
