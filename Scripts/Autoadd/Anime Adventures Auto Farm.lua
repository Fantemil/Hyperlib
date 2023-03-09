 for i, v in next, workspace[game.Players.LocalPlayer.Name]["_pets_folder"]:GetChildren() do
                        if v:IsA("Model") then
                            setclipboard(v.Name)
                        end
                end