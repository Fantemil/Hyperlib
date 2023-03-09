local old
old = hookmetamethod(game, "__namecall", function(self, ...)
  args = {...}
  if self.Name == "DamageRemoteEvent" then
      if args[1] == "TakeDamage" then
          print(args[2]["damage"])
          args[2]["damage"] = 9e9-- Math.hgue breaks the game
          return old(self, unpack(args))
      end
  end
  return old(self, ...)
end)