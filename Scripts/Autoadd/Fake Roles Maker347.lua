--[[
documentation here: https://github.com/d4ba/x/tree/main/FakeMM2RolesMaker
]]

-- THIS IS A TEMPLATE

local rolemaker = loadstring(game:HttpGet('https://raw.githubusercontent.com/d4ba/x/main/FakeMM2RoleMaker.lua'))()

rolemaker.createRole({
    RoleName = "Role Maker",
    Color = Color3.fromRGB(124, 229, 255),
    ChanceText = "Your chance to be Murderer: 69%",
    KeyCode = Enum.KeyCode.M -- press this keyboard button to change the text to the fake role
})