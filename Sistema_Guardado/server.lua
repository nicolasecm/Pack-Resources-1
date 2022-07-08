function playerLogin (thePreviousAccount, theCurrentAccount, autoLogin)
  if  not (isGuestAccount (getPlayerAccount (source))) then
      local playerMoney = getAccountData (theCurrentAccount, "dinero")
      local playerSkin = getAccountData (theCurrentAccount, "skin")
      local playerHealth = getAccountData (theCurrentAccount, "vida")
      local playerArmor = getAccountData (theCurrentAccount, "armadura")
      local playerX = getAccountData (theCurrentAccount, "x")
      local playerY = getAccountData (theCurrentAccount, "y")
      local playerZ = getAccountData (theCurrentAccount, "z")
      local playerInt = getAccountData (theCurrentAccount, "int")
      local playerDim = getAccountData (theCurrentAccount, "dim")
      local playerWanted = getAccountData (theCurrentAccount, "nivelBusqueda")
      local playerTeam = getAccountData (theCurrentAccount, "Team")
      local playerWeaponID0 = getAccountData (theCurrentAccount, "weaponID0")
      local playerWeaponID1 = getAccountData (theCurrentAccount, "weaponID1")
      local playerWeaponID2 = getAccountData (theCurrentAccount, "weaponID2")
      local playerWeaponID3 = getAccountData (theCurrentAccount, "weaponID3")
      local playerWeaponID4 = getAccountData (theCurrentAccount, "weaponID4")
      local playerWeaponID5 = getAccountData (theCurrentAccount, "weaponID5")
      local playerWeaponID6 = getAccountData (theCurrentAccount, "weaponID6")
      local playerWeaponID7 = getAccountData (theCurrentAccount, "weaponID7")
      local playerWeaponID8 = getAccountData (theCurrentAccount, "weaponID8")
      local playerWeaponID9 = getAccountData (theCurrentAccount, "weaponID9")
      local playerWeaponID10 = getAccountData (theCurrentAccount, "weaponID10")
      local playerWeaponID11 = getAccountData (theCurrentAccount, "weaponID11")
      local playerWeaponID12 = getAccountData (theCurrentAccount, "weaponID12")
      local playerWeaponAmmo0 = getAccountData (theCurrentAccount, "weaponAmmo0")
      local playerWeaponAmmo1 = getAccountData (theCurrentAccount, "weaponAmmo1")
      local playerWeaponAmmo2 = getAccountData (theCurrentAccount, "weaponAmmo2")
      local playerWeaponAmmo3 = getAccountData (theCurrentAccount, "weaponAmmo3")
      local playerWeaponAmmo4 = getAccountData (theCurrentAccount, "weaponAmmo4")
      local playerWeaponAmmo5 = getAccountData (theCurrentAccount, "weaponAmmo5")
      local playerWeaponAmmo6 = getAccountData (theCurrentAccount, "weaponAmmo6")
      local playerWeaponAmmo7 = getAccountData (theCurrentAccount, "weaponAmmo7")
      local playerWeaponAmmo8 = getAccountData (theCurrentAccount, "weaponAmmo8")
      local playerWeaponAmmo9 = getAccountData (theCurrentAccount, "weaponAmmo9")
      local playerWeaponAmmo10 = getAccountData (theCurrentAccount, "weaponAmmo10")
      local playerWeaponAmmo11 = getAccountData (theCurrentAccount, "weaponAmmo11")
      local playerWeaponAmmo12 = getAccountData (theCurrentAccount, "weaponAmmo12")
      spawnPlayer (source, playerX, playerY, playerZ, 0, playerSkin, playerInt, playerDim)
      setPlayerMoney (source, playerMoney)
      setTimer (setElementHealth, 500, 1, source, playerHealth)
      setTimer (setPedArmor, 500, 1, source, playerArmor)
      setTimer (setPlayerWantedLevel, 500, 1, source, playerWanted)
      giveWeapon(source, playerWeaponID0, playerWeaponAmmo0, true)
      giveWeapon(source, playerWeaponID1, playerWeaponAmmo1, false)
      giveWeapon(source, playerWeaponID2, playerWeaponAmmo2, false)
      giveWeapon(source, playerWeaponID3, playerWeaponAmmo3, false)
      giveWeapon(source, playerWeaponID4, playerWeaponAmmo4, false)
      giveWeapon(source, playerWeaponID5, playerWeaponAmmo5, false)
      giveWeapon(source, playerWeaponID6, playerWeaponAmmo6, false)
      giveWeapon(source, playerWeaponID7, playerWeaponAmmo7, false)
      giveWeapon(source, playerWeaponID8, playerWeaponAmmo8, false)
      giveWeapon(source, playerWeaponID9, playerWeaponAmmo9, false)
      giveWeapon(source, playerWeaponID10, playerWeaponAmmo10, false)
      giveWeapon(source, playerWeaponID11, playerWeaponAmmo11, false)
      giveWeapon(source, playerWeaponID12, playerWeaponAmmo12, false)
      setCameraTarget (source, source)
      fadeCamera(source, true, 2.0) 
  end
end
addEventHandler ("onPlayerLogin", getRootElement(), playerLogin)

