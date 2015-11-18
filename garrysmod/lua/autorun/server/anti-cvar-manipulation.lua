--Time to check each clients console variables to see if they changed.
--The reason it has to be on a timer is because they can do a server variable bypass after they connected.
--(Does not have to always be active before they join the server.)
local check_time = 30

--Length of the random console command we will generate each time. (Never keep this the same cheaters could block it.)
--This is why we make it dynamic.
local length = 70

--Console variable manipulation ban length.
--This is for the amount of time we want to ban cheaters who change their client side variables.
--0 = permanently
local ban_length = 0

--Server variables you do not want to allow players to bypass or change client side.
--Any value you change in this if it does not match up to the client they will be banned (Regardless of the current server side value).
local blacklistedVars = {
	sv_allowcslua = 0,
	mat_wireframe = 0,
	sv_cheats = 0
}

--Begin generating a dynamic command string.
local str = ""
--{97, 122} a-z lower-case | {65, 90} A-Z upper-case | {48, 57} 0-9 numeric.
for i = 1, length do
	str = str..string.char(math.random(48, 57))
end
--End generating a dynamic command string.

--Lets add our new console command to the server.
--If a players console variable differs they will execute this command and ban themselves theoretically. 
concommand.Add(str, function(ply)
	--Player will ban themselves permanently for cheating.
	ply:Ban(ban_length)
end)
--End console command addition.

--Lets create a timer that players will execute if their console variables differ from the server. (Console Variable Manipulation)
local function GetCVarManipulation()
	for k, v in pairs(player.GetAll()) do
		for _, c in pairs(blacklistedVars) do
			--If the console command "_" is not equal to "c" then execute the concommand.add function and ban self.
			v:SendLua("local GetConVarNumber = GetConVarNumber if GetConVarNumber('".._.."') != "..c.." then LocalPlayer():ConCommand('"..str.."') end")
		end
	end
end
timer.Create('GetCheatCVars',check_time,0, GetCVarManipulation)
--End timer.
