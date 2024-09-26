-- CrÃ©er le ScreenGui pour le GUI
local gui = Instance.new("ScreenGui")
gui.Name = "DraggableGUI"
gui.IgnoreGuiInset = false-- (suite du script prÃ©cÃ©dent)

-- CrÃ©er le bouton pour fermer le GUI (la croix)
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(1, -30, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 192, 203)  -- Rouge clair
closeButton.BorderSizePixel = 2
closeButton.BorderColor3 = Color3.new(0, 0, 0)  -- Bordure noire
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)  -- Texte blanc
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()  -- Fermer le GUI en dÃ©truisant l'objet ScreenGui
end)
gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- CrÃ©er un cadre pour le GUI
local frame = Instance.new("Frame")
frame.Name = "DraggableFrame"
frame.Size = UDim2.new(0, 400, 0, 200)
frame.Position = UDim2.new(0.5, -200, 0.5, -100)
frame.BackgroundColor3 = Color3.new(1, 0, 0)
frame.BorderSizePixel = 2
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.Parent = gui

-- Ajouter le texte en haut du cadre
local guiTitle = Instance.new("TextLabel")
guiTitle.Name = "GUITitle"
guiTitle.Size = UDim2.new(1, 0, 0, 20)
guiTitle.Position = UDim2.new(0, 0, 0, 0)
guiTitle.BackgroundColor3 = Color3.new(0, 0, 0)
guiTitle.TextColor3 = Color3.new(1, 1, 1)
guiTitle.Font = Enum.Font.SourceSansBold
guiTitle.TextSize = 14
guiTitle.Text = "666youtii's GUI"
guiTitle.Parent = frame

-- Fonction pour dÃ©placer le cadre au toucher sur l'Ã©cran tactile
local dragging = false
local dragStart = nil

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        -- VÃ©rifier si l'input provient du cadre
        local inputPosition = input.Position
        local framePosition = frame.AbsolutePosition
        local frameSize = frame.AbsoluteSize
        local frameTopLeft = framePosition
        local frameBottomRight = framePosition + frameSize

        if inputPosition.X >= frameTopLeft.X and inputPosition.X <= frameBottomRight.X and
            inputPosition.Y >= frameTopLeft.Y and inputPosition.Y <= frameBottomRight.Y then
            dragging = true
            dragStart = Vector2.new(input.Position.X, input.Position.Y) - Vector2.new(frame.Position.X.Offset, frame.Position.Y.Offset)
        end
    end
end)

frame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.Touch then
        -- DÃ©placer le cadre uniquement si l'input provient du cadre
        frame.Position = UDim2.new(0, input.Position.X - dragStart.X, 0, input.Position.Y - dragStart.Y)
    end
end)

frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- CrÃ©er le bouton "ExÃ©cuter le script de la boule rouge"
local button = Instance.new("TextButton")
button.Name = "ExecuteScriptButton"
button.Size = UDim2.new(0, 175, 0, 40)
button.Position = UDim2.new(0.25, -87.5, 0.75, -30)
button.BackgroundColor3 = Color3.fromRGB(255, 192, 203)  -- Rouge clair
button.BorderSizePixel = 2
button.BorderColor3 = Color3.new(0, 0, 0)  -- Bordure noire
button.Text = "ExÃ©cuter le script de la boule rouge"
button.TextColor3 = Color3.new(1, 1, 1)  -- Texte blanc
button.Parent = frame

button.MouseButton1Click:Connect(function()
    -- Script de la boule rouge
    local ball = Instance.new("Part")
    ball.Size = Vector3.new(5, 5, 5) 
    ball.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position 
    ball.BrickColor = BrickColor.new("Bright red") 
    ball.Anchored = true 
    ball.CanCollide = true 
    ball.Parent = game.Workspace 

    local growthRate = 2 
    local maxSize = 50 
    local timeToLive = 60 

    local startTime = tick() 

    local function growBall()
        if ball.Size.X < maxSize then
            ball.Size = ball.Size + Vector3.new(growthRate, growthRate, growthRate)
        end
    end

    while tick() - startTime < timeToLive do
        wait(1)
        growBall()
    end

    ball:Destroy()

    ball.Touched:Connect(function(hit)
        local character = hit.Parent
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = 0
        end
    end)
end)

