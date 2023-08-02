_G.autoEscape = true
while _G.autoEscape == true do
local args = {
    [1] = "escapeclick"
}

game:GetService("Players").LocalPlayer.Character.MainLocal.RemoteEvent:FireServer(unpack(args))
wait()
end