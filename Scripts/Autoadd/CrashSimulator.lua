local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Crash Simulator")
local b = w:CreateFolder("AutoFarm")
local e = w:CreateFolder("Mix")
local u = w:CreateFolder("Credits") 

--Toggle
b:Toggle("Inf Stats",function(bool)
    shared.toggle = bool
    InfStats = bool
end)

e:Toggle("AntiAfk",function(bool)
    shared.toggle = bool
    AntiAfk = bool
end)
--Credits
u:Button("maxgat5#8395",function()
    setclipboard("maxgat5#8395")
end)
 
u:Button("Discrod Server",function()
    setclipboard("https://discord.gg/K4txdRSVfq")
end)

game:GetService('RunService').Stepped:connect(function()
    if InfStats == true then
        inf = math.huge
        game:GetService("ReplicatedStorage").RemoteFE.RF_CS:InvokeServer(1004,inf)
    end
    if AntiAfk == true then
        local bb=game:service'VirtualUser'
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
end)