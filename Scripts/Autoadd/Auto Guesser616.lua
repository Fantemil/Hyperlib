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
i += 1
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
nextPiece ..= " [end]"
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
parts[i-1] ^= parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
end
i -= 1
end
i = 1
while i <= #parts do
if parts[i] == "*" then
parts[i-1] *= parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
elseif parts[i] == "/" then
parts[i-1] /= parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
elseif parts[i] == "%" then
parts[i-1] %= parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
else
i += 1
end
end
i = 1
while i <= #parts do
if parts[i] == "+" then
parts[i-1] += parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
elseif parts[i] == "-" then
parts[i-1] -= parts[i+1]
table.remove(parts, i+1)
table.remove(parts, i)
else
i += 1
end
end

return parts[1], expression
end
end

local GetDictionaryLength; do
function GetDictionaryLength(dictionary)
local length = 0
for key, value in pairs(dictionary) do
length += 1
end
return length
end
end

local OnHack; do
local SubmitSolution = Services:WaitForChild("SubmitSolution")
function OnHack(expressions, letters, answers, objectId)
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
if allowSubmit then
SubmitSolution:FireServer(objectId, generatedNumbers)
end
end
end

local HackReceiver = LocalPlayer.Character:WaitForChild("@H")
HackReceiver.OnClientEvent:Connect(OnHack)