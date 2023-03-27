-- REJOIN THE GAME AFTER EXECUTING
local args = {
   [1] = 1e+18,
   [2] = 3333333333.9679892797385737,
   [3] = true
}

workspace.Signaling.ClientToServer.StrengthLevelChanged:FireServer(unpack(args))