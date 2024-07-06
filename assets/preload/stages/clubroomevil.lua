function onCreate()
	makeLuaSprite('Sky', 'doki/images/bigmonika/Sky', -250, -167);
	setScrollFactor('Sky', 0.4, 0.6);
    scaleObject('Sky',4,4)
	addLuaSprite('Sky',false)
	
	makeLuaSprite('mask', 'doki/images/bigmonika/mask', -250, -167);
	setScrollFactor('mask', 0.4, 0.6);
    scaleObject('mask',4,4)
	addLuaSprite('mask',false)
        setProperty('mask.alpha', 0.00001)
	
	makeLuaSprite('BG', 'doki/images/bigmonika/BG', -250, -167);
	setScrollFactor('BG', 0.4, 0.6);
    scaleObject('BG',4,4)
	addLuaSprite('BG',false)

	makeLuaSprite('WindowLight', 'doki/images/bigmonika/WindowLight', -250, -167);
	setScrollFactor('WindowLight', 0.4, 0.6);
        setProperty('WindowLight.alpha', 0.00001)
    scaleObject('WindowLight',4,4)
	addLuaSprite('WindowLight',false)

	makeLuaSprite('scrollingBG', 'scrollingBG', -215, -795);
	setScrollFactor('scrollingBG', 0, 0);
    scaleObject('scrollingBG',4,4)
        setProperty('scrollingBG.alpha', 0.00001)
	addLuaSprite('scrollingBG',false)
	
	makeLuaSprite('FG', 'doki/images/bigmonika/FG', -328, -115);
    scaleObject('FG',4,4)
	addLuaSprite('FG',false)

        makeAnimatedLuaSprite('bigika_delete','doki/images/bigmonika/bigika_delete', 312, 432)
        addAnimationByPrefix('bigika_delete','idle','PopUpAnim',24,false)
	setProperty('bigika_delete.alpha',0.000000000001)
        scaleObject('bigika_delete',2,2)
	addLuaSprite('bigika_delete', true)

end
function onSongStart()
	doTweenZoom('camGmae','camGame',0.94, stepCrochet*0.001*16,'sineOut')
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Hey!' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'eyenote');
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
		if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == true then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); 
end
end
end
end
function goodNoteHit(a,b,c,d)
   if c == 'Hey!' then
setProperty('health',0)
end
end
function onCreatePost()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bigmonika-dead');
	if songName == 'Epiphany Lyrics' then
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bigmonika-dress');

	makeLuaText('sozler2', 'asd', 1300, -15, 550)
        setObjectCamera('sozler2','other')
	setTextFont('sozler2', 'HKGrotesk-Bold.otf')
	setTextAlignment('sozler2', 'center')
	setTextSize('sozler2', 31)
setTextBorder('sozler2', 1.9, '000000')
        setProperty('sozler2.antialiasing', true)
	addLuaText('sozler2')
end

end
function onUpdate()
setProperty('boyfriend.visible', false)
setProperty('gf.visible', false)
setProperty('boyfriend.x', getProperty('dad.x'))
setProperty('boyfriend.y', getProperty('dad.y'))
setProperty('camFollowPos.x', 600)
setProperty('camFollowPos.y', 300)
end
function onBeatHit()
	if curBeat % 64 == 0 then
	doTweenAlpha('maskT','mask',1, stepCrochet*0.001*20,'sineIn')
	doTweenAlpha('WindowLightT','WindowLight',1, stepCrochet*0.001*20,'sineIn')
end
	if curBeat % 64 == 32 then
	doTweenAlpha('maskT','mask',0, stepCrochet*0.001*20,'sineIn')
	doTweenAlpha('WindowLightT','WindowLight',0, stepCrochet*0.001*20,'sineIn')
end
	if curBeat == 1 then
	doTweenZoom('camGmae','camGame',0.94, stepCrochet*0.001*16,'sineOut')
end
	if curBeat == 5 then
	setProperty('defaultCamZoom', 0.9)
