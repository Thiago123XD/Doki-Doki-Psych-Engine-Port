local spin = 3
local spin2 = 1.8
local followchars = true;

function onCreatePost()

	makeLuaSprite('barbg', 'doki/images/va11halla/barbg', -200, 0);
	setProperty('barbg.alpha', 1);
	scaleObject('barbg', 6, 6);
	setProperty('barbg.antialiasing', false);
	addLuaSprite('barbg', false);

        makeAnimatedLuaSprite('anna','doki/images/va11halla/anna', -200,0)
        addAnimationByPrefix('anna','idle2','anna_idle',24,false)
        addAnimationByPrefix('anna','idle','anna_static',24,false)
	setProperty('anna.antialiasing', false)
        scaleObject('anna',6,6)
	playAnim('anna','idle2',true)
	addLuaSprite('anna',false)

        makeAnimatedLuaSprite('dana','doki/images/va11halla/dana', 617,72)
        addAnimationByPrefix('dana','idle','dana0',24,false)
	setProperty('dana.antialiasing', false)
	setProperty('dana.visible', false)
        scaleObject('dana',6,6)
	addLuaSprite('dana',false)

	makeLuaSprite('barbg2', 'doki/images/va11halla/barbg2', -200, 0);
	setProperty('barbg2.alpha', 1);
	scaleObject('barbg2', 6, 6);
	setProperty('barbg2.antialiasing', false);
	addLuaSprite('barbg2', false);

        makeAnimatedLuaSprite('BarAds','doki/images/va11halla/BarAds',1195,165)
        addAnimationByPrefix('BarAds','idle','BarAdvert',24,true)
	setProperty('BarAds.antialiasing', false)
        scaleObject('BarAds',6,6)
	addLuaSprite('BarAds',false)

        makeAnimatedLuaSprite('dorth','doki/images/va11halla/dorth', -163, 242)
        addAnimationByPrefix('dorth','idle','dortohy_left',24,false)
        addAnimationByPrefix('dorth','idle2','dortohy_right',24,false)
	setProperty('dorth.antialiasing', false)
	setProperty('dorth.visible', false)
        scaleObject('dorth',6,6)
	addLuaSprite('dorth',true)

        makeAnimatedLuaSprite('alma','doki/images/va11halla/alma', 975, 61)
        addAnimationByPrefix('alma','idle','alma',24,false)
	setProperty('alma.antialiasing', false)
	setProperty('alma.visible', false)
        scaleObject('alma',6,6)
	addLuaSprite('alma',true)

	makeLuaSprite('intro1', 'doki/images/va11halla/intro1', 0, 0);
	setObjectCamera('intro1', 'other');
	setProperty('intro1.alpha', 0.00001);
	setProperty('intro1.antialiasing', false);
	addLuaSprite('intro1', false);

	makeLuaSprite('intro2', 'doki/images/va11halla/intro2', 0, 0);
	setObjectCamera('intro2', 'other');
	setProperty('intro2.alpha', 0.00001);
	setProperty('intro2.antialiasing', false);
	addLuaSprite('intro2', false);

setProperty('camHUD.alpha',0.0001)
setProperty('camGame.alpha',0.0001)
end
local yaziolsutur = false
function onBeatHit()
	if curBeat % 2 == 1 then
	playAnim('dorth','idle',true)
end
	if curBeat % 2 == 0 then
	playAnim('dana','idle',true)
	playAnim('alma','idle',true)
	playAnim('dorth','idle2',true)

	if yaziolsutur == true then
nicoText()
end
end
end
function onStepHit()
	if curStep == 2 then
	doTweenAlpha('intro1T','intro1', 1, 2.5,'sineIn')
end
	if curStep == 50 then
	doTweenAlpha('intro1T','intro1', 0, 1.2,'sineIn')
end
	if curStep == 62 then
	doTweenAlpha('intro2T','intro2', 1, 2.5,'sineIn')
end
	if curStep == 111 then
setProperty('camHUD.alpha',1)
setProperty('camGame.alpha',1)

	doTweenAlpha('intro2T','intro2', 0, 1.2,'sineIn')


