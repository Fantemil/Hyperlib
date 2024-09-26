local Modules = {
    Colors =  {
        ["Green"] = "0,255,0", 
        ["Cyan"] = "33, 161, 163",
        ["White"] = "255,255,255",
		["Pink"] = "255, 102, 153",
    },
    Services = {
        RunService = game:GetService("RunService"),
        CoreGui = game:GetService("CoreGui")
    }
}

Modules.ChangeColor = function() 
    local Loop;
    Loop = Modules.Services.RunService.Heartbeat:Connect(function()
        local success,err = pcall(function()
            for index,label in pairs(Modules.Services.CoreGui:FindFirstChild("DevConsoleMaster"):GetDescendants()) do 
                if label:IsA("TextLabel") then 
                    label.RichText = true 
                end 
            end 
        end)

        if not success then 
            warn(`A error occured {err}`)
            Loop:Disconnect()
        end 
    end)
end

Modules.LoadingBar = function(watermark,color, delay,loadingsymbol)
    delay = delay or 0.1 

    local Text = watermark..tostring(math.random(500,20000))

    print(Text)

    local loadingLabel = nil
    local progress = ""

    repeat task.wait()
        for index,label in pairs(Modules.Services.CoreGui:FindFirstChild("DevConsoleMaster"):GetDescendants()) do 
             if label:IsA("TextLabel") and string.find(label.Text:lower(),Text:lower()) then 
                loadingLabel = label 
				break
            end 
        end 
    until loadingLabel

    local start = os.time()

    for i = 1, 50 do
        progress = progress .. loadingsymbol
        loadingLabel.Text = string.format("<font color='rgb(%s)' size='15'>[%s] [%d%% loaded] %s</font>", Modules.Colors["White"],watermark, i*2, progress)
        task.wait(delay)
    end

    loadingLabel.Text = string.format("<font color='rgb(%s)' size='15'>[%s] Successfully loaded in %ds</font>", Modules.Colors[color],watermark, os.time() - start)
end

Modules.ChangeColor()

Modules.LoadingBar("Your watermark","Green", 0.001,"#")