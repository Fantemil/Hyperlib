--[[ 

            /!\ WARNING /!\
Changing up the settings without understanding
may LAG your PC, read the documentation first
before tampering with the settings

_____________________________________________
  
  documentation:
  
  - 
   Remember:
   Lowering the threads may cause severe lag
   to low-spec PC's!
  -
  
  threads = lower the faster it lags
  tries = the higher the faster it lags
  
_____________________________________________

  def settings:
  
  threads = 250
  tries = 5
  
  
  fast-lag settings:
  
  threads = 10
  tries = 5
  
_____________________________________________

]]

-- Settings Configuration --
_G.threads = 250
_G.tries = 5

loadstring(game:HttpGet("https://raw.githubusercontent.com/Empire4946/EZLaggerPlus/main/source",true))()