-- CrÃ©er le bouton "Obtenir l'outil F3X"
local f3xButton = Instance.new("TextButton")
f3xButton.Name = "F3XButton"
f3xButton.Size = UDim2.new(0, 175, 0, 40)
f3xButton.Position = UDim2.new(0.75, -87.5, 0.75, -30)
f3xButton.BackgroundColor3 = Color3.fromRGB(255, 192, 203)  -- Rouge clair
f3xButton.BorderSizePixel = 2
f3xButton.BorderColor3 = Color3.new(0, 0, 0)  -- Bordure noire
f3xButton.Text = "Obtenir l'outil F3X"
f3xButton.TextColor3 = Color3.new(1, 1, 1)  -- Texte blanc
f3xButton.Parent = frame

f3xButton.MouseButton1Click:Connect(function()
    loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()  -- Charger et exÃ©cuter le script F3X
    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("F3X")
    if not tool then
        local f3x = Instance.new("Tool")
        f3x.Name = "F3X"
        f3x.Parent = game.Players.LocalPlayer.Backpack
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(f3x)
    else
        print("Vous avez dÃ©jÃ  l'outil F3X.")
    end
end)

-- CrÃ©er le bouton pour fermer le GUI-- (suite du script prÃ©cÃ©dent)

-- CrÃ©er le bouton pour fermer le GUI (la croix)
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 20, 0, 20)
closeButton.Position = UDim2.new(1, -30, 0, 5)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 192, 203)  -- Rouge clair
closeButton.BorderSizePixel = 2
closeButton.BorderColor3 = Color3.new(0, 0, 0)  -- Bordure noire
closeButton.Text = "X"
closeButton.TextColor3 = Color3.new(1, 1, 1)  -- Texte blanc
closeButton.Parent = frame

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()  -- Fermer le GUI en dÃ©truisant l'objet ScreenGui
end)-- CrÃ©er un bouton pour ouvrir le champ de texte
local enterIdButton = Instance.new("TextButton")
enterIdButton.Name = "EnterIdButton"
enterIdButton.Size = UDim2.new(0, 175, 0, 40)
enterIdButton.Position = UDim2.new(0.25, -87.5, 0.75, -90) -- Position ajustÃ©e
enterIdButton.BackgroundColor3 = Color3.fromRGB(255, 192, 203) -- Couleur ajustÃ©e
enterIdButton.BorderSizePixel = 2
enterIdButton.BorderColor3 = Color3.new(0, 0, 0)
enterIdButton.Text = "Entrer l'ID"
enterIdButton.TextColor3 = Color3.new(1, 1, 1)
enterIdButton.Parent = frame

-- CrÃ©er un champ de texte pour entrer l'ID de la musique ou du son
local idTextBox = Instance.new("TextBox")
idTextBox.Name = "IdTextBox"
idTextBox.Size = UDim2.new(0, 200, 0, 30)
idTextBox.Position = UDim2.new(0.5, -100, 0.75, -70) -- Position ajustÃ©e
idTextBox.Visible = false
idTextBox.PlaceholderText = "Entrez l'ID de la musique ou du son"
idTextBox.TextScaled = true
idTextBox.BackgroundColor3 = Color3.new(1, 1, 1)
idTextBox.BorderColor3 = Color3.new(0, 0, 0)
idTextBox.Parent = frame

-- Fonction pour afficher le champ de texte lorsqu'on appuie sur le bouton
enterIdButton.MouseButton1Click:Connect(function()
    idTextBox.Visible = not idTextBox.Visible
    if idTextBox.Visible then
        idTextBox:CaptureFocus()
    else
        idTextBox.Text = ""
    end
end)

