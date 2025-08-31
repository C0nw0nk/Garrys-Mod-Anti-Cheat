--Anti Recoil. (Lets make you look up,down,horizontal,vertical when shooting.)
--Primary.Recoil
--Primary.KickDown
--Primary.KickUp
--Primary.KickHorizontal
--Primary.KickVertical
--Secondary.Recoil
--Secondary.KickDown
--Secondary.KickUp
--Secondary.KickHorizontal
--Secondary.KickVertical

hook.Add("StartCommand", "StartCommand-Anti-Recoil", function(pl, key)
	--If player is holding down their attack keys
	
	--If the player is using primary attack and the clip on their weapon is greater than 0 (not empty).
	if pl:KeyDown(IN_ATTACK) and pl:GetActiveWeapon():Clip1() != nil and pl:GetActiveWeapon():Clip1() > 0 then
		--If the weapon they are holding has a recoil method attached to it by the SWEP.
		--If the recoil method is kickup.
		if pl:GetActiveWeapon().Primary.KickUp != nil then
			--Force the player to look up while primary firing.
			pl:SetEyeAngles( pl:EyeAngles() +  Angle(-pl:GetActiveWeapon().Primary.KickUp,0,0) ) --Angle (Up,Down | Left,Right | Screen rotate)
		end
		
		--If the recoil method is kickdown.
		if pl:GetActiveWeapon().Primary.KickDown != nil then
			--Force the player to look down while primary firing.
			pl:SetEyeAngles( pl:EyeAngles() +  Angle(pl:GetActiveWeapon().Primary.KickDown,0,0) ) --Angle (Up,Down | Left,Right | Screen rotate)
		end
		
		--If the recoil method is recoil.
		if pl:GetActiveWeapon().Primary.Recoil != nil then
			--Force the player to look down while primary firing.
			pl:SetEyeAngles( pl:EyeAngles() +  Angle(pl:GetActiveWeapon().Primary.Recoil,0,0) ) --Angle (Up,Down | Left,Right | Screen rotate)
		end
	end
	
	--If the player is using secondary attack and the clip on their weapon is greater than 0 (not empty).
	if pl:KeyDown(IN_ATTACK2) and pl:GetActiveWeapon():Clip1() != nil and pl:GetActiveWeapon():Clip1() > 0 then
		--If the weapon they are holding has a recoil method attached to it by the SWEP.
		--If the recoil method is kickup.
		if pl:GetActiveWeapon().Secondary.KickUp != nil then
			--Force the player to look up secondary firing.
			pl:SetEyeAngles( pl:EyeAngles() +  Angle(-pl:GetActiveWeapon().Secondary.KickUp,0,0) ) --Angle (Up,Down | Left,Right | Screen rotate)
		end
		
		--If the recoil method is kickdown.
		if pl:GetActiveWeapon().Secondary.KickDown !=nil then
			--Force the player to look down while secondary firing.
			pl:SetEyeAngles( pl:EyeAngles() +  Angle(pl:GetActiveWeapon().Secondary.KickDown,0,0) ) --Angle (Up,Down | Left,Right | Screen rotate)
		end
		
		--If the recoil method is recoil.
		if pl:GetActiveWeapon().Secondary.Recoil != nil then
			--Force the player to look down while secondary firing.
			pl:SetEyeAngles( pl:EyeAngles() +  Angle(pl:GetActiveWeapon().Secondary.Recoil,0,0) ) --Angle (Up,Down | Left,Right | Screen rotate)
		end
	end
end)

--End Anti Recoil.
