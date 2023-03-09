local X;
X = hookmetamethod(game,"__namecall",function(self,...)
   local args = {...};
   local method = getnamecallmethod()
   if method == "FireServer" and self.name == "KnockedOut"  then 
        
           return 
 end 
   return X(self,...) 
end)