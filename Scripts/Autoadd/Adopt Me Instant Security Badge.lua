local fsysLoad = require(game.ReplicatedStorage:WaitForChild("Fsys")).load

local clientData = fsysLoad("ClientData")
local routerClient = fsysLoad("RouterClient")
routerClient.get("TradeAPI/BeginQuiz"):FireServer()
wait(.1)
for i,v in pairs(clientData.get("trade_license_quiz_manager").quiz) do
 routerClient.get("TradeAPI/AnswerQuizQuestion"):FireServer(v.answer)
 wait(.1)
end
routerClient.get("TradeAPI/EndQuiz"):FireServer()