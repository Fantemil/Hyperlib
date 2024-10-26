repeat wait() until game:IsLoaded()






local New_CFrame = workspace.CartRideWorkspace.Objects.CartGiver.Hitbox.CFrame

                    local ts = game:GetService("TweenService")
                    local char = game.Players.LocalPlayer.Character            
                    local part = char.HumanoidRootPart
                    local ti = TweenInfo.new(1,Enum.EasingStyle.Linear)
                    local tp = {CFrame = New_CFrame}
                    ts:Create(part,ti,tp):Play()