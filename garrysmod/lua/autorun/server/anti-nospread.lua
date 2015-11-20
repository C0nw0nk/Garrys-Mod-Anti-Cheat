--Credits for the contents on this script goto Willox
--https://facepunch.com/showthread.php?t=1445838&p=46905364&viewfull=1#post46905364

local meta = FindMetaTable "Entity"
meta.OldFireBullets = meta.OldFireBullets or meta.FireBullets

local function rand()
	return math.random() * 2 - 1
end

function meta:FireBullets( bullet, suppress )
	local spread = bullet.Spread

	if type(spread) == "Vector" then
		bullet.Spread = vector_origin

		math.randomseed( CurTime() + math.sqrt( bullet.Dir.x ^ 2 * bullet.Dir.y ^ 2 * bullet.Dir.z ^ 2 ) )

		bullet.Dir = bullet.Dir + Vector( spread.x * rand(), spread.y * rand(), spread.z * rand() )
	end

	self:OldFireBullets( bullet, suppress )
end
