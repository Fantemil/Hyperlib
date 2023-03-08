if game.PlaceId ~= 11169441681 then
 return
end
repeat
 wait()
until game.PlaceId == 11169441681

local longanswers = {
 {
  "Name an anime",
  "one piece",
 },
 {
  "Name a holiday",
  "thanksgiving",
 },
 {
  "Name a flower",
  "sunflower",
 },
 {
  "Name a popular fast food chain",
  "burger king",
 },
 {
  "Name a cake",
  "chocolate",
 },
 {
  "Name a type of cheese",
  "mozzarella",
 },
 {
  "Name a kitchen appliance",
  "dishwasher",
 },
 {
  "What is one ice cream topping?",
  "chocolate",
 },
 {
  "Name a breakfast item",
  "pancake",
 },
 {
  "Name an anime",
  "Dragon Ball Z",
 },
 {
  "What is one pizza topping",
  "pepperoni",
 },
 {
  "Name a day of the week",
  "saturday",
 },
}

while wait() do
 pcall(function()
  local chosen = longanswers[math.random(1, #longanswers)]
  local question, answer = chosen[1], chosen[2]

  game:GetService("ReplicatedStorage").AnswerFunction:InvokeServer(answer, question)
 end)
end