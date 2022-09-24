getgenv().settings = {
   log_duration = 5; -- how long the logger will log for
   print_anims = true; -- print animation names & id
   write_to_file = true; -- write animations to file as table
   clearconsole = true; -- clear the console after a set amount of time
   clearingtime = 5; -- amount of time until console is cleared
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/falseopx/animation-logger/main/.lua"))()