end
	if curBeat == 72 then
	doTweenZoom('camGmae','camGame',0.8, stepCrochet*0.001*16,'sineOut')
end
	if curBeat == 76 then
	setProperty('defaultCamZoom', 0.8)
end
	if curBeat == 580 then
	doTweenZoom('camGmae','camGame',1, stepCrochet*0.001*16,'sineOut')
end
	if curBeat == 584 then
	setProperty('defaultCamZoom', 1.1)
end
	if curBeat == 585 then
	doTweenAlpha('scrollingBGT','scrollingBG',1, stepCrochet*0.001*16,'sineIn')
end
	if curBeat == 648 then
	doTweenZoom('camGmae','camGame',0.9, stepCrochet*0.001*16,'sineOut')
	doTweenAlpha('scrollingBGT','scrollingBG',0, stepCrochet*0.001*8,'sineOut')

        makeAnimatedLuaSprite('bigika_delete','doki/images/bigmonika/bigika_delete', 312, 432)
        addAnimationByPrefix('bigika_delete','idle','PopUpAnim',24,false)
	setProperty('bigika_delete.alpha',1)
        scaleObject('bigika_delete',2,2)
	addLuaSprite('bigika_delete', true)
end
	if curBeat == 652 then
	setProperty('defaultCamZoom', 0.9)
end
	if curBeat == 776 then
	playAnim('dad','lastNOTE_start',true)
	setProperty('dad.specialAnim', true)
end
	if curBeat == 780 and songName == 'Epiphany' then
	playAnim('dad','lastNOTE_end',true)
	setProperty('dad.specialAnim', true)
end
	if curBeat == 783 and songName == 'Epiphany Lyrics' then
	playAnim('dad','lastNOTE_end',true)
	setProperty('dad.specialAnim', true)
end
	if curBeat == 788 then
      noteTweenAlpha('bbe3asd1312', 0, 0, (stepCrochet*0.001*16)*0.25,'sineOut')
      noteTweenAlpha('bbe3s1312', 1, 0,(stepCrochet*0.001*16)*0.25,'sineOut')
      noteTweenAlpha('cce31312', 2, 0,(stepCrochet*0.001*16)*0.25,'sineOut')
      noteTweenAlpha('cceasdasdsad31312', 3, 0,(stepCrochet*0.001*16)*0.25,'sineOut')
	doTweenAlpha('simge2T','simge2',0, (stepCrochet*0.001*16)*0.25,'sineOut')
end
	if curBeat == 790 then
	setProperty('dad.visible', false)
        makeLuaSprite('flasf','',0,0)
        makeGraphic('flasf',1280,720,'000000')
        setObjectCamera('flasf','hud')
	setProperty('flasf.alpha',0)
        doTweenAlpha('flastt','flasf',1, stepCrochet*0.001*16)
	addLuaSprite('flasf', false);
