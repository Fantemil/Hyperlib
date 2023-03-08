-- Put on Auto Execute

repeat wait() until game:IsLoaded()
local timeInfo = os.date("*t")
local startat = (timeInfo.hour .. ":" .. timeInfo.min .. ":".. timeInfo.sec)
rconsoleprint("________________ [ New Round ] ________________ \n")
rconsoleprint(" Start At : "..tostring(startat).."\n")
local oldst = game:GetService("Players").LocalPlayer:WaitForChild("leaderstats"):WaitForChild("ðWins").Value
rconsoleprint(" Start Win : "..tostring(oldst).."\n")
repeat wait()
             for _, v in pairs(game.Workspace:GetDescendants()) do
                  if v:IsA("TouchTransmitter") or v:IsA("TouchInterest") then
                      wait()
                      firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart or game.Players.LocalPlayer.Character.Torso, v:FindFirstAncestorWhichIsA("Part"),0)
                  end
             end
             a = game:GetService("Players").LocalPlayer.leaderstats["ðWins"].Value
                 if game:GetService("Players").LocalPlayer.leaderstats["ðWins"].Value == 0 then
                 rconsoleprint("Error ! ! ! ! \n")
                 game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
             end
             until a-oldst > 10
wait (.9)
rconsoleprint("_________ [ Stats ] ___________ \n")
rconsoleprint(" Current Win : "..tostring(game:GetService("Players").LocalPlayer.leaderstats["ðWins"].Value).." \n")
rconsoleprint(" Profit"..tostring(" +"..tostring(game:GetService("Players").LocalPlayer.leaderstats["ðWins"].Value-oldst)))
local timeInfo = os.date("*t")
rconsolename("Total Wins : "..tostring(game:GetService("Players").LocalPlayer.leaderstats["ðWins"].Value).." Credit BunnyNwy#1059")
rconsoleprint("\n End At : "..tostring((timeInfo.hour .. ":" .. timeInfo.min .. ":".. timeInfo.sec)).."\n")
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)