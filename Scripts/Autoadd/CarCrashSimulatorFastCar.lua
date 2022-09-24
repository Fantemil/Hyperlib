local findCar = workspace['Cars']:FindFirstChild(game.Players.LocalPlayer.Name.."s_Car")

local newSettings = {
   ['BoostAmount'] = 30,
   ['MaxSpeed'] = 999,
   ['Accel'] = 5
}

local conf = findCar['Config']
conf.BoostAmount.Value = newSettings['BoostAmount']
conf.MaxSpeed.Value = newSettings['MaxSpeed']
conf.Accel.Value = newSettings['Accel']