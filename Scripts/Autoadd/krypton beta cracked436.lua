repeat wait() until game.IsLoaded
local mt = getrawmetatable(game)
setreadonly(mt,false)
local old = mt.__namecall


mt.__namecall = newcclosure(function(self,...)
   local meth = getnamecallmethod()
   local args = {...}
   if meth == "InvokeServer" or meth == "FireServer" then
       if self.Name:lower():find("kick") then
           return nil
       end
   elseif meth:lower() == "Kick" then
       return nil
   end
   return old(self,...)
end)


local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function

if not protect then
protect = function(f) return f end
end

setreadonly(mt, false)
mt.__namecall = protect(function(self, ...)
local method = getnamecallmethod()
if method == "Kick" then
wait(9e9)
return
end
return old(self, ...)
end)
hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() wait(9e9) end))



local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/PascalHacks/Krypton/main/UI/Krypton.UI.lua"))()
local ISLE = library.new("Krypton", 5013109572)
game.Players.LocalPlayer.PlayerGui:FindFirstChild("Krypton").ResetOnSpawn = false

-- themes
local themes = {
   Background = Color3.fromRGB(24, 24, 24),
   Glow = Color3.fromRGB(0, 0, 0),
   Accent = Color3.fromRGB(10, 10, 10),
   LightContrast = Color3.fromRGB(20, 20, 20),
   DarkContrast = Color3.fromRGB(14, 14, 14),  
   TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local TakeMyScript = ISLE:addPage("Isle Main", 5012544693)
local RussianAvocado = TakeMyScript:addSection("Main")



RussianAvocado:addButton("Teleport to truth",
function()
local PlaceId = 4529195149

game:GetService("TeleportService"):Teleport(PlaceId, game:GetService("Players").LocalPlayer)

end
   )



RussianAvocado:addButton("Respawn when killed",
function()
if game.ReplicatedStorage:FindFirstChild("Return") then
game.ReplicatedStorage.Return:Destroy()
end

local Run


       game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
       character:WaitForChild("Humanoid").Died:Connect(function()



           Run = game.RunService.RenderStepped:Connect(function()
       game:GetService("TeleportService"):Teleport(5202724034)
       if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Return") then
           game.Players.LocalPlayer.PlayerGui:FindFirstChild("Return"):Destroy()
           end

 

       end)
   wait(3)
   Run:Disconnect()

   end)
end)

local Run1
local Connection
Connection = game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()

           Run1 = game.RunService.RenderStepped:Connect(function()
       game:GetService("TeleportService"):Teleport(5202724034)
       if game.Players.LocalPlayer.PlayerGui:FindFirstChild("Return") then
           game.Players.LocalPlayer.PlayerGui:FindFirstChild("Return"):Destroy()
           end
         
         
         
         
end)


   wait(3)
   Run1:Disconnect()
   Connection:Disconnect()


end)





end
   )


