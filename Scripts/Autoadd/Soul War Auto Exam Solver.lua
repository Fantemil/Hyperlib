local player = game:GetService("Players").LocalPlayer
local examGUI = player.PlayerGui.Exam
local equation = examGUI.Paper.Equation

while true do
if examGUI.Enabled then
local equationText = equation.Text
local operands = {}
for operand in string.gmatch(equationText, "%d+") do
table.insert(operands, tonumber(operand))
end
local operator = string.match(equationText, "[%+%-%%/]")
local result = 0
if operator == "+" then
result = operands[1] + operands[2]
elseif operator == "-" then
result = operands[1] - operands[2]
elseif operator == "" then
result = operands[1] * operands[2]
elseif operator == "/" then
result = operands[1] / operands[2]
end
print("da answer is: " .. result)
end
wait(5)
end