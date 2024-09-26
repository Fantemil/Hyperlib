getgenv().getplayers = function()
    local players = {}
    for _, x in pairs(game:GetService("Players"):GetPlayers()) do
        players[x.Name] = x
    end
    players["LocalPlayer"] = game:GetService("Players").LocalPlayer
    return players
end

getgenv().getplayer = function(name: string): Player
    return not name and getplayers()["LocalPlayer"] or getplayers()[name]
end

getgenv().runanimation = function(animationId: any, player: Player) -- @.wyv_
    local plr: Player = player or getplayer()
    local humanoid: Humanoid = plr.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://" .. tostring(animationId)
        humanoid:LoadAnimation(animation):Play()
    end
end

getgenv().customprint = function(text: string, properties: table, imageId: rbxasset) --[[ NOT RECOMMENDED ATM
    print(text)
    task.wait(.025)
    local msg = game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI:WaitForChild("MainView").ClientLog[tostring(#game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI.MainView.ClientLog:GetChildren())-1].msg
    for i, x in pairs(properties) do
        msg[i] = x
    end
    if imageId then msg.Parent.image.Image = imageId end
    ]]
end

getgenv().getlocalplayer = function(): Player
    return getplayer()
end

getgenv().join = function(placeID: number, jobID: string)
    game:GetService("TeleportService"):TeleportToPlaceInstance(placeID, jobID, getplayer())
end

getgenv().firesignal = function(instance: Instance, signalName: string, args: any)
    if instance and signalName then
        local signal = instance[signalName]
        if signal and signal:IsA("RBXScriptSignal") then
            for _, connection in ipairs(getconnections(signal)) do
                if args then
                    connection:Fire(args)
                else
                    connection:Fire()
                end
            end
        end
    end
end

getgenv().firetouchinterest = function(part: Instance, touched: boolean)
    firesignal(part, touched and "Touched" or touched == false and "TouchEnded" or "Touched")
end

getgenv().fireproximityprompt = function(prompt: Instance, triggered: boolean, hold: boolean)
    firesignal(prompt, hold and (triggered and "PromptButtonHoldBegan" or "PromptButtonHoldEnded") or (triggered and "Triggered" or triggered == false and "TriggerEnded" or "Triggered"))
end

getgenv().firetouchtransmitter = firetouchinterest
getgenv().playanimation = runanimation
getgenv().joingame, getgenv().joinserver = join, join