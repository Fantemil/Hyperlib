_G.FastMaybe = true
while task.wait() do
    if _G.FastMaybe == true then
        task.spawn(
            function()
                teams = game:GetService("Teams")
                for _, team in ipairs(
                    {
                        teams.black,
                        teams.blue,
                        teams.green,
                        teams.magenta,
                        teams.red,
                        teams.white,
                        teams.yellow
                    }
                ) do
                    workspace.ChangeTeam:FireServer(team)
                end
            end
        )
    else
        teams = game:GetService("Teams")
        for _, team in ipairs(
            {
                teams.black,
                teams.blue,
                teams.green,
                teams.magenta,
                teams.red,
                teams.white,
                teams.yellow
            }
        ) do
            workspace.ChangeTeam:FireServer(team)
        end
    end
end
