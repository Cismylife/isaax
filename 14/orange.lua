if not load then 
os.loadAPI("/load")
end

local logo = {
   "e                            eeeeeee eeeee",       
   "e                            e     e e    ",     
   "e  eeeee eeeee eeeee e   e   e     e e    ",      
   "e  e     e   e e   e  e e    e     e eeeee",       
   "e  eeeee eeeee eeeee   e     e     e     e",       
   "e      e e   e e   e  e e    e     e     e",       
   "e  eeeee e   e e   e e   e   eeeeeee eeeee",  
}

local bar = load.init( load.LOGO_IS_LOAD, logo, 10, nil, 14, colors.red, "Starting Isaax OS...", "Isaax OS", "Created By thegreatstudio  Copyright (c) 2013-2014" )

 local function dostuff()
         bar:setMessage( "Loading.." )
         for i = 1, 9 do
                 sleep(1)
                 bar:triggerUpdate( "Loading ("..( bar:getCurrentProgress() + 1 ).."/10)..." )
         end
         
         
         bar:triggerUpdate( "Done!" )
end

local function dobar()
        bar:run( true )
end

parallel.waitForAll( dobar, dostuff )

if fs.exists("gliese/gui") then
shell.run("gliese/gui")
elseif not fs.exists("gliese/gui") then
shell.run("gliese/shell")
end