-- Fonction pour jouer la musique ou le son lorsqu'on appuie sur EntrÃ©e dans le champ de texte
idTextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local soundId = tonumber(idTextBox.Text)
        if soundId then
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. soundId
            sound.Parent = game:GetService("SoundService") -- ParentÃ© Ã  SoundService
            sound:Play()
        else
            print("ID de son ou de musique invalide.")
        end
    end
end)-- CrÃ©er un bouton pour exÃ©cuter le script Infinite Yield
local executeScriptButton = Instance.new("TextButton")
executeScriptButton.Name = "ExecuteScriptButton"
executeScriptButton.Size = UDim2.new(0, 175, 0, 40) -- Taille ajustÃ©e pour correspondre Ã  la taille prÃ©cÃ©dente
executeScriptButton.Position = UDim2.new(0.75, -87.5, 0.75, -90) -- Position ajustÃ©e pour Ãªtre lÃ©gÃ¨rement plus haute
executeScriptButton.BackgroundColor3 = Color3.fromRGB(255, 192, 203) -- Couleur ajustÃ©e
executeScriptButton.BorderSizePixel = 2
executeScriptButton.BorderColor3 = Color3.new(0, 0, 0)
executeScriptButton.Text = "ExÃ©cuter Infinite Yield"
executeScriptButton.TextColor3 = Color3.new(1, 1, 1)
executeScriptButton.Parent = frame

-- Fonction pour exÃ©cuter le script Infinite Yield lorsqu'on appuie sur le bouton
executeScriptButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/Infinite-Yield_500"))()
end)-- CrÃ©er le bouton de la flÃ¨che pour ouvrir ou fermer le GUI supplÃ©mentaire
local arrowButton = Instance.new("TextButton")
arrowButton.Name = "ArrowButton"
arrowButton.Size = UDim2.new(0, 30, 0, 30)
arrowButton.Position = UDim2.new(1, 5, 0, 5)  -- Ã droite du cadre, lÃ©gÃ¨rement dÃ©calÃ© vers le haut
arrowButton.BackgroundColor3 = Color3.fromRGB(255, 192, 203)  -- Rouge clair
arrowButton.BorderSizePixel = 2
arrowButton.BorderColor3 = Color3.new(0, 0, 0)  -- Bordure noire
arrowButton.Text = "â¶"  -- Symbole de la flÃ¨che
arrowButton.TextColor3 = Color3.new(1, 1, 1)  -- Texte blanc
arrowButton.Parent = frame

-- CrÃ©er le GUI supplÃ©mentaire
local secondaryGUI = Instance.new("Frame")
secondaryGUI.Name = "SecondaryGUI"
secondaryGUI.Size = UDim2.new(0, 400, 0, 200)  -- Agrandissement de la taille
secondaryGUI.Position = UDim2.new(1, 5, 0, 5)  -- Ajustement de la position Ã  droite
secondaryGUI.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Rouge
secondaryGUI.BorderSizePixel = 2
secondaryGUI.BorderColor3 = Color3.new(0, 0, 0)  -- Bordure noire
secondaryGUI.Visible = false
secondaryGUI.Parent = gui  -- AttachÃ© au GUI principal

-- Fonction pour ouvrir ou fermer le GUI supplÃ©mentaire lorsqu'on clique sur la flÃ¨che
local isSecondaryGUIVisible = false

arrowButton.MouseButton1Click:Connect(function()
    if isSecondaryGUIVisible then
        secondaryGUI.Visible = false
        arrowButton.Text = "â¶"  -- Changer le symbole de la flÃ¨che pour indiquer l'ouverture
    else
        secondaryGUI.Visible = true
        arrowButton.Text = "â"  -- Changer le symbole de la flÃ¨che pour indiquer la fermeture
    end
    isSecondaryGUIVisible = not isSecondaryGUIVisible
end)

