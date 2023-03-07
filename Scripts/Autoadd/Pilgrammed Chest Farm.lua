pcall(

    function()
        local function renderSteppedWait(waitTime)
            local now = os.clock()
            while true do
                if (os.clock() - now) >= waitTime then
                    break
                end
                renderStepped:Wait()
            end
        end
    end
)

_G.RenderSteppedToggle = true
game:GetService("RunService").Stepped:connect(
    function()
        if _G.RenderSteppedToggle then
            pcall(
                function()
                    for i, v in pairs(game:GetService("Workspace").Chests:GetDescendants()) do
                        if v.Name == "Root" then
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        end
                    end
                end
            )
            renderStepped:Wait(1)
        end
    end
)

game:GetService("RunService").Stepped:connect(
    function()
        if _G.RenderSteppedToggle then
            pcall(
                function()
                    game:service("VirtualInputManager"):SendKeyEvent(true, "G", false, game)
                    
                end
            )
        end
    end
)