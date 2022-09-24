pcall(function()
    getgenv().key = "SkZtEyWEn3FPF9rRp8maJUMfKnQMLEjd";
    owner = "kawty0000";
    name = "Shindo%20Life";
    function run(url) loadstring(game:HttpGet("https://" ..url.. "/" ..owner.. "/script/main/" ..name.. ".lua"))() end
    run("raw.githubusercontent.com")
end)