RussianAvocado:addButton("Crate hack",
function()
local theId
local ThePart
local Hook; -- Store the old hook to return vital functions later
Hook = hookfunction(getrawmetatable(game).__namecall, newcclosure(function(self, ...) -- Hook Namecall
  local args = {...} -- store argument
  if getnamecallmethod() == "InvokeServer" and self.Name == "BypassRequest"   then
       theId = args[1]
       ThePart = args[2]
  end
  return Hook(self, ...) -- Return the old hook to prevent breaking your entire game
end))
local PlayersService = game:GetService("Players")
--
local LocalPlayer = PlayersService.LocalPlayer

local Services = workspace:WaitForChild("Services")
--
local ALLOW_FREEZE = true -- If true makes generating extremely fast but might freeze on hard ones
--
local CharacterPresent, GetNumber, ParseExpression; do -- src: https://gist.githubusercontent.com/Noble-Mushtak/a2eb302003891c85b562/raw/652cbe49d72211309d6c688ced4027959afeffc1/Calculator.lua
function CharacterPresent(str, character)
for i=1, #str do
if string.sub(str, i, i) == character then
return true
end
end
return false
end
function GetNumber(expression)
local validCharacters = "0123456789.-"
local foundDigit = false
local i = 1
local currentCharacter = string.sub(expression, i, i)
while CharacterPresent(validCharacters, currentCharacter) do
if i == 1 then
validCharacters = "0123456789."
end
if currentCharacter == "." then
validCharacters = "0123456789"
end
if CharacterPresent("0123456789", currentCharacter) then
foundDigit = true
end
i = i + 1
if i > #expression then
break
end
currentCharacter = string.sub(expression, i, i)
end
if not foundDigit then
i = 1
end
return tonumber(string.sub(expression, 1, i-1)), string.sub(expression, i, #expression)
end
function ParseExpression(expression, expectEndParentheses)
if type(expression) ~= "string" then
return nil, "Expected string as argument #1"
end
expression = string.gsub(expression, "%s+", "")
local expectingExpression = true
local lastExpressionWasParenthetical = false
local operators = "+-/*^%"
local parts = {}
local foundEndParentheses = false
expectEndParentheses = expectEndParentheses or false
while expression ~= "" do
local nextNumber, expressionAfterNumber = GetNumber(expression)
local nextCharacter = string.sub(expression, 1, 1)
local nextPiece = string.sub(expression, 1, 5)
if #expression <= 5 then
nextPiece = nextPiece .." [end]"
end
if expectingExpression then
if nextCharacter == "(" then
local nestedExpressionValue, expressionAfterParentheses = ParseExpression(string.sub(expression, 2, #expression), true)
if nestedExpressionValue == nil then
return nestedExpressionValue, expressionAfterParentheses
end
table.insert(parts, nestedExpressionValue)
expression = expressionAfterParentheses
lastExpressionWasParenthetical = true
else
if nextNumber == nil then
return nil, "Expected number or '(', but found '"..nextPiece.."'"
end
table.insert(parts, nextNumber)
expression = expressionAfterNumber
lastExpressionWasParenthetical = false
end
elseif CharacterPresent(operators, nextCharacter) then
table.insert(parts, nextCharacter)
expression = string.sub(expression, 2, #expression)
elseif nextCharacter == "(" or (lastExpressionWasParenthetical and nextNumber ~= nil) then
table.insert(parts, "*")
elseif nextCharacter == ")" then
if expectEndParentheses then
expression = string.sub(expression, 2, #expression)
foundEndParentheses = true
break
else
return nil, "')' present without matching '(' at '"..nextPiece.."'"
end
else
return nil, "Expected expression, but found '"..nextPiece.."'"
end
expectingExpression = not expectingExpression
end
if expectEndParentheses and not foundEndParentheses then
return nil, "Expression unexpectedly ended ('(' present without matching ')')"
end
if expectingExpression then
return nil, "Expression unexpectedly ended"
end
local i = #parts
while i >= 1 do
if parts[i] == "^" then
parts[i-1] = parts[i-1] ^ parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
end
i = i - 1
end
i = 1
while i <= #parts do
if parts[i] == "*" then
parts[i-1] = parts[i-1]*parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
elseif parts[i] == "/" then
parts[i-1] = parts[i-1]/parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
elseif parts[i] == "%" then
parts[i-1] = parts[i-1]%parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
else
i = i+ 1
end
end
i = 1
while i <= #parts do
if parts[i] == "+" then
parts[i-1] = parts[i-1]+parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
elseif parts[i] == "-" then
parts[i-1] =parts[i-1]- parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
else
i = i + 1
end
end

return parts[1], expression
end
end

local GetDictionaryLength; do
function GetDictionaryLength(dictionary)
local length = 0
for key, value in pairs(dictionary) do
length =length + 1
end
return length
end
end

local OnHack; do
local SubmitSolution = Services:WaitForChild("SubmitSolution")
function OnHack(expressions, letters, answers, er,objectId,Place,sea)
local results = {}
local generatedNumbers = {}
local lastGeneratedNumbers
local allowSubmit = true
for index, expression in ipairs(expressions) do
local correctAnswer = tonumber(answers[index])
local result, errorMessage
repeat
local expression = expression
if lastGeneratedNumbers then
generatedNumbers = lastGeneratedNumbers
elseif GetDictionaryLength(generatedNumbers) == 0 then
for index, letter in ipairs(letters) do
generatedNumbers[letter] = math.random(0, 9)
end
end
for letter, value in pairs(generatedNumbers) do
expression = string.gsub(expression, letter, value)
end
result, errorMessage = ParseExpression(expression)
if tonumber(result) ~= correctAnswer then
if lastGeneratedNumbers == generatedNumbers then
allowSubmit = false
task.wait(0.0001)
task.spawn(OnHack, expressions, letters, answers, objectId)
break
end
table.clear(generatedNumbers)
end
if not ALLOW_FREEZE then
task.wait()
end
until tonumber(result) == correctAnswer
lastGeneratedNumbers = generatedNumbers
end
if allowSubmit   then









SubmitSolution:FireServer(theId, generatedNumbers,ThePart)




table.clear(generatedNumbers)
if parts then
table.remove(parts, i+1)
table.remove(parts, i)
end
end
end
end


local HackReceiver = LocalPlayer.Character:FindFirstChild("@H")
HackReceiver.OnClientEvent:Connect(OnHack)
end
   )

local InfStorage = false
RussianAvocado:addButton("Inf Storage",
function()
InfStorage = true

 
 local yes =  Instance.new("BoolValue")
 yes:GetPropertyChangedSignal("Value"):Connect(function()
   if yes.Value == true then
       for i,v in pairs(game.Players.LocalPlayer:FindFirstChildOfClass("Backpack"):GetChildren()) do
        v.Parent = game.Players.LocalPlayer.Character
   end
   wait(0.5)
   for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
   if v:IsA("Tool") then
       v.Parent = game.Players.LocalPlayer.Backpack
   end
end
   end
end)
 
  local Hook; -- Store the old hook to return vital functions later
Hook = hookfunction(getrawmetatable(game).__namecall, newcclosure(function(self, ...) -- Hook Namecall
  local args = {...} -- store argument
  if getnamecallmethod() == "InvokeServer" and self.Name == "PickupTool"   then
     yes.Value = true
     yes.Value = false
  end
  return Hook(self, ...) -- Return the old hook to prevent breaking your entire game
end))

end
)









RussianAvocado:addButton("Get All Files",
function()
   for i,v in pairs(game.Workspace.Map.Ignore.Files:GetDescendants()) do
  if v:IsA('ClickDetector') then
   fireclickdetector(v,1)
  end
end
end

)











RussianAvocado:addButton("Item Esp",
function()

if game.Players.LocalPlayer.Character:FindFirstChild("WisdomArtifact") == nil  then    
local BoolValue = Instance.new("BoolValue")
BoolValue.Value = true
BoolValue.Name = "WisdomArtifact"
BoolValue.Parent = game.Players.LocalPlayer.Character

end


game.Workspace.Threats.ChildAdded:Connect(function()
   if game.Players.LocalPlayer.Character:FindFirstChild("WisdomArtifact") then
       local BoolValue = Instance.new("BoolValue")
       BoolValue.Value = true
       BoolValue.Name = "WisdomArtifact"
       BoolValue.Parent = game.Players.LocalPlayer.Character
   end
end)


game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
   task.wait(1)
   if game.Players.LocalPlayer.Character:FindFirstChild("WisdomArtifact") == nil  then
       local BoolValue = Instance.new("BoolValue")
       BoolValue.Value = true
       BoolValue.Name = "WisdomArtifact"
       BoolValue.Parent = game.Players.LocalPlayer.Character
   end
end)




end

)
ANTITPBYPASS = false


RussianAvocado:addButton('Item Tp',
function()

local KryptonUILib = Instance.new("ScreenGui")
local Scrolling = Instance.new("ScrollingFrame")
local _73 = Instance.new("UIListLayout")
local _8 = Instance.new("UIPadding")
local a = Instance.new("Frame")
local Amongus = Instance.new("TextBox")
local _90 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Frame_2 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local _1 = Instance.new("UICorner")
local UIListLayout_2 = Instance.new("UIListLayout")

--Properties:

KryptonUILib.Name = "KryptonUILib"
KryptonUILib.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
KryptonUILib.ResetOnSpawn = false

Scrolling.Name = "Scrolling"
Scrolling.Parent = KryptonUILib
Scrolling.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Scrolling.BorderSizePixel = 0
Scrolling.Position = UDim2.new(0, 511, 0, 219)
Scrolling.Size = UDim2.new(0.347075045, -150, 0.520395577, -50)
Scrolling.BottomImage = "rbxassetid://7445543667"
Scrolling.CanvasSize = UDim2.new(0, 0, 0, 5000000)
Scrolling.MidImage = "rbxassetid://7445543667"
Scrolling.ScrollBarThickness = 5
Scrolling.TopImage = "rbxassetid://7445543667"

_73.Name = 'eafsxz'

_73.SortOrder = Enum.SortOrder.LayoutOrder
_73.Padding = UDim.new(0, 6)

_8.Name = "  х  8   ݅           п  й             є    ѐ"
_8.Parent = Scrolling
_8.PaddingBottom = UDim.new(0, 15)
_8.PaddingLeft = UDim.new(0, 10)
_8.PaddingRight = UDim.new(0, 10)
_8.PaddingTop = UDim.new(0, 15)

a.Name = "a"
a.Parent = Scrolling
a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
a.BackgroundTransparency = 1.000
a.Size = UDim2.new(1, 0, 1, 0)

Amongus.Name = "Amongus"
Amongus.Parent = a
Amongus.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
Amongus.Position = UDim2.new(0.0195694715, 0, 0.553738356, 0)
Amongus.Size = UDim2.new(1, 0, 0, 30)
Amongus.Font = Enum.Font.SourceSans
Amongus.PlaceholderText = "Search for an Item"
Amongus.Text = ""
Amongus.TextColor3 = Color3.fromRGB(255, 255, 255)
Amongus.TextSize = 18.000

_90.Name = " Н г      Ь  ݅   9    0ѝ Н  ڜ              "
_90.Parent = Amongus

Frame.Parent = a
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Size = UDim2.new(1, 0, 1, 0)

UIListLayout.Parent = Frame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BackgroundTransparency = 1.000
Frame_2.Size = UDim2.new(1, 0, 0, 7)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(14, 14, 14)
TextButton.Size = UDim2.new(1, 0, 0, 40)
TextButton.Visible = false
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Option"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 17.000

_1.Name = "?Нݔ  НڹІ ڝ   1       ݿ                  "
_1.Parent = TextButton

UIListLayout_2.Parent = a
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

-- Scripts:

local function YXVRPG_fake_script() -- a.LocalScript
   local script = Instance.new('LocalScript', a)


   local UserInputService = game:GetService("UserInputService")

       local gui = Scrolling

       local dragging
       local dragInput
       local dragStart
       local startPos

       local function update(input)
           local delta = input.Position - dragStart
           gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
       end

       gui.InputBegan:Connect(function(input)
           if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
               dragging = true
               dragStart = input.Position
               startPos = gui.Position
       
               input.Changed:Connect(function()
                   if input.UserInputState == Enum.UserInputState.End then
                       dragging = false
                   end
               end)
           end
       end)

       gui.InputChanged:Connect(function(input)
           if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
               dragInput = input
           end
       end)

       UserInputService.InputChanged:Connect(function(input)
           if input == dragInput and dragging then
               update(input)
           end
       end)


   game.Workspace.Map.Ignore.Tools.ChildRemoved:Connect(function(Model)
       for i,v in pairs(script.Parent.Frame:GetChildren()) do
           if v:IsA('TextButton') and  v.Text == Model.Name then
               v:Destroy()
           end
       end
   end)

   game.Workspace.Map.Ignore.Tools.ChildAdded:Connect(function(Model)
       local TextButton = script.Parent.Frame.TextButton
       local CloneTextButton = TextButton:Clone()
       CloneTextButton.Parent = script.Parent.Frame
       CloneTextButton.Visible = true
       CloneTextButton.Text = Model.Name
       CloneTextButton.MouseButton1Click:Connect(function()
Connectionerere = game.RunService.RenderStepped:Connect(function()
if Model.Parent ~= nil and InfStorage == false   then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Model.Handle.CFrame

local args = {
   [1] = "",
   [2] = Model.Name
}

workspace.Services.PickupTool:InvokeServer(unpack(args))
else
   if Model.Parent ~= nil and InfStorage == true then
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Model.Handle.CFrame
   local args = {
   [1] = "",
   [2] = Model.Name
}

workspace.Services.PickupTool:InvokeServer(unpack(args))
     
       
   end
end
end)
wait(2)
Connectionerere:Disconnect()



     

end)
   end)


   for i,v in pairs(game.Workspace.Map.Ignore.Tools:GetChildren()) do
       local TextButton = script.Parent.Frame.TextButton
       local CloneTextButton = TextButton:Clone()
       CloneTextButton.Parent = script.Parent.Frame
       CloneTextButton.Visible = true
       CloneTextButton.Text = v.Name
       CloneTextButton.MouseButton1Click:Connect(function()
Connectionerere = game.RunService.RenderStepped:Connect(function()
if v.Parent ~= nil and InfStorage == false   then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame

local args = {
   [1] = "",
   [2] = v.Name
}

workspace.Services.PickupTool:InvokeServer(unpack(args))
else
   if v.Parent ~= nil and InfStorage == true then
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
       local args = {
   [1] = "",
   [2] = v.Name
}

workspace.Services.PickupTool:InvokeServer(unpack(args))
       
    end
end
end)
wait(2)
Connectionerere:Disconnect()



     

end)
   end


   local scroll = script.Parent.Parent.Parent.Scrolling
   local textBox = script.Parent.Amongus

   textBox.Changed:Connect(function()
       local text = textBox.Text:lower()
       if text ~= "" then
           local buttons = scroll:GetDescendants()
           for _, button in pairs(buttons) do
               if button:IsA("TextButton") then
                   local buttonText = button.Text:lower()
                   if string.find(buttonText, text) then
                       button.Visible = true
                   else
                       button.Visible = false
                   end
               end
           end
       else
           local buttons = scroll:GetDescendants()
           for _, button in pairs(buttons) do
               if button:IsA("TextButton") then
                   button.Visible = true
               end
           end
       end
   end)
end

coroutine.wrap(YXVRPG_fake_script)()
end





)





   RussianAvocado:addButton("Full Bright and Player esp",
   function()
   if game.Players.LocalPlayer.Character:FindFirstChild("EVG") == nil  then  
local Accessory = Instance.new("Accessory")
Accessory.Name = "EVG"
Accessory.Parent = game.Players.LocalPlayer.Character


end

game.Workspace.Threats.ChildAdded:Connect(function()
       if game.Players.LocalPlayer.Character:FindFirstChild("EVG") then
       game.Players.LocalPlayer.Character:FindFirstChild("EVG"):Destroy()
       local Accessory = Instance.new("Accessory")
       Accessory.Name = "EVG"
       Accessory.Parent = game.Players.LocalPlayer.Character
   end
end)



game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
   task.wait(1)
   if game.Players.LocalPlayer.Character:FindFirstChild("EVG") == nil  then  
       local Accessory = Instance.new("Accessory")
       Accessory.Name = "EVG"
       Accessory.Parent = game.Players.LocalPlayer.Character
   end
end)




end
)

RussianAvocado:addButton("Random TP" ,
function()
for i,v in pairs(game.Workspace.SpecialRegions:GetChildren()) do
   if v:IsA("Part") or v:IsA("BasePart") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v ,0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v ,1)
end
end
end
)


RussianAvocado:addButton("Remove UnderWater Blur" ,
function()
game.Lighting.Blur.Enabled = false
end
)


RussianAvocado:addButton("Open docks door" ,
function()
fireclickdetector(game.Workspace.Map.Main.Gate.Buttons.Open.ClickDetector)
end
)






RussianAvocado:addButton("Mercenary log" ,
function()
game.Workspace.AIHunter.Location:GetPropertyChangedSignal("Value"):Connect(function()

   _G.Message = Instance.new("Color3Value")
   _G.Message.Value = Color3.fromRGB(255,255,0)
   _G.Message.Name = "Mercs heading to: " ..tostring(game.Workspace.AIHunter.Location.Value)
       _G.Message.Parent = game.Players.LocalPlayer.Character["@Alerts"]
end)

game.Workspace.AIHunter.Leader:GetPropertyChangedSignal("Value"):Connect(function()


   _G.Message = Instance.new("Color3Value")
   _G.Message.Value = Color3.fromRGB(255,255,0)
   _G.Message.Name = "Merc leader is: "  ..tostring(game.Workspace.AIHunter.Leader.Value)
       _G.Message.Parent = game.Players.LocalPlayer.Character["@Alerts"]
end)
game.Workspace.AIHunter.Radio.ChildAdded:Connect(function()
   local Merc = game.Workspace.AIHunter.Radio:GetChildren()

   for i,v in pairs(Merc) do

           _G.Message = Instance.new("Color3Value")
           _G.Message.Value = Color3.fromRGB(255,255,0)
           _G.Message.Name = "Mercenary:  " ..tostring(v.Name).. " said: " .. tostring(v.Value)
           _G.Message.Parent = game.Players.LocalPlayer.Character["@Alerts"]
       end

end)

end
)




RussianAvocado:addButton("Open ancient gate" ,
function()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game.Workspace.Map.Main.TheGlassDoorPuzzle.GreenPlate.Base ,0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game.Workspace.Map.Main.TheGlassDoorPuzzle.BluePlate.Base ,0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game.Workspace.Map.Main.TheGlassDoorPuzzle.RedPlate.Base ,0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game.Workspace.Map.Main.TheGlassDoorPuzzle.WhitePlate.Base ,0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,game.Workspace.Map.Main.TheGlassDoorPuzzle.YellowPlate.Base ,0)
end
)


RussianAvocado:addButton("No Night" ,
function()
for i,v in pairs(game.Players.LocalPlayer.PlayerScripts:GetDescendants()) do
if v:IsA("Animation")    then
   v.AnimationId = "3"
   end
end
 
game.Players.LocalPlayer.Character.Cutscene:GetPropertyChangedSignal("Value"):Connect(function()
   if game.Players.LocalPlayer.Character.Cutscene.Value == true then
       game.Players.LocalPlayer.Character.Cutscene.Value = false
       end
end)
game.Players.LocalPlayer.Character.SleepMode:GetPropertyChangedSignal("Value"):Connect(function()
   if game.Players.LocalPlayer.Character.SleepMode.Value == true then
       game.Players.LocalPlayer.Character.SleepMode.Value = false
       end
end)
game.Workspace.GameState.NightCutscene:GetPropertyChangedSignal("Value"):Connect(function()
   if game.Workspace.GameState.NightCutscene.Value == true then
       game.Workspace.GameState.NightCutscene.Value = false
       
   end
end)

game.Workspace.GameState.Night:GetPropertyChangedSignal("Value"):Connect(function()
   if game.Workspace.GameState.Night.Value == true then
       game.Workspace.GameState.Night.Value = false
       
       end
   end)

end
)

RussianAvocado:addButton("Remove all trees" ,
function()
   for i, Trees in pairs(game.Workspace.Map.Ignore.NoCollideTrees:GetDescendants()) do
   if Trees:IsA("Model") then
   Trees:Destroy()
     
      end
   end
end
)

RussianAvocado:addSlider("WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 100,function(value)
_G.Speed = value
    game.RunService.RenderStepped:Connect(function()
   if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Humanoid  then
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = _G.Speed
end
end)
end

)

RussianAvocado:addSlider("JumpPower",game.Players.LocalPlayer.Character.Humanoid.JumpPower, 16, 500,function(value)
_G.JumpPower = value
    game.RunService.RenderStepped:Connect(function()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.Humanoid then
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = _G.JumpPower
end
end)
end

)

RussianAvocado:addSlider("MaxSlopeAngle (easier to climb)", game.Players.LocalPlayer.Character.Humanoid.MaxSlopeAngle, 0, 89.9, function(value)
_G.MaxSlope = value
game.RunService.Heartbeat:Connect(function()
   game.Players.LocalPlayer.Character.Humanoid.MaxSlopeAngle = value

end)
end

)

RussianAvocado:addTextbox("Orbital Strike","Player Name",function(OrbitalText,pressed)
if game.Players:FindFirstChild(OrbitalText) and pressed  then
   local Orbital31 = game.Players:FindFirstChild(OrbitalText)
   
   local args = {
   [1] = Orbital31.Name
}

workspace.Services:FindFirstChild("@Laser"):FireServer(unpack(args))
end
end
)
RussianAvocado:addButton("Disable orbital",
function()
     
     local args = {
   [1] = game.Workspace.Threats["Junction Turret"].Humanoid
}


workspace.Services:FindFirstChild("@Laser"):FireServer(unpack(args))

end

)





_G.Message = Instance.new("Color3Value")
_G.Message.Value = Color3.fromRGB(255,255,0)
_G.Message.Name = "Welcome to krypton Remember this is still in Beta enjoy :) discord.gg/ajBfhGKyaJ"
_G.Message.Parent = game.Players.LocalPlayer.Character["@Alerts"]




local TakeMyScripttwewe31 = ISLE:addPage("Player tp", 5012544693)
local RussianAvocado3314 = TakeMyScripttwewe31:addSection("Players")

local Players = game.Players:GetChildren()
for i,e in pairs(Players) do
RussianAvocado3314:addButton(e.Name,
function()      
   if e.Character and ANTITPBYPASS == true  then
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = e.Character.HumanoidRootPart.CFrame
       else
       if e.Character and ANTITPBYPASS == false then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = e.Character.HumanoidRootPart.CFrame
       end
   end
end
)
end