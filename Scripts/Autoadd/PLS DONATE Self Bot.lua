-- You can change these

_G.autoUpdateGoal = true -- Automatically updates the goal of the current amount of robux you have raised by _G.increaseGoalBy amount (i.e. you have 525 robux raised and _G.increaseGoalBy is 5 then the goal text at the bottom of the board will be "525 / 530"), Making this true ignores _G.goal
_G.increaseGoalBy = 15 -- The Amount of which the autoUpdateGoal increase by 

_G.goal = "5k!" -- the goal it will auto set at the end of the text
_G.Text = [[<stroke color="#2A0030" thickness="5"><font size="25"><font color= "#445094"><font face="Bangers">KORBLOX</font></font></font></stroke>
Anything Helps!
Status: AFK
]] -- the text before the goal text (i.e "please help me out!\n Im a upcoming game dev!!!", replace the \n with a white space )

_G.saythanks = true -- Says thank you when they purchase something ("Thanks For Donating {Amount they donated}$!")
_G.thanksText = "Thanks for donating %s$!" -- %s is the amount of robux they donated, the text to thank the person
_G.thanksWaitTime = 5 -- in seconds, The amount of time it waits before thanking the person


_G.beg = true -- Begs in the chat every time the begInterval has past
_G.begInterval = 30 -- In Seconds
_G.begText = "Please Donate! I'm working on a new game!" -- text to beg with

_G.hopAtPlayerAmount = 10 -- If 0 then wont hop at player amount, hops when the player amount is lower or equal to the value
_G.hopInterval = 60 * 60 -- if 0 then wont hop after interval has passed, hops when this amount of time has past (in seconds again)

_G.boardUpdateInterval = 1 -- as you can guess, in seconds, how fast the goal updates

_G.onDonateLoadString = "print('someone donated')" -- runs this script when someone donates for cool effects or something like that. Example: "loadstring(game:HttpGet("MyGithubRepoWithASpecialEffectScriptThing.lua", true))()"

-- DONT Change! (or do if yk what you're doing)
_G.loadstr = "https://raw.githubusercontent.com/littlepriceonu/Pls-Donate-Self-Bot/main/source.lua"

loadstring(game:HttpGet(_G.loadstr, true))()