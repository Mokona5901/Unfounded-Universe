function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an oof_note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'dont_touch
	_note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'dont_touch_notes_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'mustPress', true); --Miss kill the player
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'dont_touch_note' then
		setProperty('health', -500);
	end
end