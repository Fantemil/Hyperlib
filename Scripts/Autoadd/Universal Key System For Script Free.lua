-- Discord Key System: https://discord.gg/9G46pAJFfR
setclipboard("https://discord.gg/9G46pAJFfR")

local key = "your key"

pcall(function()
    if key == game:HttpGet("https://https://keysystem.ml/verify/your_app_name?verify_key="..key) then
        print("Good")
    end
end)