-- Fonction pour mettre Ã  jour la position du GUI supplÃ©mentaire
local function updateSecondaryGUIPosition()
    local arrowPosition = arrowButton.AbsolutePosition
    local arrowSize = arrowButton.AbsoluteSize
    secondaryGUI.Position = UDim2.new(0, arrowPosition.X + arrowSize.X + 5, 0, arrowPosition.Y)
end

-- Mettre Ã  jour la position initiale
updateSecondaryGUIPosition()

-- Connecter l'Ã©vÃ©nement de changement de taille ou de position du bouton de la flÃ¨che
arrowButton:GetPropertyChangedSignal("AbsolutePosition"):Connect(updateSecondaryGUIPosition)
arrowButton:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateSecondaryGUIPosition)-- CrÃ©er le bouton de la flÃ¨che pour ouvrir ou fermer le GUI supplÃ©mentaire
local arrowButton = Instance.new("TextButton")
arrowButton.Name = "ArrowButton"
arrowButton.Size = UDim2.new(0, 30, 0, 30)
arrowButton.Position = UDim2.new(1, 5, 0, 5)  -- Ã droite du cadre, lÃ©gÃ¨rement dÃ©calÃ© vers le haut
arrowButton.BackgroundColor3 = Color3.fromRGB(255, 192, 203)  -- Rouge clair
arrowButton.BorderSizePixel = 2
arrowButton.BorderColor3 = Color3.new(0, 0, 0)  -- Bordure noire
arrowButton.Text = "â¶"  -- Symbole de la flÃ¨che
arrowButton.TextColor3 = Color3.new(1, 1, 1)  -- Texte blanc
arrowButton.Parent = frame

-- CrÃ©er le GUI supplÃ©mentaire
local secondaryGUI = Instance.new("Frame")
secondaryGUI.Name = "SecondaryGUI"
secondaryGUI.Size = UDim2.new(0, 400, 0, 200)  -- Agrandissement de la taille
secondaryGUI.Position = UDim2.new(1, 5, 0, 5)  -- Ajustement de la position Ã  droite
secondaryGUI.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Rouge
secondaryGUI.BorderSizePixel = 2
secondaryGUI.BorderColor3 = Color3.new(0, 0, 0)  -- Bordure noire
secondaryGUI.Visible = false
secondaryGUI.Parent = gui  -- AttachÃ© au GUI principal

-- Fonction pour ouvrir ou fermer le GUI supplÃ©mentaire lorsqu'on clique sur la flÃ¨che
local isSecondaryGUIVisible = false

arrowButton.MouseButton1Click:Connect(function()
    if isSecondaryGUIVisible then
        secondaryGUI.Visible = false
        arrowButton.Text = "â¶"  -- Changer le symbole de la flÃ¨che pour indiquer l'ouverture
    else
        secondaryGUI.Visible = true
        arrowButton.Text = "â"  -- Changer le symbole de la flÃ¨che pour indiquer la fermeture
    end
    isSecondaryGUIVisible = not isSecondaryGUIVisible
end)

-- Fonction pour mettre Ã  jour la position du GUI supplÃ©mentaire
local function updateSecondaryGUIPosition()
    local arrowPosition = arrowButton.AbsolutePosition
    local arrowSize = arrowButton.AbsoluteSize
    secondaryGUI.Position = UDim2.new(0, arrowPosition.X + arrowSize.X + 5, 0, arrowPosition.Y)
end

-- Mettre Ã  jour la position initiale
updateSecondaryGUIPosition()

-- Connecter l'Ã©vÃ©nement de changement de taille ou de position du bouton de la flÃ¨che
arrowButton:GetPropertyChangedSignal("AbsolutePosition"):Connect(updateSecondaryGUIPosition)
arrowButton:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateSecondaryGUIPosition)

