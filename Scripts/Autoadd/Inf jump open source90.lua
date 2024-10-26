
discord.gg/CjnxvfEp 

loadstring(game:HttpGet(("https://raw.githubusercontent.com/REDzHUB/LibraryV2/main/redzLib")))()
MakeWindow({
  Hub = {
    Title = "Tbao Hub",
    Animation = "by thaibao7444"
  },
  Key = {
    KeySystem = false,
    Title = "Key System",
    Description = "",
    KeyLink = "",
    Keys = {"1234"},
    Notifi = {
      Notifications = true,
      CorrectKey = "Running the Script...",
      Incorrectkey = "The key is incorrect",
      CopyKeyLink = "Copied to Clipboard"
    }
  }
})

MinimizeButton({
  Image = "",
  Size = {40, 40},
  Color = Color3.fromRGB(10, 10, 10),
  Corner = true,
  Stroke = false,
  StrokeColor = Color3.fromRGB(255, 0, 0)
})


  
  local Main = MakeTab({Name = "Info"})
  

local IJ = false
  local Toggle = AddToggle(Main, {
  Name = "Inf jump",
  Default = false,
  Callback = function(state)
    IJ = state    game:GetService("UserInputService").JumpRequest:Connect(function()
          if IJ then
              game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
          end
      end)
  end
})
