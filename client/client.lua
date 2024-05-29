local QBCore = exports['qb-core']:GetCoreObject()


-- Crear NPC 

modelo = "g_m_y_ballaorig_01"
zCoords = Config.CoordenadasNPC
zHead = 144

RequestModel(modelo)
while not HasModelLoaded(modelo) do
	Wait(0)
end

 zPed = CreatePed(4,  
                  modelo,  -- Modelo NPC
                 zCoords,   -- Coordenadas
		           zHead, -- Coordenadas h 
		            true, 
		           false)


-- NPC Bloqueos				   
SetEntityInvincible(zPed, true)
SetPedAsEnemy(zPed, true)
FreezeEntityPosition(zPed, true)
SetPedFleeAttributes(zPed, 0, false)
SetBlockingOfNonTemporaryEvents(zPed, true)
SetPedCombatAttributes(zPed, 17, true)

-- OX TARGET 

pPlayer = PlayerPedId()

exports.ox_target:addLocalEntity(zPed, {
    {
        name = 'npc1',
        label = 'Mercado Negro',
        groups = 'mechanic',
        icon = 'fa-solid fa-comments',
        onSelect = function(data)
			lib.showContext("mercado_negro")
        end
    }
})

-- MENU GENERAL

lib.registerContext({
	id = 'mercado_negro', -- Dont Change / No cambiar
	title = Config.TituloPrincipal,
	options = {
	  {
		title = Config.OxMenu1, -- Armamento
		description = '',
		menu = 'armamento_menu', -- Don't Change / no cambiar
		icon = Config.OxLogoMenu1
	  },
	  {
		title = Config.OxMenu2, -- Hacking
		description = '',
		menu = 'hacking_menu', -- Don't Change / no cambiar
		icon = Config.OxLogoMenu2
	  },
      {
		title = Config.OxMenu3, -- Objetos 
		description = '',
		menu = 'objetos_menu', -- Don't Change / no cambiar
		icon = Config.OxLogoMenu3,
		disabled = "true"
	  },
	}
  })


-- MENU DE ARMAMENTO (SECCIONES)

  lib.registerContext({
	id = 'armamento_menu', -- Don't Change / no cambiar
	title = 'Mercado Negro - Armamento',
	menu = 'mercado_negro',  -- Don't Change / no cambiar
	options = {
		{
			title = 'Pistolas',
			description = '',
			menu = 'pistolas_menu',
			icon = 'gun'
		  },
		  {
			title = 'Subfusiles',
			description = '',
			menu = 'subfusiles_menu',
			icon = 'gun'
		  },
		  {
			title = 'Fusiles de asalto',
			description = '',
			menu = 'fusiles_menu',
			icon = 'gun'
		  },
		  {
			title = 'Francotiradores',
			description = '',
			menu = 'francos_menu',
			icon = 'gun'
		  },
		  {
			title = 'Escopetas',
			description = 'No Disponible',
			menu = 'escopetas_menu',
			icon = 'gun',
			disabled = "true"
		  },
		  {
			title = 'Otros',
			description = '',
			menu = 'otros_menu',
			icon = 'ghost'
		  },
		  
	}
  })


------- PISTOLAS ------------------------------------------------------

