--[[
NOTE : Created by renbex
]]

local Malicious = "iRep_childrenHard"

if game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents") then
    for i = 1, 500 do
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Malicious,
        "All")
        task.wait(1.4)
    end
else
    for i = 1, 500 do
        game:GetService("TextChatService"):FindFirstChild("TextChannels").RBXGeneral:SendAsync(Malicious)
        task.wait(1.4)
    end
end
