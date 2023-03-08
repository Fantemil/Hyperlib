while wait() do
game:GetService("ReplicatedStorage").Events.GetMemesFromServer:InvokeServer()
game:GetService("ReplicatedStorage").Events.UploadCurrentMemes:FireServer()
end