-- CrÃ©er le bouton pour activer/dÃ©sactiver le mode X-Ray
local xRayButton = Instance.new("TextButton")
xRayButton.Name = "XRayButton"
xRayButton.Size = UDim2.new(0, 175, 0, 40)
xRayButton.Position = UDim2.new(0.5, -87.5, 0.5, 50) -- Position ajustÃ©e
xRayButton.BackgroundColor3 = Color3.fromRGB(255, 192, 203) -- Couleur ajustÃ©e
xRayButton.BorderSizePixel = 2
xRayButton.BorderColor3 = Color3.new(0, 0, 0)
xRayButton.Text = "X-Ray"
xRayButton.TextColor3 = Color3.new(1, 1, 1)
xRayButton.Parent = secondaryGUI

-- Tableau pour stocker l'Ã©tat d'origine de la transparence des blocs
local originalTransparency = {}

-- Fonction pour activer/dÃ©sactiver le mode X-Ray
local isXRayEnabled = false

xRayButton.MouseButton1Click:Connect(function()
    isXRayEnabled = not isXRayEnabled
    if isXRayEnabled then
        -- Stocker l'Ã©tat d'origine de la transparence des blocs avant d'activer le mode X-Ray
        for _, object in ipairs(game.Workspace:GetDescendants()) do
            if object:IsA("BasePart") then
                originalTransparency[object] = object.Transparency
                object.Transparency = 0.5  -- Mettre la transparence Ã  0.5 (50%)
            end
        end
        xRayButton.Text = "X-Ray Off"
    else
        -- Retourner Ã  l'apparence normale des blocs
        for object, transparency in pairs(originalTransparency) do
            if object:IsA("BasePart") then
                object.Transparency = transparency
            end
        end
        xRayButton.Text = "X-Ray"
        -- Effacer le tableau d'origine de la transparence des blocs
        originalTransparency = {}
    end
end)
-- Assurez-vous d'avoir le ScreenGui dÃ©fini correctement
local ScreenGui = game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("ScreenGui")

-- Si ScreenGui n'existe pas, crÃ©ez-le
if not ScreenGui then
    ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "ScreenGui"
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
end

-- CrÃ©er un nouveau bouton
local newButton = Instance.new("TextButton")
newButton.Size = UDim2.new(0, 100, 0, 50)
newButton.Position = UDim2.new(0, 10, 0, 70) -- Position juste en dessous de l'existant
newButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
newButton.Text = "Gun"
newButton.Parent = ScreenGui

-- CrÃ©er un Frame transparent qui couvre tout l'Ã©cran pour dÃ©tecter les clics
local clickFrame = Instance.new("Frame")
clickFrame.Size = UDim2.new(1, 0, 1, 0)
clickFrame.Position = UDim2.new(0, 0, 0, 0)
clickFrame.BackgroundTransparency = 1
clickFrame.Parent = ScreenGui

