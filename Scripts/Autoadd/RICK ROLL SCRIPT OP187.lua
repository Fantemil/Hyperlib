-- Obfuscate this script to troll people ( also open source paste your image to change it to custom rolls , credits to stxr, Dm lasnuh to get support

local imageAssetId = "rbxassetid://8423195710"

local function replaceTextureId(screenGui)
    for _, frame in ipairs(screenGui:GetDescendants()) do
        if frame:IsA("ImageLabel") or frame:IsA("ImageButton") then
            frame.Image = imageAssetId
        end
    end
end

local function getTextGUIs()
    local textGUIs = {}
    for _, instance in ipairs(game:GetDescendants()) do
        if instance:IsA("TextLabel") or instance:IsA("TextBox") then
            table.insert(textGUIs, instance)
        end
    end
    return textGUIs
end

local function trollageTextGUIs()
    local textGUIs = getTextGUIs()
    for _, textGUI in ipairs(textGUIs) do
        textGUI.Text = "Never Gonna Give You Up"
    end
end

while true do
    for _, v in ipairs(workspace:GetDescendants()) do
        if v:IsA("ImageLabel") or v:IsA("ImageButton") then
            v.Image = imageAssetId
            v:GetPropertyChangedSignal("Image"):Connect(function()
                v.Image = imageAssetId
            end)
        end
        
        if (v:IsA("TextLabel") or v:IsA("TextButton")) and not v:GetFullName():find("ChatChannelParentFrame") then
            if v.Text ~= "" then
                v.Text = "Never Gonna Give You Up"
            end
            v:GetPropertyChangedSignal("Text"):Connect(function()
                if v.Text ~= "" then
                    v.Text = "Never Gonna Let You Down"
                end
            end)
        end
        
        if v:IsA("Texture") or v:IsA("Decal") then
            v.Texture = imageAssetId
            v:GetPropertyChangedSignal("Texture"):Connect(function()
                v.Texture = imageAssetId
            end)
        end
        
        if v:IsA("MeshPart") then
            v.TextureID = imageAssetId
            v:GetPropertyChangedSignal("TextureID"):Connect(function()
                v.TextureID = imageAssetId
            end)
        end
        
        if v:IsA("SpecialMesh") then
            v.TextureId = imageAssetId
            v:GetPropertyChangedSignal("TextureId"):Connect(function()
                v.TextureId = imageAssetId
            end)
        end
    end
    
    game.Lighting.Sky.SkyboxBk = imageAssetId
    game.Lighting.Sky.SkyboxDn = imageAssetId
    game.Lighting.Sky.SkyboxFt = imageAssetId
    game.Lighting.Sky.SkyboxLf = imageAssetId
    game.Lighting.Sky.SkyboxRt = imageAssetId
    game.Lighting.Sky.SkyboxUp = imageAssetId
    
    for _, screenGui in ipairs(game:GetDescendants()) do
        if screenGui:IsA("ScreenGui") then
            replaceTextureId(screenGui)
        end
    end
    
    trollageTextGUIs()
    
    wait(0.5)
end