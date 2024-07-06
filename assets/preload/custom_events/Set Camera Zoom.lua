local hedefzom = 0
local notbop = false
local twene = 'cubeOut'
function onSongStart()
if songName == 'Obsession' then
twene = 'sineInOut'
end
end
function onEvent(n,v1,v2)
   if n == 'Set Camera Zoom' then
hedefzom = v1
   doTweenZoom('kamerazomi','camGame',v1,v2,twene)
notbop = true
end
end
function onTweenCompleted(tag)
  if tag == 'kamerazomi' then
   setProperty('defaultCamZoom', hedefzom)
notbop = false
end
end
function onUpdatePost()
  if notbop == true then
	setProperty('camHUD.zoom', 1)
	setProperty('camZooming', false)
end
end