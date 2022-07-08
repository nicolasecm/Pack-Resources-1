
--[[

    Resource:   bank (written by 50p)
    Version:    2.1
    
    Filename:   test.eventsAndFunctions.lua

]]


local bankResource = getResourceFromName( "bank" )

-----------------------------------------------------------

addEventHandler( "onPlayerWithdrawMoney", getRootElement( ),
	function( bankMarker, amount, atm )
	-- remove -[[ and ]] below to enable withdrawal limits
	--[[
		if amount > 1000 and atm then
			outputChatBox( "You can't withdraw so much money from ATM!", source )
			cancelEvent( )
			return
		end
	]]
		outputChatBox( "Has retirado $"..tostring( amount ), source, 0, 255, 0 )
	end
)

-----------------------------------------------------------

addEventHandler( "onPlayerDepositMoney", getRootElement( ),
	function( bankMarker, amount, atm )
		outputChatBox( "Has depositado $"..tostring( amount ), source, 255, 0, 255 )
	end
)

-----------------------------------------------------------

addEventHandler( "onPlayerTransferMoney", getRootElement( ),
	function( bankMarker, amount, receiver, atm )
		outputChatBox( "Has transferido $"..tostring( amount ).." a "..getClientName( receiver )..".", source, 255, 0, 0 )
		outputChatBox( "Te han enviado $"..tostring( amount ).." de ".. getClientName( source )..".", receiver, 255, 255, 0 )
	end
)

-----------------------------------------------------------

addEventHandler( "onPlayerEnterBank", getRootElement( ),
	function( bankMarker, atm )
		if not atm then
			local players = call( bankResource, "getPlayersInBank", bankMarker )
			local bankname = call( bankResource, "getBankName", bankMarker )
			outputChatBox( "Estás en '".. nombre del banco .."'. Hay "..tostring( #jugadores).." personas en este banco.", fuente )
			local balance = call( bankResource, "getBankAccountBalance", source )
			if balance then
				outputChatBox( "Saldo cuenta bancaria: ".. tostring( balance ), source )
			end
		end
	end
)

-----------------------------------------------------------

addEventHandler( "onPlayerLeaveBank", getRootElement( ),
	function( bankMarker, atm )
		local bankName = call( bankResource, "getBankName", bankMarker )
		outputChatBox( "Te fuiste '".. bankName.."'.", source, 255, 255, 0 )
	end
)


