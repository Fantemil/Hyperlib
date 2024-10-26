local starterGui = game:GetService("StarterGui")

-- Mostrar notificaciÃ³n solo una vez usando SetCore
local function showNotification()
    starterGui:SetCore("SendNotification", {
        Title = "Aim Viewer GUI Activated",
        Text = "Go to settings to configure the Aim Viewer.",
        Duration = 5, -- DuraciÃ³n de la notificaciÃ³n en segundos
        Button1 = "OK"
    })
end

-- Mostrar el aimviewer repetidamente cada 3 segundos
local function toggleAimViewer()
    showNotification() -- Ejecutar notificaciÃ³n una vez

    while true do
        -- Definir variables dentro del bucle
        local player = game:GetService("Players").LocalPlayer
        local gui = player.PlayerGui.gui
        local aimViewerFrame = gui.Settings.ScrollingFrame.aimviewer

        -- Hacer visible el aimviewer
        aimViewerFrame.Visible = true

        -- Esperar 3 segundos antes de repetir
        task.wait(3)
    end
end

-- Iniciar el loop de visibilidad del aim viewer
toggleAimViewer()
