local function RunAllVoices()
    for _,v in next, game:GetService("ReplicatedStorage").Voices:GetDescendants() do
        if v:IsA("StringValue") then
            game:GetService("ReplicatedStorage").Events.ME:FireServer(unpack({[1] = {[1] = "replicatesound",[2] = v}}))
        end
    end
end
RunAllVoices() -- Obv runs the function