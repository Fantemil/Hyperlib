--[[

MODIFIED BY BRICKMANE (Cospiracy#5570)
Original Author: SleepyLuc
Author's Vermillion profile link: https://v3rmillion.net/member.php?action=profile&uid=2272275

]]

local player = game.Players.LocalPlayer
local http = game:GetService("HttpService")
local url = "https://sleepylucapis.herokuapp.com/shovelware"
local answers
local question

answers = http:JSONDecode(game:HttpGet(url.."?file=json"))

player.PlayerGui.menusAndHud.sidebar.joinGame:GetPropertyChangedSignal("Visible"):Connect(function()
  if player.PlayerGui.menusAndHud.sidebar.joinGame.Visible then
      firesignal(player.PlayerGui.menusAndHud.sidebar.joinGame.TextButton.MouseButton1Click)
  end
end)

player.PlayerGui.ChildAdded:Connect(function(UI)
  if UI.Name == "questionUI" then
      question = UI.q.TextLabel.Text
      local option
      if question == "Which country does this flag belong to?" then
          local flag = workspace.gameshowHost.npc_boardy.boardyScreen.boardyScreen.ImageButton.TextLabel.Text
          local flags = {
              ["??"] = "Antarctica",
              ["??"] = "Argentina",
              ["??"] = "Czech Republic",
          }
          local answer = flags[flag]
          if answer then
              for _, v in pairs(UI.choices:GetChildren()) do
                  if v.Value == answer then
                      option = v.Name
                  end
              end
          end
      elseif answers[UI.q.TextLabel.Text] then
          for _, v in pairs(UI.choices:GetChildren()) do
              if v.Value == answers[UI.q.TextLabel.Text] then
                  option = v.Name
              end
          end
      end
      if option then

          warn("answer : " .. tostring(option), "Name: " .. UI.options:WaitForChild(option).TextButton.TextLabel.Text)

          task.wait(math.random(.8, 3))
          firesignal(UI.options:WaitForChild(option).TextButton.MouseButton1Click)
      end
  elseif UI.Name == "revealUI" then
      if not answers[question] then
          answers[question] = UI.correct.Value
          local post = request({
              ["Url"] = url,
              ["Method"] = "POST",
              ["Headers"] = {
                  ["Content-Type"] = "application/json"
              },
              ["Body"] = http:JSONEncode(answers)
          })
          answers = http:JSONDecode(post["Body"])
      end
  elseif UI.Name == "categoryChoose" then
      local choices = UI.choices:GetChildren()

      task.wait(.6)
      firesignal(UI:WaitForChild(choices[math.random(1, #choices)].Value).TextButton.MouseButton1Click)
  end
end)