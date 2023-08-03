local delay = 2.5
function send(text)
   local A_delay = text
   local A_2 = "All"
   local event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
   event:FireServer(A_delay, A_2)

end
while wait(delay) do
   send("It starts with one thing, I don't know why")
   wait(delay)
   send("It doesn't even matter how hard you try")
   wait(delay)
   send("Keep that in mind")
   wait(delay)
   send("I designed this rhyme")
   wait(delay)
   send("To explain in due time")
   wait(delay)
   send("All I know")
   wait(delay)
   send("Watch it fly by as the pendulum swings")
   wait(delay)
   send("Watch it count down to the end of the day")
   wait(delay)
   send("The clock ticks life away")
   wait(delay)
   send("It's so unreal")
   wait(delay)
   send("Didn't look out below")
   wait(delay)
   send("Watch the time go right out the window")
   wait(delay)
   send("Trying to hold on, didn't even know")
   wait(delay)
   send("I wasted it all just to watch you go")
   wait(delay)
   send("I kept everything inside")
   wait(delay)
   send("And even though I tried, it all fell apart")
   wait(delay)
   send("Will eventually be a memory of a time when")
   wait(delay)
   send("I tried so hard")
 
   end