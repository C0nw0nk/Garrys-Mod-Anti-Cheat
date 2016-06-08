--Prevent players killing themselves on ladders.
--[[
The exploit with approaching a ladder grappling onto a ladder is that as soon as you kill yourself when
you make the grapple noise you will respawn back on the ladder. Not in your normal spawn location. (Work's only with HL2 ladders not CSS.)
]]
hook.Add("CanPlayerSuicide", "Ladder.Glitch", function(player)
	--If player is valid and a player.
	if player:IsValid() and player:IsPlayer() then
		--If the player is on the ladder do not allow them to kill themselves.
		if player:GetMoveType() == MOVETYPE_LADDER then
			--Do not allow player to suicide.
			return false
		end
		--If the player is close enough to the ladder to grab it do not allow them to kill themselves.
		for _, ent in pairs(ents.FindInSphere(player:GetPos(),100)) do
			--If the class name near the player matches with any kind of ladder classes.
			if string.match(ent:GetClass(), "info_ladder*") or string.match(ent:GetClass(), "func_useableladder") or string.match(ent:GetClass(), "func_ladder*") then
				--Do not allow player to suicide
				return false
			end
		end
	end
end)
