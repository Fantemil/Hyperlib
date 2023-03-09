getgenv().AutoWeights = false;


function WeightAuto()
  while AutoWeights == true do
      game:GetService("ReplicatedStorage").UseWeight:FireServer()
      wait(0.5)
  end
end


--sell
function sell(GameCPOS)
  local sellplace = game.Players.LocalPlayer
  sellplace.Character.HumanoidRootPart.CFrame = GameCPOS
end


--no no touch for kill bricks
function nonotouch()
  for i,v in pairs (workspace:GetDescendants()) do
  if v.Name == "OutsideBank" then
  v.CanTouch = false
  end
  end
end


--THANK YOU LOTS AIKA,WALLY FOR UI LIB

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Collecting Shit") -- Creates the window

local b = w:CreateFolder("Main Functions") -- Creates the folder(U will put here your buttons,etc)

b:DestroyGui()

b:Toggle("AutoWeights",function(bool)
   getgenv().AutoWeights = bool
   print(shared.toggle)
   if bool then
       WeightAuto()
   end
end)

b:Button("Sell",function()
   sell(game:GetService("Workspace").SellPart.CFrame)
end)

b:Button("No Harm for bank",function()
   nonotouch()
end)