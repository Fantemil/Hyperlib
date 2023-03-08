getgenv().espSettings = {
    Highlight = {
        DepthMode = Enum.HighlightDepthMode.AlwaysOnTop, -- don't mess with this

        FillTransparency = 1, -- 0 for the zombie model to be filled a color, 1 for it to not be
        FillColor = Color3.fromRGB(0, 190, 0),

        OutlineTransparency = 0, -- 0 for the zombie model to be outlined a color, 1 for it to not be
        OutlineColor = Color3.fromRGB(0, 205, 0),

        Enabled = true, -- don't mess with this
    },

    Text = {
        Visible = false, -- don't mess with this
        ZIndex = 1, -- don't mess with this
        Transparency = 1,
        Color = Color3.fromRGB(225, 225, 225),
        Size = 15, -- the size of the text (you may have to change this if you change the font)
        Center = true, -- don't mess with this
        Outline = true, -- don't mess with this
        OutlineColor = Color3.fromRGB(0, 0, 0),
        Font = 2 -- 0 = UI, 1 = System, 2 = Plex, 3 = Monospace
    }
};

loadstring(game:HttpGet("https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/RobloxScripts/main/Michaels-Zombies/zombieEsp.lua"))();