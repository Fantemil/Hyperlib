--infinite money--

loadstring(game:HttpGet('https://raw.githubusercontent.com/CreatorProfessional/fft/main/generateinfinitemoney'))()


--Auto obby--

getgenv().autoObbying = true

while getgenv().autoObbying do
  task.wait()
  local hrpCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  local end3 = game:GetService("Workspace").Obby.Obby3.End
  local end2 = game:GetService("Workspace").Obby.Obby2.End
  local end1 = game:GetService("Workspace").Obby.Obby1.End
  end3.Transparency = 1
  end2.Transparency = 1
  end1.Transparency = 1
  end3.CFrame = hrpCFrame
  end2.CFrame = hrpCFrame
  end1.CFrame = hrpCFrame
  end3.CanCollide = false
  end2.CanCollide = false
  end1.CanCollide = false
end