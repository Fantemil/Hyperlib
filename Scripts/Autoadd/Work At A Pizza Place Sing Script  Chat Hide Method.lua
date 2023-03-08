---- edited for work at a pizza place by joshclark756#7155
_G.skip = false --execute just _G.skip=true to skip a song

local playlist = {
["name here"] = "link here",
}

function chat(msg)
 workspace.Main.Chatted:FireServer(msg)
end

function sing(url, title)
  local text = game:HttpGet(url, true)
  local lyrics = {}
  for s in text:gmatch("[^\r\n]+") do
      table.insert(lyrics, s)
  end
  local duration = #lyrics * 5
  chat("Duration: " .. tostring(duration) .. " seconds")
  for i,v in pairs(lyrics) do
      if _G.skip then
          chat("Skipping " .. title)
          _G.skip = false
          wait(1)
          break
      end
      wait(3)
      chat(v)
  end
end

for i,v in pairs(playlist) do
  chat("Now playing: " .. i)
  sing(v, i)
end