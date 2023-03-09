shared.Enabled = true

local RE = game:GetService("Players").LocalPlayer.Character.Scripts.PlayerSetup.ServerSideSetup.DailyLogin.ClaimEvent

while shared.Enabled do
   task.wait()
   RE:FireServer("BasePart")
end