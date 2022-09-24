local delay = 0.07 -- anything lower breaks i think

local mapModule = require(game:GetService("Players").LocalPlayer.PlayerScripts.GameClient.MapGenModule)
local char = workspace:FindFirstChild(game.Players.LocalPlayer.Name)

local indicator = Drawing.new("Text")
indicator.Position = Vector2.new(25,500)
indicator.Size = 13
indicator.Font = 2
indicator.Visible = true
indicator.Outline = true
indicator.Color = Color3.new(1,1,1)

while wait(delay) do
   if game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.E) then
       local next = debug.getupvalues(mapModule.GetCurrentStair)[1][2]
       local dir = next.Position.Z - char.HumanoidRootPart.Position.Z
       if dir < 0 then
           mouse2click()
       else
           mouse1click()
       end
       indicator.Text = "stair game hax\nstate -> on\ndir = "..(dir < 0 and "right" or "left")
   else
       indicator.Text = "stair game hax\nstate -> off\ndir = none"
   end
end