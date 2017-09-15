function UpdateTimer (time)
	net.Start("round_timer")
		net.WriteInt( time, 10)
	net.Broadcast()
end
	



round = {}

-- Variables
round.Break	= 30	-- 30 second breaks
round.Time	= 300	-- 5 minute rounds

-- Read Variables
round.TimeLeft = -1
round.Breaking = true

function round.Broadcast(Text)
	for k, v in pairs(player.GetAll()) do
		v:ConCommand("play buttons/button17.wav")
		v:ChatPrint(Text)
	end
end

function round.Begin()

local time = 5
UpdateTimer(time)
timer.Create("round", 1, time , function()
time = time -1
net.Start ("round_active")
net.WriteBool (True)
net.Broadcast
end
	-- Your code
	-- (Anything that may need to happen when the round begins)
	
	round.Broadcast("Round starting! Round ends in " .. round.Time .. " seconds!")
	round.TimeLeft = round.Time
end

function round.End()
	-- Your code
	-- (Anything that may need to happen when the round ends)
	
	round.Broadcast("Round over! Next round in " .. round.Break .. " seconds!")
	round.TimeLeft = round.Break
end

function round.Handle()
	if (round.TimeLeft == -1) then -- Start the first round
		round.Begin()
		return
	end
	
	round.TimeLeft = round.TimeLeft - 1
	
	if (round.TimeLeft == 0) then
		if (round.Breaking) then
			round.Begin()
			round.Breaking = false
		else
			round.End()
			round.Breaking = true
		end
	end
end
timer.Create("round.Handle", 1, 0, round.Handle)

/*
MAX_ROUNDS = 3
ROUND_TIME = 300 --In Seconds
ROUND_TIMELEFT = -1
ROUND_BREAK = 30 --Seconds
local CurRound = 0;
   
function ROUND_REACHED()
    -- Add some event when Current Round Reach the Max Rounds.
    -- If you have map vote thing, add it.
    -- If you need to change specific map, just add here.
    ROUND_MESSEGE( "Max Round reached. Calling Round End Event." )
end
   
function ROUND_MULTIPLAYER()
    if (#player.GetAll() == 2) then
        ROUND_MESSEGE( "Starting New Round in few seconds." )
           
        timer.Simple(8,ROUND_WAIT)
    end;
end
--hook.Add("PlayerInitialSpawn", "ROUND_MP", ROUND_MULTIPLAYER)
   
function ROUND_END()
    ROUND_MESSEGE( "New round starting. Prepare." )
     timer.Simple(5,ROUND_RESTART)
end
   
function ROUND_RESTART()
    game.CleanUpMap(); -- Reset all map entities. if you don't want it, just delete this line.
    -- Add some event when new round start.
       
    --for k, v in ipairs(player.GetAll()) do
   --if v:Team() == TEAM_Boxer then
    -- v:SetPos(Vector(12.404461,-11.611498,95.531250))
   -- end;
       
    if (MAX_ROUNDS == CurRound) then
        ROUND_REACHED()
    end;
       
    CurRound  = CurRound + 1;
end
 --end
   
function ROUND_MESSEGE( say )
    for k, v in ipairs(player.GetAll()) do
       v:PrintMessage(HUD_PRINTTALK, tostring(say));
    end;
end
  
function ROUND_START()
     --for k, v in pairs(player.GetAll()) do
     --if v:Team() == TEAM_Boxer then
     --v:SetPos(Vector(12.404461,-11.611498,95.531250))
    -- end
     ROUND_MESSEGE( "Round Starting" )
     ROUND_TIMELEFT = ROUND_TIME
     end
--end
       
       
function ROUND_HANDLE()
    if (ROUND_TIMELEFT == -1) then -- Start the first round
        ROUND_WAIT()
        return end
      
    ROUND_TIMELEFT = ROUND_TIMELEFT - 1
      
    if (ROUND_TIMELEFT == 0) then
        if (ROUND_BREAK) then
            ROUND_START()
            ROUND_BREAK = false
        else
            ROUND_END()
            ROUND_BREAK = true
        end
    end
end
  
timer.Create("ROUND_HANDLE", 1, 0, ROUND_HANDLE)
  
function ROUND_WAIT()
    if (#player.GetAll() <= 1) then
    ROUND_MESSEGE( "Need More Players To Start.")
    else if (#player.GetAll() == 2) then
    ROUND_MESSEGE( "Please Wait..." )
    timer.Simple(1,ROUND_START)
     end
   end
end

*/