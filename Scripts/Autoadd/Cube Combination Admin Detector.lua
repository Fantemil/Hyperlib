-- ultra, Cube Combination Admin Detecter Script

-- Description:
--   Checks if an admin is in the server, good to prevent being banned.
--  ONLY RUN THIS SCRIPT ONCE, IT WILL STAY CHECKING THE GAME.
--  Press plus (+) to disable script.

-- predifined vars
-- includes Owner, Developer, and Tester roles.
local adminDictionary = {
 "IzukiIoki",
 "icytality",
 "QuestonusV2",
 "enthanogamer300_real", -- bro types so slow lol
 "OyuDays",
 "zygardeonyv3",
 "TihonPasta",
 "bjeffo72",
 "8787progamer",
 "Paladlnum",
 "cxcxzxcdcdcvvsdf", -- fuck urself capybara gay discord mod
 "Quertonus",
 "rhythmy3",
 "XxSpiritDuoxX",
 "sanicyour3",
 "cercen24",
 "polandwastakenlol",
 "zone_vd"  
}
local uis = game:GetService("UserInputService")
local lplr = game.Players.LocalPlayer
local char = lplr.Character
local hum = char.HumanoidRootPart
local disabled = false
local inServer = false

-- display drawing
local text = Drawing.new("Text")
text.Text = "ADMIN IN SERVER"
text.Font = 1
text.Size = 42
text.Color = Color3.new(255, 0, 0)
text.Center = true
text.Outline = true
text.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 100)
text.Visible = false
local function display(username)
 if inServer then
  while game.Players:FindFirstChild(username,1) do
   task.wait(0.1)
   text.Text = "ADMIN IN SERVER : " .. username
   text.Visible = true
  end
  text.Visible = false
 else
  text.Visible = false
 end
end

-- disable script
uis.InputBegan:Connect(function(input, x)
 if x then return end
 if input.KeyCode == Enum.KeyCode.Plus then
  disabled = true
  text.Visible = false
  text:Remove()
  inServer = false
 end
end)

-- checker function
local function checkIfAdmin(username)
 for i,v in pairs(adminDictionary) do
  if username == v then
   inServer = true
   display(username)
  end
 end
end

-- main function
local function Main()
 while not disabled do
  task.wait(1)
  for i,v in ipairs(game.Players:GetPlayers()) do
   checkIfAdmin(v.Name)
  end
 end
end
Main()