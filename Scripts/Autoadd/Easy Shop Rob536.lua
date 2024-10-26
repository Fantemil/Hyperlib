local Active = true

local List = {
  [1]= "ShopKeeper1",
  [2]= "ShopKeeper2",
  [3]="ShopKeeper3",
  [4]= "ShopKeeper4",
  [5]= "ShopKeeper5",
  [6]=  "ShopKeeper6",
  [7]= "ShopKeepe7",
}

local function tap()
  for i=0,500 do
    local args = {
      [1] = "Input",
      [2] = "Tap"
    }
    game:GetService("Players").LocalPlayer.PlayerGui.ShopRobberyUI.ShopRobberyEvent:FireServer(unpack(args))
    wait()
  end
end

local MainFolder = game.Workspace.CriminalJobs
local chara = game.Players.LocalPlayer.Character.HumanoidRootPart

local function RobShop(Hks)
  local Choosed = MainFolder:FindFirstChild(Hks)
    if Choosed then
      for i, KK in Choosed:GetDescendants() do
        if KK.name == "HumanoidRootPart" then
      chara.CFrame = CFrame.new(KK.CFrame.Position)
        end
      end
      wait(0.4)
      for i, BB in Choosed:GetDescendants() do
        if BB:IsA("ProximityPrompt") then
          fireproximityprompt(BB)
          wait(0.3)
          tap()
        end
      end
    end
end



local Screen = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
Screen.ResetOnSpawn = false
local Button = Instance.new("TextButton", Screen)
Button.Size = UDim2.new(0, 70, 0, 70)
Button.Active = true
Button.Draggable = true
Button.Text = "ROB RANDOM"
Button.TextScaled = true
Button.Transparency = 0.4
Button.Position = UDim2.new(0, 500, 0, 80)
Button.MouseButton1Click:Connect(function()
  local Rand = math.random(1, 7)
  print(List[Rand])
  RobShop(List[Rand])
end)