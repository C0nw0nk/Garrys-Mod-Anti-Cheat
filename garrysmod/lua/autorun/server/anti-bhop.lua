--Anti Bunny Hopping / Bhop.
hook.Add("OnPlayerHitGround", "Anti-Bhop", function(player)
	--When player touches ground take away and divide their velocity by two (in half).
	player:SetVelocity(- player:GetVelocity() / 2)
end)
