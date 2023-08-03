local Workspace = game:GetService("Workspace")
local PlayersService = game:GetService("Players")
--
local LocalPlayer = PlayersService.LocalPlayer

local Services = Workspace:WaitForChild("Services")
--
local ALLOW_FREEZE = true
local ARTIFICIAL_SUBMIT_DELAY = 0 -- (seconds); 60 will take a minute before submitting
--
local GetDictionaryLength, CharacterPresent, GetNumber, ParseExpression; do -- src: https://gist.githubusercontent.com/Noble-Mushtak/a2eb302003891c85b562/raw/652cbe49d72211309d6c688ced4027959afeffc1/Calculator.lua
function GetDictionaryLength(dictionary)
local length = 0
for key, value in pairs(dictionary) do
length = length + 1
end
return length
end
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
nextPiece = nextPiece .. " [end]"
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
parts[i-1] = parts[i-1] * parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
elseif parts[i] == "/" then
parts[i-1] = parts[i-1] / parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
elseif parts[i] == "%" then
parts[i-1] = parts[i-1] % parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
else
i = i + 1
end
end
i = 1
while i <= #parts do
if parts[i] == "+" then
parts[i-1] = parts[i-1] + parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
elseif parts[i] == "-" then
parts[i-1] = parts[i-1] - parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
else
i = i + 1
end
end

return parts[1], expression
end
end

local OnHack; do
local SubmitSolution = Services:WaitForChild("SubmitSolution")

local AllLetters = {"A", "B", "C", "D", "E", "F"}
function OnHack(expressions, usedLetters, answers, hints, objectId, objectCodeName)
local expectedLetters = #usedLetters
local generatedLetters = table.clone(hints)

local lastGeneratedLetters

local canSubmit = true
local canBeOptimized = (expectedLetters - #hints) == 1

local lastGeneratedValue = 0
for index, expression in ipairs(expressions) do
expression = string.gsub(expression, "%s+", "")
--
local expectedAnswer = tonumber(answers[index])

local generatedAnswer
repeat
local currentExpression = expression

if lastGeneratedLetters then
generatedLetters = lastGeneratedLetters
elseif GetDictionaryLength(generatedLetters) ~= expectedLetters then
for _, letter in ipairs(usedLetters) do
if not generatedLetters[letter] then
if canBeOptimized then
generatedLetters[letter] = lastGeneratedValue

lastGeneratedValue = lastGeneratedValue + 1
else
generatedLetters[letter] = math.random(0, 9)
end
end
end
end

for letter, value in pairs(generatedLetters) do
currentExpression = string.gsub(currentExpression, letter, value)
end

generatedAnswer = ParseExpression(currentExpression)

if generatedAnswer ~= expectedAnswer then
-- Generated number is wrong
if lastGeneratedLetters == generatedLetters then
-- It will just spam the remote without this line
canSubmit = false
-- Attempt again
task.spawn(OnHack, expressions, usedLetters, answers, hints, objectId, objectCodeName)
break
end

generatedLetters = table.clone(hints)
end

if not ALLOW_FREEZE then
task.wait()
end
until generatedAnswer == expectedAnswer

lastGeneratedLetters = generatedLetters
end

if canSubmit then
-- Append missing letters
for _, letter in ipairs(AllLetters) do
if not generatedLetters[letter] then
generatedLetters[letter] = 1
end
end

task.delay(ARTIFICIAL_SUBMIT_DELAY, function()
SubmitSolution:FireServer(objectId, generatedLetters, objectCodeName)
end)

lastGeneratedValue = 0
end
end
end

local HackReceiver = LocalPlayer.Character:WaitForChild("@H")
HackReceiver.OnClientEvent:Connect(OnHack)