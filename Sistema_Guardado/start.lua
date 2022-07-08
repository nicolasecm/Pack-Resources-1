cache = {}
skin = nil

function guardarskin ()
skin = getElementModel ( source )
end

function saveProperty()
local name = getPlayerName(source)
	if isPedDead(source) then
		cache[name] = {
        weapons = false
		}
		skin = getElementModel ( source )
		local weaponsTable = {}
		for i=1, 12 do
			if(getPedWeapon(source, i) ~= 0 and getPedTotalAmmo(source, i) > 0) then
				table.insert(weaponsTable, getPedWeapon(source, i) .. "." .. getPedTotalAmmo(source, i))
			end
    end
		cache[name].weapons = weaponsTable
	else
		cache[name] = {
        weapons = false
		} 
	end
end
addEventHandler("onPlayerWasted", getRootElement(), saveProperty)

function loadProperty()
local name = getPlayerName(source)
	if cache[name] and cache[name].weapons then 
			if cache[name].weapons ~= false then 
				local weps = cache[name].weapons
				for i, node in ipairs(weps) do
				local wepinfo = split(node, ".")
				local wepid = wepinfo[1]
				local wepammo = wepinfo[2]
				giveWeapon ( source, wepid, wepammo )
            end
        end
    end
end
addEventHandler("onPlayerSpawn", getRootElement(), loadProperty)
