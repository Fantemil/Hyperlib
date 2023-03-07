--made by rouxhaver/1+1=2
--makes bubble chat  g a m e r
textcolour = Color3.new(0,0,0)
coroutine.wrap(function()
    while wait() do
        for i = 0,255,10 do
            textcolour = Color3.new(255/255,i/255,0/255)
            wait()
        end
        for i = 255,0,-10 do
            textcolour = Color3.new(i/255,255/255,0/255)
            wait()
        end
        for i = 0,255,10 do
            textcolour = Color3.new(0/255,255/255,i/255)
            wait()
        end
        for i = 255,0,-10 do
            textcolour = Color3.new(0/255,i/255,255/255)
            wait()
        end
        for i = 0,255,10 do
            textcolour = Color3.new(i/255,0/255,255/255)
            wait()
        end
        for i = 255,0,-10 do
            textcolour = Color3.new(255/255,0/255,i/255)
            wait()
        end
    end
end)()

while task.wait() do
    for i,v in pairs(game.CoreGui.BubbleChat:GetDescendants()) do
        if v:IsA("TextLabel") then
            v.TextColor3 = textcolour
        end
    end
    for i,v in pairs(game.CoreGui.BubbleChat:GetDescendants()) do
        if v.Name == "Carat" then
            v:Destroy()
        end
    end
    for i,v in pairs(game.CoreGui.BubbleChat:GetDescendants()) do
        if v:IsA("ImageLabel") then
            v.BackgroundColor3 = Color3.fromRGB(0,0,0)
        end
    end
end