AddEventHandler('dylan-nt:dialogo1pistola', function ()
	local input = lib.inputDialog(Config.Titulo1Pistola, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de pistolas que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money['cash'] 

		if dinero >= Config.Precio1Pistola * cantidad then
			TriggerServerEvent('dylan-nt:comprarPistolaMK2', cantidad, Config.Precio1Pistola * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

AddEventHandler('dylan-nt:dialogo2pistola', function ()
	local input = lib.inputDialog(Config.Titulo2Pistola, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de pistolas que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money['cash'] 

		if dinero >= Config.Precio2Pistola * cantidad then
			TriggerServerEvent('dylan-nt:comprarPistolaAP', cantidad, Config.Precio2Pistola * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

AddEventHandler('dylan-nt:dialogo3pistola', function ()
	local input = lib.inputDialog(Config.Titulo3Pistola, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de pistolas que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money['cash'] 

		
		if dinero >= Config.Precio3Pistola * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarPistola50', cantidad, Config.Precio3Pistola * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)




  lib.registerContext({
	id = 'pistolas_menu',
	title = 'Mercado Negro - Pistolas',
	menu = 'armamento_menu',
	options = {
		{
			title = Config.PistolaTitulo1,
			description = '',
			icon = 'gun',
			event = "dylan-nt:dialogo1pistola",
			metadata = {
				{label = "Precio", value = Config.Precio1Pistola},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = Config.PistolaTitulo2,
			description = '',
			icon = 'gun',
			event = "dylan-nt:dialogo2pistola",
			metadata = {
				{label = "Precio", value = Config.Precio2Pistola},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = Config.PistolaTitulo3,
			description = '',
			icon = 'gun',
			event = "dylan-nt:dialogo3pistola",
			metadata = {
				{label = "Precio", value = Config.Precio3Pistola},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  
		}
  })

------------------------------------------------------------------------------------------

-- SECCION SUBFUSILES 

AddEventHandler('dylan-nt:dialogo1subfusil', function ()
	local input = lib.inputDialog(Config.Titulo1Subfusil, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de subfusiles que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money[Config.TipoDinero] 

		
		if dinero >= Config.Precio1Subfusil * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarSubFusil1', cantidad, Config.Precio1Subfusil * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

AddEventHandler('dylan-nt:dialogo2subfusil', function ()
	local input = lib.inputDialog(Config.Titulo2Subfusil, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de subfusiles que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money[Config.TipoDinero] 

		
		if dinero >= Config.Precio2Subfusil * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarSubFusil2', cantidad, Config.Precio2Subfusil * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

AddEventHandler('dylan-nt:dialogo3subfusil', function ()
	local input = lib.inputDialog(Config.Titulo3Subfusil, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de subfusiles que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money[Config.TipoDinero] 

		
		if dinero >= Config.Precio3Subfusil * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarSubFusil2', cantidad, Config.Precio3Subfusil * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

lib.registerContext({
	id = 'subfusiles_menu',
	title = 'Mercado Negro - Subfusiles',
	menu = 'armamento_menu',
	options = {
		{
			title = Config.SubfusilTitulo1,
			description = '',
			icon = 'person-military-rifle',
			event = "dylan-nt:dialogo1subfusil",
			metadata = {
				{label = "Precio", value = Config.Precio1Subfusil},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = Config.SubfusilTitulo2,
			description = '',
			icon = 'person-military-rifle',
			event = "dylan-nt:dialogo2subfusil",
			metadata = {
				{label = "Precio", value = Config.Precio2Subfusil},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = Config.SubfusilTitulo3,
			description = '',
			icon = 'person-military-rifle',
			event = "dylan-nt:dialogo3subfusil",
			metadata = {
				{label = "Precio", value = Config.Precio3Subfusil},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  
		}
  })




------------------------------------------------------------------


------------------------------------------------------------------------------------------

-- SECCION fusiles

AddEventHandler('dylan-nt:dialogo1fusil', function ()
	local input = lib.inputDialog(Config.Titulo1Fusil, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de fusiles que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money[Config.TipoDinero] 

		
		if dinero >= Config.Precio1Fusil * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarFusil1', cantidad, Config.Precio1Fusil * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

AddEventHandler('dylan-nt:dialogo2fusil', function ()
	local input = lib.inputDialog(Config.Titulo1Fusil, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de subfusiles que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money[Config.TipoDinero] 

		
		if dinero >= Config.Precio2Fusil * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarFusil2', cantidad, Config.Precio2Fusil * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

AddEventHandler('dylan-nt:dialogo3fusil', function ()
	local input = lib.inputDialog(Config.Titulo1Fusil, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de subfusiles que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money[Config.TipoDinero] 

		
		if dinero >= Config.Precio3Fusil * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarFusil3', cantidad, Config.Precio3Fusil * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

lib.registerContext({
	id = 'fusiles_menu',
	title = 'Mercado Negro - Fusiles',
	menu = 'armamento_menu',
	options = {
		{
			title = Config.FusilTitulo1,
			description = '',
			icon = 'person-military-rifle',
			event = "dylan-nt:dialogo1fusil",
			metadata = {
				{label = "Precio", value = Config.Precio1Fusil},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = Config.FusilTitulo2,
			description = '',
			icon = 'person-military-rifle',
			event = "dylan-nt:dialogo2fusil",
			metadata = {
				{label = "Precio", value = Config.Precio2Fusil},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = Config.FusilTitulo3,
			description = '',
			icon = 'person-military-rifle',
			event = "dylan-nt:dialogo3fusil",
			metadata = {
				{label = "Precio", value = Config.Precio3Fusil},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  
		}
  })

------------------------------------------------------------------------------------------






-- SECCION francos

AddEventHandler('dylan-nt:dialogo1franco', function ()
	local input = lib.inputDialog(Config.Titulo1Franco, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de subfusiles que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money[Config.TipoDinero] 

		
		if dinero >= Config.Precio1Franco * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarFranco1', cantidad, Config.Precio1Franco * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

AddEventHandler('dylan-nt:dialogo2franco', function ()
	local input = lib.inputDialog(Config.Titulo2Franco, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de subfusiles que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money[Config.TipoDinero] 

		
		if dinero >= Config.Precio2Franco * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarFranco2', cantidad, Config.Precio2Franco * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

AddEventHandler('dylan-nt:dialogo3franco', function ()
	local input = lib.inputDialog(Config.Titulo3Franco, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de subfusiles que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money[Config.TipoDinero] 

		
		if dinero >= Config.Precio3Franco * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarFranco3', cantidad, Config.Precio3Franco * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

lib.registerContext({
	id = 'francos_menu',
	title = 'Mercado Negro - Francos',
	menu = 'armamento_menu',
	options = {
		{
			title = 'Francotirador Pesado',
			description = '',
			icon = 'person-military-rifle',
			event = "dylan-nt:dialogo1franco",
			metadata = {
				{label = "Precio", value = "15000€"},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = 'Rifle de Francotirador',
			description = '',
			icon = 'person-military-rifle',
			event = "dylan-nt:dialogo2franco",
			metadata = {
				{label = "Precio", value = "15000€"},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = 'Francotirador Pesado MK2',
			description = '',
			icon = 'person-military-rifle',
			event = "dylan-nt:dialogo3franco",
			metadata = {
				{label = "Precio", value = "15000€"},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  
		}
  })




-- OTROS MENU

AddEventHandler('dylan-nt:dialogo1otros', function ()
	local input = lib.inputDialog(Config.Titulo1Otros, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de articulos que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money[Config.TipoDinero] 

		
		if dinero >= Config.Precio1Otros * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarOtros1', cantidad, Config.Precio1Otros * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

  lib.registerContext({
	id = 'otros_menu',
	title = 'Mercado Negro - Otros',
	menu = 'armamento_menu',
	options = {
		{
			title = Config.OtrosTitulo1,
			description = '',
			icon = 'utensils',
			event = "dylan-nt:dialogo1otros",
			metadata = {
				{label = "Precio", value = Config.Precio1Otros},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  
		}
  })

------------------------------------------------------------------




  lib.registerContext({
	id = 'hacking_menu',
	title = 'Mercado Negro - Hacking',
	menu = 'mercado_negro',
	options = {
		{
			title = Config.HackTitulo1,
			description = '',
			icon = 'mobile',
			event = "dylan-nt:dialogo1hack",
			metadata = {
				{label = "Precio", value = Config.Precio1Hack},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = Config.HackTitulo2,
			description = '',
			icon = 'laptop',
			event = "dylan-nt:dialogo2hack",
			metadata = {
				{label = "Precio", value = Config.Precio2Hack},
				{label = "Tipo", value = "Dinero Negro"}
			},
		  },
		  {
			title = 'Pronto tendre mas..',
			description = '',
			menu = '',
			disabled = "true",
			icon = 'spinner',
		  },
		  
		}
  })

  AddEventHandler('dylan-nt:dialogo1hack', function ()
	local input = lib.inputDialog(Config.Titulo1Hack, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de articulos que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money[Config.TipoDinero] 

		
		if dinero >= Config.Precio1Hack * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarHack1', cantidad, Config.Precio1Hack * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)

AddEventHandler('dylan-nt:dialogo2hack', function ()
	local input = lib.inputDialog(Config.Titulo2Hack, {
		{type = 'number', label = 'Cantidad', description = 'Cantidad de articulos que quieres comprar', icon = 'hashtag', min = '1', required = "yes"},
		{type = 'checkbox', label = 'Aceptar la compra'},
	  })
	  if input and input[1] and input[2] then
        local cantidad = tonumber(input[1])
        local aceptarCompra = input[2]

	  if aceptarCompra then
		
		local playerData = QBCore.Functions.GetPlayerData()
		local dinero = playerData.money[Config.TipoDinero] 

		
		if dinero >= Config.Precio2Hack * cantidad then
			
			TriggerServerEvent('dylan-nt:comprarHack2', cantidad, Config.Precio2Hack * cantidad)
		else
			TriggerEvent("QBCore:Notify", "No tienes suficiente dinero colega!")
		end
	end
end
end)


























  ---------------------------

  lib.registerContext({
	id = 'objetos_menu',
	title = 'Mercado Negro - Objetos',
	menu = 'mercado_negro',
  })

  RegisterCommand('testearmenu', function()
	lib.showContext('mercado_negro')
  end)







