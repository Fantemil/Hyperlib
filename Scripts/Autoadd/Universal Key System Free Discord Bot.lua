-- Discord Key System: https://discord.gg/nffGnugrau

local key = "your key"

pcall(function()
    if key == game:HttpGet("https://1.kelprepl.repl.co/verify/test?verify_key="..key) then
        print("Good")
    end
end)