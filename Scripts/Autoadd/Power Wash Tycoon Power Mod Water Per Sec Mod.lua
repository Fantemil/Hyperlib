for i, v in next, getgc(true) do

  if type(v) == "table" and rawget(v, "Power") then

      v.Power = 1000000
      v.WaterPerSec = 1000000



  end

end
for i, v in next, getgc(true) do

  if type(v) == "table" and rawget(v, "MaxCapacity") then

      v.MaxCapacity = 1000000




  end

end
for i, v in next, getgc(true) do

  if type(v) == "table" and rawget(v, "BasePower") then

      v.BasePower = 1000000
   



  end

end