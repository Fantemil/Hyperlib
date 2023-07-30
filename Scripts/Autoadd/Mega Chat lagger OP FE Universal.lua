if not game:IsLoaded() then
    game.Loaded:wait()
end

local Players = game:GetService("Players")

local Player = Players.LocalPlayer
local PlayerGui = Player.PlayerGui

local Chat = PlayerGui:FindFirstChild("Chat") 
local MessageDisplay = Chat and Chat:FindFirstChild("Frame_MessageLogDisplay", true)
local Scroller = MessageDisplay and MessageDisplay:FindFirstChild("Scroller")
local Gsub = string.gsub
local Lower = string.lower

if not Scroller then return end

for _, x in ipairs(Scroller:GetChildren()) do
    local MessageTextLabel = x:FindFirstChildWhichIsA("TextLabel")

    if MessageTextLabel then
        local Message = Gsub(MessageTextLabel.Text, "^%s+", "")

        if Message:match(" ") then
            x:Destroy()
        end
    end
end

local ChatAdded
ChatAdded = Scroller.ChildAdded:Connect(function(x)
    local MessageTextLabel = x:FindFirstChildWhichIsA("TextLabel")
    local SenderTextButton = MessageTextLabel and MessageTextLabel:FindFirstChildWhichIsA("TextButton")
    if MessageTextLabel and SenderTextButton then
        repeat task.wait() until not MessageTextLabel.Text:match("_+")

        local Message = Gsub(MessageTextLabel.Text, "^%s+", "")
        local Sender = Gsub(SenderTextButton.Text, "[%[%]:]", "")

        if Players:FindFirstChild(Sender) then
            Sender = Players:FindFirstChild(Sender)
        else
            for _, x in ipairs(Players:GetPlayers()) do
                if Sender == x.DisplayName then
                    Sender = x
                end
            end
        end

        if type(Sender) == "string" then return end

        if Message:match(" ") then
            x:Destroy()
        end
    end
end)

while true do
    local Message = "⛓" 
    local Unicode = " "
    Message = Message .. Unicode:rep(200 - #Message)
    
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local SayMessageRequest = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)
    
    if SayMessageRequest then
        for i = 1, 4 do
            SayMessageRequest:FireServer(Message, "All")
        end
    end
    task.wait(15.5)
    end