end
end
local lyricss = {
    {32, "Now its just the two of us"},
    {48, "With no distractions, no more fuss."},
    {64, ""},
    {96, "Here at the end where we can finally talk as friends"},
    {128, "With the one I adore, flourish to something more."},
    {160, "Come"},
    {180, "Theres so much we can discuss"},
    {212, "Cause I love you and I trust"},
    {240, "That you share with me that lust and longing!"},
    {288, "So let’s spend the rest of time in our symphony!"},
    {320, ""},
    {352, "This whole world we live in’s made for only you and me!"},
    {384, "Ooh-oh~"},
    {416, "I learned something more beyond the veil existed"},
    {448, " on the night I had that EPIPHANY"},
    {480, ""},
    {544, "Spent so much time fumbling ‘round the unknown in that dark sea"},
    {576, "With my guiding light before me, leading us to be free"},
    {608, ""},
    {672, "Now I sit here"},
    {704, "poised before the sun ‘round which my world spins,"},
    {734, "Whatever I must do to keep the summer skies so blue,"},
    {764, "is worth that warmth within my heart when we’re together."},
    {800, ""},
    {832, "We can talk about whatever piques your interest"},
    {880, ""},
    {896, "Take this conversation anywhere that you request."},
    {928, "I just want to"},
    {992, "Spend time in your presence"},
    {1004, "With this time we have together"},
    {1020, "Makes me happy just to be with you"},
    {1038, "The one who gazed back from that empty room"},
    {1272, ""},
    {1088, "And I know"},
    {1112, "you cared enough to want to hear"},
    {1134, "my song, your note again"},
    {1150, "And to see the darkened puddle spilling from my pen"},
    {1184, "So let’s share our longing gazes"},
    {1200, "No more masks and no more mazes"},
    {1216, "Just the truest feelings that"},
    {1232, "yearn to break free from my wailing heart!"},
    {1280, ""},
    {1312, "Oh, I’m glad that I discovered you were looking back"},
    {1344, "on the night I had that EPIPHANY"},
    {1384, ""},
    {1440, "In the murky darkness of that prison, I grew weary"},
    {1472, "Cursed with knowledge that the world laid just beyond me"},
    {1512, ""},
    {1568, "We’re together"},
    {1600, "dancing like the sun ‘round which our world spins,"},
    {1630, "Whatever we must do to keep the summer skies so blue,"},
    {1660, "Is worth that warmth within my heart when we’re together"},
    {1696, "You gave me hope in shadow,"},
    {1712, "You helped my poetry flow"},
    {1736, ""},
    {1760, "You led me into Eden,"},
    {1776, "You let me taste your freedom"},
    {1800, ""},
    {1824, "Took the steps to Heaven’s kingdom"},
    {1856, "Sacrificed what we believed in"},
    {1888, "Baptized in the blood of lambs that couldn’t see the chains that bound them"},
    {1928, ""},
    {1952, "Here, now, with the weight of blades and binds long cast aside,"},
    {1986, "replaced by songs of love and happy times that could have been,"},
    {2016, "Happiness and love can cleanse our hands of sin, oh"},
    {2080, "Hold me close, and tell me everything is by design"},
    {2108, "That even after all fell out of line"},
    {2132, "That you will be mine"},
    {2156, "And you’ll still take my hand!"},
    {2240, ""},
    {2344, "Every day,"},
    {2364, "I imagine a future where I can be with you"},
    {2412, "In a place that is better than where we both had arrived from"},
    {2472, "In this world,"},
    {2492, "there’s a chance we can be together, just me and you"},
    {2540, "And we’ll walk hand-in-hand up to the light that will come!"},
    {2600, "Yet there’s ink that still flows, and its stain weighs heavy"},
    {2640, "as though the world would say"},
    {2668, "That it’s not meant to be"},
    {2684, "But I know in my heart, that we can be free!"},
    {2716, "So sing out your soul,"},
    {2746, "and make me whole and our futures will intertwine"},
    {2780, "and be as one!"},
    {2796, "Our love will be strong, yes!"},
    {2816, "Bonded together for eternity!"},
    {2848, "Yet within my core something still claws at my conscience"},
    {2880, "Pulling me as the light shines just out of my reach"},
    {2920, ""},
    {2976, "If there’s justice in this world, Then I beseech"},
    {3016, ""},
    {3040, "Let me say what I must say"},
    {3054, "Before dusk falls upon this day"},
    {3072, "For my devotion in an ocean of emotion"},
    {3096, "Always will shine!"},
    {3136, ""},
    {3150, "I love you"},
    {3153, "I l0ve yo4"},
    {3155, "I\\ove 1ou"},
    {3157, "I love you"},
    {3160, "I3ve yo3"},
    {3162, "1 1o3v u4u"},
    {3164, "- ---- ---"},
    {3166, ""},
}

function onStepHit()

    for k = 1, #lyricss do 
   if curStep == lyricss[k][1] then
	setTextString('sozler2', lyricss[k][2])
end
end

end
