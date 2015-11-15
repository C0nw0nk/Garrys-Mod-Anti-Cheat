--Anti Speed Hacking.
hook.Add("Move", "Anti-SpeedHack", function(player, playermovedata)
	--Each player class will have different speeds so lets grab that number.
	local max_speed = player:GetMaxSpeed()
	--Get the players current speed.
	local speed = player:GetVelocity():Length()
	--The maximum falling speed you must need a map higher on the z axis than vertigo to exceed this. (Takes a long drop to exceed that value.)
	local fall_speed = 2670
	--If player on the ground speed exceeds max_speed then reduce their speed back to max_speed.
	if speed > max_speed and player:IsOnGround() then
		playermovedata:SetVelocity(player:GetVelocity() * (max_speed/speed))
	end
	--If player in the air fall speed exceeds fall_speed then reduce their falling speed back to fall_speed.
	if speed > fall_speed and !player:IsOnGround() then
		playermovedata:SetVelocity(player:GetVelocity() * (fall_speed/speed))
	end
end)