for i = 0,3 do

	setPropertyFromGroup('strumLineNotes', i, 'y', defaultOpponentStrumY0 -10)
	setPropertyFromGroup('strumLineNotes', i+4, 'y', defaultOpponentStrumY0 -10)
	setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
	setPropertyFromGroup('strumLineNotes', i+4, 'alpha', 0)

      noteTweenY(i..'o', i, defaultOpponentStrumY0, (1 + (0.2 * i)),'circInOUT')
      noteTweenY(i..'p', i+4, defaultOpponentStrumY0, (1 + (0.2 * i)),'circInOUT')
      noteTweenAlpha(i..'oA', i, 1, (1 + (0.2 * i)),'circInOUT')
      noteTweenAlpha(i..'pA', i+4, 1, (1 + (0.2 * i)),'circInOUT')
end
end
	if curStep == 512 then
        makeLuaSprite('flasf','',0,0)
        makeGraphic('flasf',1280,720,'FDC1FF')
        setObjectCamera('flasf','hud')
	setProperty('flasf.alpha',1)
	addLuaSprite('flasf', false);
	doTweenAlpha('flasfT','flasf', 0, (stepCrochet*0.001*16)*0.2,'sineOut')

	setProperty('dana.visible', true)
	setProperty('defaultCamZoom', 1)
end
	if curStep == 752 then
	setProperty('defaultCamZoom', 1.4)
end
	if curStep == 768 then
	setProperty('defaultCamZoom', 0.85)
        makeLuaSprite('flasf','',0,0)
        makeGraphic('flasf',1280,720,'FDC1FF')
        setObjectCamera('flasf','hud')
	setProperty('flasf.alpha',1)
	addLuaSprite('flasf', false);
	doTweenAlpha('flasfT','flasf', 0, (stepCrochet*0.001*16)*0.2,'sineOut')

	setProperty('alma.visible', true)
	setProperty('dorth.visible', true)

end
	if curStep == 1008 then
      noteTweenAlpha('bbe3asd1312', 0, 0,2.5,'smootherStepInOut')
      noteTweenAlpha('bbe3s1312', 1, 0,2.5,'smootherStepInOut')
      noteTweenAlpha('cce31312', 2, 0,2.5,'smootherStepInOut')
      noteTweenAlpha('cceasdasdsad31312', 3, 0,2.5,'smootherStepInOut')
      noteTweenX('bbe3asd131', 0, 412,2.5,'smootherStepInOut')
      noteTweenX('bbe3s131', 1, 524,2.5,'smootherStepInOut')
      noteTweenX('cce3131', 2, 636,2.5,'smootherStepInOut')
      noteTweenX('cceasdasdsad3131', 3, 748,2.5,'smootherStepInOut')
      noteTweenX('bbe6asd969', 4, 412,2.5,'smootherStepInOut')
      noteTweenX('bbe6969', 5, 524,2.5,'smootherStepInOut')
      noteTweenX('cce6969', 6, 636,2.5,'smootherStepInOut')
      noteTweenX('cce69asdasdads69', 7, 748,2.5,'smootherStepInOut')
end
	if curStep == 1020 then
yaziolsutur = true
end
	if curStep == 1144 then
      noteTweenAlpha('bbe3asd1312', 0, 1,1.5,'smootherStepInOut')
      noteTweenAlpha('bbe3s1312', 1, 1,1.5,'smootherStepInOut')
      noteTweenAlpha('cce31312', 2, 1,1.5,'smootherStepInOut')
      noteTweenAlpha('cceasdasdsad31312', 3, 1,1.5,'smootherStepInOut')
	for e = 0,3 do
      noteTweenX(e..'OO', e, _G['defaultOpponentStrumX'..e],1.5,'smootherStepInOut')
      noteTweenX(e..'OOp', e+4, _G['defaultPlayerStrumX'..e],1.5,'smootherStepInOut')
end
end
	if curStep == 1276 then
