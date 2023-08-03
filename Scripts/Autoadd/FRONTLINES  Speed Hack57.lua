syn.run_on_actor(getactors()[1], [[
    _G.speedMultiplier = 2 --Speed Multiplier

    local globals = getrenv()._G.globals
    assert(globals, "Unable to get globals")
    game:GetService("RunService").RenderStepped:Connect(function()
        globals.fpv_sol_multipliers.movement = _G.speedMultiplier
    end)
]])

--mopsfl#4864