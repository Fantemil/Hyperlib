repeat wait() until game:IsLoaded()
if game.PlaceId == (45146873) then
    workspace.SurvivalAnalysis:InvokeServer()

local args = {
    [1] = "SurvivalSolo",
    [2] = 1
}

while wait() do
    workspace.Enter:InvokeServer(unpack(args))
    workspace.BeginSurvivalGame:InvokeServer(unpack(args)) 
end

else
    workspace.SkipWaitVote:InvokeServer()
end