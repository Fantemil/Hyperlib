 local function crearTextoParaJugadores()
    local etiquetas = {}
    local function crearEtiqueta(jugador)
        local etiqueta = Instance.new("BillboardGui")
        etiqueta.Name = "PlayerLabel"
        etiqueta.AlwaysOnTop = true
        etiqueta.Size = UDim2.new(0, 200, 0, 50)  
        etiqueta.StudsOffset = Vector3.new(0, 3, 0)                                                                          vertical
        etiqueta.Parent = jugador.Character:WaitForChild("Head")
        local texto = Instance.new("TextLabel")
        texto.Text = ":red_circle:"  
        texto.BackgroundTransparency = 1transparente
        texto.Size = UDim2.new(1, 0, 1, 0)
        texto.TextSize = 20  -- Ajustar el tamaño del texto
        texto.TextColor3 = Color3.fromRGB(255, 0, 0) 
        texto.Parent = etiqueta
        etiquetas[jugador] = etiqueta
    end
    local function manejarMuerte(jugador)
        wait(5) 
        if jugador and jugador.Parent then
            crearEtiqueta(jugador)
        end
    end
    local function conectarEventos(jugador)
        jugador.CharacterAdded:Connect(function()
            crearEtiqueta(jugador)
        end)
        jugador.CharacterRemoving:Connect(function()
            -- Manejar la muerte del jugador
            manejarMuerte(jugador)
        end)
    end
    local jugadores = game.Players:GetPlayers()
    for _, jugador in pairs(jugadores) do
        if jugador ~= game.Players.LocalPlayer then
            conectarEventos(jugador)
        end
    end
    game.Players.PlayerAdded:Connect(function(nuevoJugador)
        if nuevoJugador ~= game.Players.LocalPlayer then
            conectarEventos(nuevoJugador)
        end
    end)
end
crearTextoParaJugadores()