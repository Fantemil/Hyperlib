-- psynr

local cfg = {
   ['Check rate'] = 2, -- laggier the lower the number
   ['Discord Send Rate'] = 30, -- higher number, lower chance of getting rate limited
   ['Anchored RootPart'] = true, -- keep on (turn off and it lags u when tping)
   ['Rendering Disabled'] = true, -- wip (not done yet :3)
   ['Use Webhook'] = true,
   ['Webhook link'] = 'webhook link here'
}

local coinCfg = {
   ['Coins'] = false,
   ['Hearts'] = true,
   ['All'] = false
}

-- Vars

_G.coincount = 0

-- cfg checks

if cfg['Anchored RootPart'] == true then
   game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end


function whsend(urldata, msg)
   local response = syn.request(
       {
           Url = tostring(urldata),
           Method = 'POST',
           Headers = {
               ['Content-Type'] = 'application/json'
           },
           Body = game:GetService('HttpService'):JSONEncode({content = msg})
       }
   );    
end
function tgoto(coincframe)
   if cfg['Anchored RootPart'] == true then
       game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
   end
   local CFrameEnd = CFrame.new(coincframe.X + 0.3, coincframe.Y + 4, coincframe.Z + 0)
   local Time = 2 -- sdeconds xd
   local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
   tween:Play()
   tween.Completed:Wait()
   if cfg['Anchored RootPart'] == true then
       game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
   end
end
function check()
   for i, v in pairs(game.Workspace:GetDescendants()) do
       if v.Name == 'CoinContainer' then
           return true, v
       end
   end
end
local function webhookAlert()
   while wait(cfg['Discord Send Rate']) do
       if cfg['Use Webhook'] == true then
           whsend(cfg['Webhook link'], '**[Coin Autofarm Update] - [TOTAL COLLECTED THIS ROUND : ' .. _G.coincount .. '] - (may be flawed due to picked up coins or respawning.)**')
           _G.coincount = 0
       end
   end
end
local function antiafk()
   local vu = game:GetService("VirtualUser")
   game:GetService("Players").LocalPlayer.Idled:connect(function()
      vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
      wait(1)
      vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   end)
end
function cc(arg1, arg2)
   if arg1 == true then
       for i, v in pairs(arg2:GetDescendants()) do
           if v.Name == 'CoinType' and v.Parent.Name ~= 'CollectedCoin' then
               if coinCfg['Coins'] == true then
                   if v.Value == 'Coin' then
                       tgoto(v.Parent.Position)
                       wait(1)
                       print('Attempted Pathing . . . [coin]')
                       _G.coincount = _G.coincount + 1
                   end
               elseif coinCfg['Hearts'] == true then
                   if v.Value == 'Heart' then
                       tgoto(v.Parent.Position)
                       wait(1)
                       print('Attempted Pathing . . . [hrt]')
                       _G.coincount = _G.coincount + 1
                   end
               elseif coinCfg['All'] == true then
                   if v.Value == 'Coin' or 'Heart' then
                       tgoto(v.Parent.Position)
                       wait(1)
                       print('Attempted Pathing . . . [all]')
                       _G.coincount = _G.coincount + 1
                   end
               end
           end
       end
   end
end

-- initializing

if cfg['Use Webhook'] == true then
   whsend(cfg['Webhook link'], '**[Coin Autofarm ran] - Username : ' .. game.Players.LocalPlayer.Name .. '**')
end

-- coroutine nonsense :3

coroutine.resume(coroutine.create(webhookAlert)) coroutine.resume(coroutine.create(antiafk))

-- love pcalls (sorry)

pcall(function()
   while wait(cfg['Check rate']) do
       pcall(function()
           cc(check())
       end)
   end
end)