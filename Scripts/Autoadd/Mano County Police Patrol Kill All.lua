shared.looped = false -- change this if you don't want to loop kill

if game.PlaceId ~= 4793176968 then
    warn("wrong game")
    return
end
function getap(a)for b,c in pairs(a:GetChildren())do if c:IsA("BasePart")then if c.Color==Color3.fromRGB(116,134,157)then return c end end end end;while true do for d,e in pairs(game.Players:GetPlayers())do pcall(function()if e~=game.Players.LocalPlayer then local f={[1]="Fire",[2]=Vector3.new(2048.441650390625,2.9837028980255127,973.9364624023438),[3]=e.Character.Head,[4]="hi there :smirk: --Yunkrys",[5]=Vector3.new(2048.441650390625,2.9837028980255127,973.9364624023438),[6]=Vector3.new(0,1,0),[7]=getap(game:GetService("Players").LocalPlayer.Character["Glock 19"])or nil}for g=1,3 do game:GetService("Players").LocalPlayer.Character:FindFirstChild(""):FireServer(unpack(f))end;wait()local f={[1]="Reload"}game:GetService("Players").LocalPlayer.Character:FindFirstChild(""):FireServer(unpack(f))wait(1)end end)end;if shared.looped==false then break end end