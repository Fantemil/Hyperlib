run_on_actor(
    game:GetService("Players").LocalPlayer:FindFirstChild("frontlines_client_actor", true),
    game:HttpGet("https://api.luarmor.net/files/v3/loaders/c73becf0d6d7699be9f56f90c2758903.lua")
)