--[[
Game Link: https://www.roblox.com/games/9926433554/Blast-Mining-Simulator
Made By: Valco
Discord: https://dsc.gg/grimcity
]]--
--[[ Copyright © 2022 Grims Community™ ]]--

--[[
Copyright © 2022 Grims Community™

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
]]--


local plr = game:GetService("Players").LocalPlayer

getgenv().AutoFarm = true

function BuyablesLeft()
    local Buyables = {}
     local PlayersPlot = game:GetService("ReplicatedStorage").Events.FetchPlayersPlot:InvokeServer()
     for _,v in pairs(PlayersPlot.Grid:GetChildren()) do
         if v:FindFirstChild("BuyableFence") ~= nil then
             table.insert(Buyables, v)
         end
     end
     return {Amount = #Buyables, Buyables = Buyables}
end

while wait() do
    if getgenv().AutoFarm == true then
          local PlayersPlot = game:GetService("ReplicatedStorage").Events.FetchPlayersPlot:InvokeServer()
               game:GetService("ReplicatedStorage").Events.Recent.AxeEvent:FireServer({}, -(10000000000 * (plr.PlayerData.Rebirths.Value + 1) * 1000))
          repeat
              wait()
              if BuyablesLeft().Amount == 0 then 
               game:GetService("ReplicatedStorage").Events.CommitRebirth:InvokeServer()
               wait()
               game:GetService("ReplicatedStorage").Events.Recent.AxeEvent:FireServer({}, -(10000000000 * (plr.PlayerData.Rebirths.Value + 1) * 1000))
              end
              for _,v in pairs(BuyablesLeft().Buyables) do
                  if getgenv().AutoFarm == true then
                    
                    firetouchinterest(plr.Character.HumanoidRootPart, v.BuyableFence:WaitForChild("HitPart"), 0)
                
                  end
              end
          until getgenv().AutoFarm == false
       else
           break
    end
end

local vu = game:GetService("VirtualUser")
 game:GetService("Players").LocalPlayer.Idled:connect(function()
  vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  wait(1)
  vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
 end)