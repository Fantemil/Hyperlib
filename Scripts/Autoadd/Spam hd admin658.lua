getgenv().deletewhendupefound = true
local lib = loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Lib-18698"))()
lib.makelib("spam hd admin (2areyoumental110)")
local main = lib.maketab("Main")

local spamtxts = {}
local spamnum = 0
local tosay = ""
local spamdelay = 0
lib.maketextbox("Spam Delay",main,function(txt)
    spamdelay = tonumber(txt)
end)
lib.maketextbox("Enter Command",main,function(txt)
    if string.sub(txt,1,1) == ";" then
        txt = string.sub(txt,2)
    end
    local spamtxt = false
    spamnum += 1
    local num = spamnum
    spamtxts[num] = function(bool)
        spamtxt = bool
    end
    lib.maketoggle("Spam Command ("..string.split(txt," ")[1].." "..tostring(num)..")",main,function(bool)
        spamtxt = bool
        while spamtxt do
            task.wait(spamdelay)
            game:GetService("ReplicatedStorage").HDAdminClient.Signals.RequestCommand:InvokeServer(";"..txt)
        end
    end)
end)
lib.ondestroyedfunc = function()
    for i,v in pairs(spamtxts) do
        v(false)
    end
end