local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function createLabel(character, text, textColor)
  local billboardGui = Instance.new("BillboardGui")
  billboardGui.Name = "StatusLabel"
  billboardGui.Adornee = character:FindFirstChild("Head")
  billboardGui.Size = UDim2.new(0, 100, 0, 50)
  billboardGui.StudsOffset = Vector3.new(0, 4, 0)
  billboardGui.AlwaysOnTop = true

  local textLabel = Instance.new("TextLabel")
  textLabel.Size = UDim2.new(1, 0, 1, 0)
  textLabel.BackgroundTransparency = 1
  textLabel.Text = text
  textLabel.TextColor3 = textColor
  textLabel.TextScaled = true
  textLabel.Font = Enum.Font.SourceSansBold
  textLabel.Parent = billboardGui

  billboardGui.Parent = character
end

local function checkPlayerForStatus(player)
  local boolFolder = player:FindFirstChild("boolFolder")
  if boolFolder then
    local isSpy = boolFolder:FindFirstChild("isSpy")
    if isSpy and isSpy:IsA("BoolValue") then
      if player.Character and player.Character:FindFirstChild("Head") then
        local existingLabel = player.Character:FindFirstChild("StatusLabel")
        if existingLabel then
          existingLabel:Destroy()
        end

        local chosenMode = ReplicatedStorage.String:FindFirstChild("ChosenMode")
        if chosenMode and chosenMode:IsA("StringValue") then
          if isSpy.Value then
            if chosenMode.Value == "Spy with Word" then
              local spyWord = ReplicatedStorage.String:FindFirstChild("SpyWord")
              if spyWord and spyWord:IsA("StringValue") then
                createLabel(player.Character, spyWord.Value, Color3.new(1, 0, 0))
              else
                warn("SpyWord not found in ReplicatedStorage.String")
              end
            elseif chosenMode.Value == "Wordless Spy" then
              createLabel(player.Character, "No word", Color3.new(1, 0, 0))
            end
          else
            local innocentWord = ReplicatedStorage.String:FindFirstChild("ClueWord")
            if innocentWord and innocentWord:IsA("StringValue") then
              createLabel(player.Character, innocentWord.Value, Color3.new(0, 1, 0))
            else
              warn("ClueWord not found in ReplicatedStorage.String")
            end
          end
        else
          warn("ChosenMode not found in ReplicatedStorage.String")
        end
      end
    end
  end
end

local function checkAllPlayers()
  for _, player in pairs(Players:GetPlayers()) do
    checkPlayerForStatus(player)
  end
end

Players.PlayerAdded:Connect(function(player)
  player.CharacterAdded:Connect(function(character)
    checkPlayerForStatus(player)
  end)
end)

while true do
  checkAllPlayers()
  wait(2)
end
