local toModify = {
  CoinsPerHit = 69999999999,
  GemsPerHit = 69999999999999,
} -- stuff you want to modify goes here (for example if you wanted to modify gunRecoilMin you would set gunRecoilMin inside this table to your value)

get_gc_objects = get_gc_objects or getgc

for i,v in pairs(get_gc_objects(true)) do
if type(v) == "table" then
if rawget(v, "CoinsPerHit") and rawget(v, "GemsPerHit") then
          for k,v2 in pairs(toModify) do
              rawset(v, k, v2)
          end
      end
  end
end