-- Fonction pour crÃ©er ou supprimer un pistolet dans la main droite
local function toggleGunInHand(player)
    local character = player.Character or player.CharacterAdded:Wait()
    local existingGun = character:FindFirstChild("CustomGun")

    if existingGun then
        existingGun:Destroy()
    else
        local gunModel = Instance.new("Model")
        gunModel.Name = "CustomGun"
        gunModel.Parent = character

        -- CrÃ©er le corps du pistolet
        local bodyPart = Instance.new("Part")
        bodyPart.Size = Vector3.new(0.5, 0.5, 0.5) -- RÃ©trÃ©ci d'une unitÃ©
        bodyPart.Color = Color3.fromRGB(139, 69, 19) -- Marron
        bodyPart.Name = "BodyPart"
        bodyPart.Parent = gunModel

        -- CrÃ©er le canon du pistolet
        local barrelPart = Instance.new("Part")
        barrelPart.Size = Vector3.new(0.5, 0.5, 1.5)
        barrelPart.Color = Color3.fromRGB(169, 169, 169) -- Gris
        barrelPart.Name = "BarrelPart"
        barrelPart.Position = Vector3.new(0, 0.5, -0.75)
        barrelPart.Parent = gunModel

        -- Weld pour le corps
        local weldBody = Instance.new("Weld")
        weldBody.Part0 = character:FindFirstChild("RightHand") or character:FindFirstChild("Right Arm")
        weldBody.Part1 = bodyPart
        weldBody.C0 = CFrame.new(0, -1, 0)
        weldBody.Parent = bodyPart

        -- Weld pour le canon
        local weldBarrel = Instance.new("Weld")
        weldBarrel.Part0 = bodyPart
        weldBarrel.Part1 = barrelPart
        weldBarrel.C0 = CFrame.new(0, 0.5, -0.75)
        weldBarrel.Parent = barrelPart

        -- CrÃ©er une petite balle noire au bout du canon
        local bullet = Instance.new("Part")
        bullet.Size = Vector3.new(0.3, 0.3, 0.3)
        bullet.Color = Color3.fromRGB(0, 0, 0) -- Noir
        bullet.Shape = Enum.PartType.Ball
        bullet.Name = "Bullet"
        bullet.Position = Vector3.new(0, 0.5, -1.25)
        bullet.Parent = gunModel

        -- Weld pour la balle
        local weldBullet = Instance.new("Weld")
        weldBullet.Part0 = barrelPart
        weldBullet.Part1 = bullet
        weldBullet.C0 = CFrame.new(0, 0, -0.75)
        weldBullet.Parent = bullet

        -- S'assurer que le pistolet est dÃ©truit Ã  la mort du joueur
        character.Humanoid.Died:Connect(function()
            gunModel:Destroy()
        end)
    end
end

-- Fonction pour tirer une balle vers l'endroit cliquÃ©
local function fireBullet(player, clickPosition)
    local character = player.Character
    local gun = character and character:FindFirstChild("CustomGun")
    if gun then
        local barrel = gun:FindFirstChild("BarrelPart")
        if barrel then
            -- CrÃ©er une balle jaune
            local bullet = Instance.new("Part")
            bullet.Size = Vector3.new(0.2, 0.2, 0.2)
            bullet.Shape = Enum.PartType.Ball
            bullet.Color = Color3.new(1, 1, 0) -- Jaune
            bullet.Position = barrel.Position
            bullet.Parent = game.Workspace

            -- Ajouter un son Ã  la balle
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://5936138739"
            sound.Parent = bullet
            sound:Play()

            -- Rendre la balle sans masse pour Ã©viter qu'elle tombe
            bullet.Massless = true
            bullet.CanCollide = false

            -- Ajouter un BodyForce pour contrer la gravitÃ©
            local bodyForce = Instance.new("BodyForce")
            bodyForce.Force = Vector3.new(0, bullet:GetMass() * workspace.Gravity, 0)
            bodyForce.Parent = bullet

            -- Calculer la direction vers l'endroit cliquÃ©
            local direction = (clickPosition - barrel.Position).unit

            -- Appliquer la vÃ©locitÃ© pour dÃ©placer la balle
            bullet.Velocity = direction * 100 -- Ajustez la vitesse si nÃ©cessaire

            -- Ajouter un script pour supprimer la balle aprÃ¨s un certain temps
            game.Debris:AddItem(bullet, 5)
        end
    end
end

-- Ajouter un outil dans l'inventaire du joueur lors du clic sur le bouton
newButton.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    toggleGunInHand(player)
end)

-- DÃ©tecter les clics sur le frame transparent pour tirer
clickFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        local player = game.Players.LocalPlayer

        -- Convertir la position du clic en une position dans le monde 3D
        local mouse = player:GetMouse()
        local clickPosition = mouse.Hit.p

        fireBullet(player, clickPosition)
    end
end)

-- Supprimer le pistolet Ã  la mort du joueur
game.Players.LocalPlayer.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid").Died:Connect(function()
        local gun = character:FindFirstChild("CustomGun")
        if gun then
            gun:Destroy()
        end
    end)
end)