function onLogout ()
	kickPlayer (source, nil, "Logging out is disallowed.")
end
addEventHandler ("onPlayerLogout", getRootElement(), onLogout)

function onQuit (quitType, reason, responsibleElement)
  if not (isGuestAccount (getPlayerAccount (source))) then
    account = getPlayerAccount (source)
    if (account) then
      local x,y,z = getElementPosition (source)
      setAccountData (account, "dinero", tostring (getPlayerMoney (source)))
      setAccountData (account, "skin", tostring (getPedSkin (source)))
      setAccountData (account, "vida", tostring (getElementHealth (source)))
      setAccountData (account, "armadura", tostring (getPedArmor (source)))
      setAccountData (account, "R", r)
      setAccountData (account, "G", g)
      setAccountData (account, "B", b)
      setAccountData (account, "x", x)
      setAccountData (account, "y", y)
      setAccountData (account, "z", z)
      setAccountData (account, "int", getElementInterior (source))
      setAccountData (account, "dim", getElementDimension (source))
      setAccountData (account, "nivelBusqueda", getPlayerWantedLevel (source))
      setAccountData (account, "weaponID0", getPedWeapon (source, 0))
      setAccountData (account, "weaponID1", getPedWeapon (source, 1))
      setAccountData (account, "weaponID2", getPedWeapon (source, 2))
      setAccountData (account, "weaponID3", getPedWeapon (source, 3))
      setAccountData (account, "weaponID4", getPedWeapon (source, 4))
      setAccountData (account, "weaponID5", getPedWeapon (source, 5))
      setAccountData (account, "weaponID6", getPedWeapon (source, 6))
      setAccountData (account, "weaponID7", getPedWeapon (source, 7))
      setAccountData (account, "weaponID8", getPedWeapon (source, 8))
      setAccountData (account, "weaponID9", getPedWeapon (source, 9))
      setAccountData (account, "weaponID10", getPedWeapon (source, 10))
      setAccountData (account, "weaponID11", getPedWeapon (source, 11))
      setAccountData (account, "weaponID12", getPedWeapon (source, 12))
      setAccountData (account, "weaponAmmo0", getPedTotalAmmo (source, 0))
      setAccountData (account, "weaponAmmo1", getPedTotalAmmo (source, 1))
      setAccountData (account, "weaponAmmo2", getPedTotalAmmo (source, 2))
      setAccountData (account, "weaponAmmo3", getPedTotalAmmo (source, 3))
      setAccountData (account, "weaponAmmo4", getPedTotalAmmo (source, 4))
      setAccountData (account, "weaponAmmo5", getPedTotalAmmo (source, 5))
      setAccountData (account, "weaponAmmo6", getPedTotalAmmo (source, 6))
      setAccountData (account, "weaponAmmo7", getPedTotalAmmo (source, 7))
      setAccountData (account, "weaponAmmo8", getPedTotalAmmo (source, 8))
      setAccountData (account, "weaponAmmo9", getPedTotalAmmo (source, 9))
      setAccountData (account, "weaponAmmo10", getPedTotalAmmo (source, 10))
      setAccountData (account, "weaponAmmo11", getPedTotalAmmo (source, 11))
      setAccountData (account, "weaponAmmo12", getPedTotalAmmo (source, 12))
	    setAccountData (account, "weaponAmmo12", getPedTotalAmmo (source, 12))
    end
  end
end
addEventHandler ("onPlayerQuit", getRootElement(), onQuit)


hosp_loc = {
	{ 1173, -1323, 15, 270}, 
	{ 2038, -1411, 17, 130},
	{ 1242, 327, 19, 340}, 
	{ 1609, 1816, 12, 360},
	{ -2655, 635, 14, 180},
	{ -2200, -2311, 30, 320},
	{ -320, 1049, 20, 0 },
	{ -1514.5, 2524, 56, 0 } 
}
FadeTimer = 2

function getDistance(thePlayer) 
	local px,py,pz = getElementPosition( thePlayer )
	local closestDistance 
	local closestPoint
	for i=1,#hosp_loc do 
		local hx, hy, hz = hosp_loc[i][1], hosp_loc[i][2], hosp_loc[i][3]
		local distance = getDistanceBetweenPoints3D (hx, hy, hz, px, py, pz) 
		if not closestDistance or distance < closestDistance then
			closestDistance = distance 
			closestPoint = hosp_loc[i] 
		end
	end
	local x = (tostring(closestPoint[1]))
	local y = (tostring(closestPoint[2]))
	local z = (tostring(closestPoint[3])) 
	local r = (tostring(closestPoint[4])) 
	
	skin = getElementData(thePlayer, "respawn-skin" )
	spawnPlayer ( thePlayer, x, y, z, r, skin )
	setElementModel (thePlayer, skin)
  fadeCamera(thePlayer,true,1.5)
end

function Respawn()	
	local skinid = getElementModel(source)
	setElementData(source, "respawn-skin", skinid)
	setTimer(getDistance, tonumber(FadeTimer)*1000, 1, source) 
end

addEventHandler("onPlayerWasted", getRootElement(), Respawn ) --When player dies function is triggered