repeat
    wait()
until game:IsLoaded()
wait()

if getconnections then
    for _, v in next, getconnections(game:GetService("Players").LocalPlayer.Idled) do
        v:Disable()
    end
end