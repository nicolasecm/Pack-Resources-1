-- Do not remove the green text!
-- ><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><

-- Script by: John_Scott
-- Skype: dekaman12
-- Release date: 2013.01.06
-- Made in Hungary
-- Original langue: Hungaryan

-- >>>>> Hard Bytes Team <<<<<
-- facebook.com/HardBytesTeam
-- IP: 91.82.85.203:22076
-- >>>>> Hard Bytes Team <<<<<
 
-- ><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><
-- Do not remove the green text!


function PlayerLogin(username,password,checksave)
	if not (username == "") then
		if not (password == "") then
			local account = getAccount ( username, password )
			if ( account ~= false ) then
				logIn(source, account, password)

				triggerClientEvent (source,"hideLoginWindow",getRootElement())
				
					if checksave == true then
						triggerClientEvent(source,"saveLoginToXML",getRootElement(),username,password)
					else
						triggerClientEvent(source,"resetSaveXML",getRootElement(),username,password)
					end
				
			else
				triggerClientEvent(source,"set_warning_text",getRootElement(),"Login","Nombre de usuario y/o contraseña incorrectos")
			end
		else
			triggerClientEvent(source,"set_warning_text",getRootElement(),"Login","¡Por favor, introduzca su contraseña!")
		end
	else
		triggerClientEvent(source,"set_warning_text",getRootElement(),"Login","¡Por favor, introduzca su nombre de usuario!")
	end
end
addEvent("onRequestLogin",true)
addEventHandler("onRequestLogin",getRootElement(),PlayerLogin)



function registerPlayer(username,password,passwordConfirm)
	if not (username == "") then
		if not (password == "") then
			if not (passwordConfirm == "") then
				if password == passwordConfirm then
					local account = getAccount (username,password)
					if (account == false) then
						local accountAdded = addAccount(tostring(username),tostring(password))
						if (accountAdded) then
							outputChatBox ("#00FF00Cuenta Registrada! [Usuario: #FFFFFF" .. username .. " #00FF00| Contraseña: #FFFFFF" .. password .. "#00FF00 ]",source,255,255,255,true )
							outputChatBox ("#FF0000- HBT - Login Panel By.: John_Scott",source,255,255,255,true )
						else
							triggerClientEvent(source,"set_warning_text",getRootElement(),"Register","¡Error! ¡Por favor inténtalo de nuevo con un nuevo nombre de usuario o contraseña!")
						end
					else
						triggerClientEvent(source,"set_warning_text",getRootElement(),"Register","¡Este nombre de usuario ya está en uso!")
					end
				else
					triggerClientEvent(source,"set_warning_text",getRootElement(),"Register","¡Las contraseñas no coinciden!")
				end
			else
				triggerClientEvent(source,"set_warning_text",getRootElement(),"Register","Por favor, confirme su contraseña!")
			end
		else
			triggerClientEvent(source,"set_warning_text",getRootElement(),"Register","Por favor ingrese su contraseña!")
		end
	else
		triggerClientEvent(source,"set_warning_text",getRootElement(),"Register","Por favor, introduzca su nombre de usuario!")
	end
end
addEvent("onRequestRegister",true)
addEventHandler("onRequestRegister",getRootElement(),registerPlayer)


