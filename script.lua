local portals = script.Parent
local portalOne = portals.Portal1.Teleport
local portalTwo = portals.Portal2.Teleport
local debounce = false

game.Players.PlayerAdded:Connect(function(player)
	local Character = player.Character or player.CharacterAdded:Wait()
	portalOne.Touched:Connect(function(hit)
		if not debounce and hit.Parent:FindFirstChild("Humanoid") then
			debounce = true
			Character:MoveTo(portalTwo.Position + Vector3.new(10,0,0))
			wait(1)
			debounce = false
		end
	end)
	
	portalTwo.Touched:Connect(function(hit)
		if not debounce and hit.Parent:FindFirstChild("Humanoid") then
			debounce = true
			Character:MoveTo(portalOne.Position + Vector3.new(10,0,0))
			wait(1)
			debounce = false
		end
	end)
	
end)