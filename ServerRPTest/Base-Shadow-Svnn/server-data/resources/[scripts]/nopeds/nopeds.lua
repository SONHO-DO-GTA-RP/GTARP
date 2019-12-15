-- Thanks to @nobody
Citizen.CreateThread(function()
	while true do
    	-- These natives has to be called every frame.
    	SetVehicleDensityMultiplierThisFrame(0.00)
		SetPedDensityMultiplierThisFrame(0.00)
		SetRandomVehicleDensityMultiplierThisFrame(0.00)
		SetParkedVehicleDensityMultiplierThisFrame(0.00)
		SetScenarioPedDensityMultiplierThisFrame(0.00, 0.00)
		
		local playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed) 
		RemoveVehiclesFromGeneratorsInArea(pos['x'] - 500.0, pos['y'] - 500.0, pos['z'] - 500.0, pos['x'] + 500.0, pos['y'] + 500.0, pos['z'] + 500.0);
		
		-- These natives do not have to be called everyframe.
		SetGarbageTrucks(0)
		SetRandomBoats(0)
    	
		Citizen.Wait(1)
	end
end)