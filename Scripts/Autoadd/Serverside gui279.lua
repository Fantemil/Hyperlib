> local function updateLogo()
    -- Eliminar elementos existentes
    local loadingScreen = game.CoreGui:FindFirstChild("LoadingGui")
    if loadingScreen then
        loadingScreen:Destroy()
    end

    local deltaIcon = game.CoreGui:FindFirstChild("CodexIcon")
    if deltaIcon then
        deltaIcon:Destroy()
    end

    local delta = game.CoreGui:FindFirstChild("Codex")
    if delta then
        delta:Destroy()
    end

    local deltaCartel = game.CoreGui:FindFirstChild("CodexCartel")
    if deltaCartel then
        deltaCartel:Destroy()
    end

    -- Crear nueva pantalla de carga
local msg = Instance.new("Message")
msg.Text = "Checking whitelist..."
msg.Parent = game.Workspace

wait(5)
msg:Destroy()

local msg2 = Instance.new("Message")
msg2.Text = "Ready! Have fun!"
msg2.Parent = game.Workspace

wait(3)
msg2:Destroy()
loadstring(game:HttpGet("https://raw.githubusercontent.com/C00lHamoot/Project-Ligma-/e34d89ffe62d737ca615aee3017affa0dad30efc/V3"))()
local hint = Instance.new("Hint")
hint.Text = "Project Ligma on dev. Prob some functions, scripts dont be fe."
hint.Parent = game.Workspace

wait(5)
hint:Destroy()
end

-- Ejecutar la funciÃÂ³n para actualizar el logo y ejecutar cÃÂ³digo adicional
updateLogo()