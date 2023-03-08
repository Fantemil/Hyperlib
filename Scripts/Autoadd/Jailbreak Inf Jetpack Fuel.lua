for _, v in next, getgc(true) do
  if (type(v) == 'table' and rawget(v, 'LocalMaxFuel')) then
    v.LocalMaxFuel = math.huge
    v.LocalFuel = math.huge
    v.LocalFuelType = 'Rocket'
  end
end