yaziolsutur = false
end
	if curStep == 1280 then
        makeLuaSprite('flasf','',0,0)
        makeGraphic('flasf',1280,720,'FDC1FF')
        setObjectCamera('flasf','hud')
	setProperty('flasf.alpha',1)
	addLuaSprite('flasf', false);
	doTweenAlpha('flasfT','flasf', 0, (stepCrochet*0.001*16)*0.2,'sineOut')

	setProperty('dana.visible', false)
	setProperty('dorth.visible', false)
	setProperty('alma.visible', false)
end
	if curStep == 1412 then
	playAnim('anna','idle',true)
end

end

local yazilar = {
    "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
    "wait this isnt ddlc-",
    "Whats happening?",
    "(^V^)",
    "Anime was a mistake",
    "Next game",
    "TBD-Tan was here!!",
    "POG",
    "SO CUTE!!! \\^o^/",
    "huh",
    "what are they even saying",
    "beep boop skee dee bap",
    "^-^",
    "you wanna get bonked?",
    "wwwwwwww",
    "Go! Go! Streaming-chan!",
    "( >u< )",
    "LETS GOOOOOOOOOOOOOOOO",
    "YEAHHHHH",
    "*crys* why",
    "wacky",
    "wah",
    "I quote myself because Im hilarious",
    "STREAMCHAN NO GET OUT OF THERE",
    "I swear that kid is everywhere...",
    "Hey kids, wanna die?",
    "can you turn off the sink",
    "GRAHHHHHHHHH",
    "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
    "888888888888888",
    "incredibly cute girls!",
    "is this canon?",
    "Why is everyone so noisy?",
    "/( owo )/",
    "How do I Premium?",
    "#TeamTBDSweep",
    "kinda based???",
    "Am I distracting you",
    "lol",
    "I ball like a nugget",
    "\"Aww man\" -Miller",
    "saff",
    "YOOOO BF OFF-COLLAB",
    "im yiiking out",
    "TSKR",
    "LETS FUCKING GOOOOOOOOOOOOOOOOO",
    "AYOOOOOOO",
    "why is he so short",
    "im die",
    "!!!~~~\\^o^/~~~!!!",
    "So true!",
    "This is fire ngl",
    "cool gameplay!",
    "*points* someone rapped here",
    "Somebody clip this!",
    "but actually tho what are they singing",
    "DPZ went off on this",
    "notice me BF-senpai",
    "is this indie cross?",
    "YES YES YES!",
    "EVERYTHING IS SO PURPLE",
    "DISTRACTION DISTRACTION DISTRACTION",
    "ooga booga",
    "is this Neo?",
    "thirsty",
    "ITS SPICY, BABY!",
    "TOO MUCH CLOTHING!",
    "Member only stream later?",
    "Did I miss todays zatsudan?",
    "where is the newgrounds soul?",
    "Streaming-chan my oshi!~~",
    "vvvvvvvvvvvvv",
    "I gently open the door",
    "hi penkaru",
    "is that the funkin guy",
    "please play Flavor Rave",
    "glad this wasnt leaked",
    "FNF?????",
    "KAngel collab when??",
    "friday night funkin in real life",
    "whens Vs. *kira* miki",
    "(´w`)",
    "i cant read",
    "vvvvvvvvvvvvvvvv",
    "jajajajajajajajajajajajaja"
}
function nicoText()
yazilacaktext = yazilar[getRandomInt(1,85)]

	makeLuaText(yazilacaktext, yazilacaktext, 0, 0, 0)
        setObjectCamera(yazilacaktext,'hud')
	setTextSize(yazilacaktext, 50)
	addLuaText(yazilacaktext)
	setTextBorder(yazilacaktext, 0.5, 'FFFFFF')
	setTextFont(yazilacaktext, 'CyberpunkWaifus.ttf')
	setProperty(yazilacaktext..'.x', 1280 + getTextWidth(yazilacaktext))
	setProperty(yazilacaktext..'.y', math.random(0,650))
	doTweenX(yazilacaktext..'delete', yazilacaktext, -1280, math.random(4,12),'linear')

debugPrint('lol')
end