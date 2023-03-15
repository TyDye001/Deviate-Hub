--Source By TyDye177 :)

if game.PlaceId == 10945472407 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Deviant Hub  |  Strong Muscle Simulator",IntroText = "Deviant Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

	getgenv().TPPlace = "string"
	getgenv().WalkSpeed = "string"

--Values

_G.autoWieght = true
_G.autoHatch = true
_G.selectEgg = "Basic"
_G.autoRebirth = true
_G.fastPunch = true

--Functions

function kamehameha()
	game:GetService("ReplicatedStorage").Skills.KamehamehaFolder.RemoteEvent:FireServer()
end

function lightningStrike()
	game:GetService("ReplicatedStorage").Skills.LightningStrikeFolder.RemoteEvent:FireServer()
end

function smash()
	game:GetService("ReplicatedStorage").Skills.SmashFolder.RemoteEvent:FireServer()
end



function fastPunch()
	while _G.fastPunch == true do
		game:GetService("ReplicatedStorage"):WaitForChild("Skills"):WaitForChild("CombatFolder"):WaitForChild("RemoteEvent"):FireServer("Right")
		wait(.0001)
		game:GetService("ReplicatedStorage"):WaitForChild("Skills"):WaitForChild("CombatFolder"):WaitForChild("RemoteEvent"):FireServer("Left")
		wait(.0001)
	end
end

local plr = game.Players.LocalPlayer

function autoWeight()
	while _G.autoWeight == true do
	game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("SkillToggle"):FireServer("NumberOne", true)
	wait(.00001)
	for i,v in pairs(plr.Character:GetChildren()) do
	if v:IsA("Tool") then
	local args = {
	[1] = tostring(v.Name)
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Weight"):FireServer(unpack(args))			
	wait(.0001)
	end
end
end
end

function autoHatch()
	while _G.autoHatch == true do
		game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(_G.selectEgg,1)
		wait(.0001)
	 end
	end

function equipBestPets()
	game:GetService("ReplicatedStorage").Events.PetAction:InvokeServer("Unequip All")
	wait(.01)
	game:GetService("ReplicatedStorage").Events.PetAction:InvokeServer("Equip Best")
	wait(.01)
end

function Teleport(teleportPlace)
	local player = game.Players.LocalPlayer
	player.Character.HumanoidRootPart.CFrame = teleportPlace
end

function autoRebirth()
	while _G.autoRebirth == true do
		game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
		wait(.0001)
	 end
	end

function rebirth()
	game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
	wait(.0001)
end

--Tabs

local FarmTab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local RebirthTab = Window:MakeTab({
	Name = "Rebirth",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local SkillTab = Window:MakeTab({
	Name = "Skills",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MapTab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local EggTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local PotionTab = Window:MakeTab({
	Name = "Potions",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Toggles

FarmTab:AddToggle({
	Name = "Auto Weight",
	Default = false,
	Callback = function(Value)
		_G.autoWeight = (Value)
        autoWeight()
	end    
})

RebirthTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.autoRebirth = (Value)
		autoRebirth()
	end
})

SkillTab:AddToggle({
	Name = "Fast Punch",
	Default = false,
	Callback = function(Value)
		_G.fastPunch = (Value)
		fastPunch()
	end
})

EggTab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
		_G.autoHatch = (Value)
        autoHatch()
	end    
})

--Dropdowns

MapTab:AddDropdown({
	Name = "Select Area",
	Default = "Spawn",
	Options = {"Spawn", "Jungle", "Beach", "Space", "Forest", "Desert", "Hell", "Candy", "Void", "Anime", "Moon", "Heaven"},
	Callback = function(Value)
		getgenv().TPPlace = (Value)
	end    
})

EggTab:AddDropdown({
	Name = "Select Egg",
	Default = "Basic",
	Options = {"Basic", "Town", "Beach", "Crystal", "Forest", "Desert", "Hell", "Cat", "Void", "Anime", "Atlantis", "Angel"},
	Callback = function(Value)
		_G.selectEgg = (Value)
	end    
})

MiscTab:AddDropdown({
	Name = "Select Speed",
	Default = "Normal",
	Options = {"Normal", "Fast", "Very Fast", "Super Fast", "Too Fast"},
	Callback = function(Value)
		getgenv().WalkSpeed = (Value)
	end    
})

--Buttons

RebirthTab:AddButton({
	Name = "Rebirth",
	Callback = function()
		rebirth()
	end
})

SkillTab:AddButton({
	Name = "Kamehameha No Cooldown",
	Callback = function()
		kamehameha()
	end
})

SkillTab:AddButton({
	Name = "Lightning Strike No Cooldown",
	Callback = function()
		lightningStrike()
	end
})

SkillTab:AddButton({
	Name = "Smash No Cooldown",
	Callback = function()
		smash()
	end
})

MapTab:AddButton({
	Name = "Teleport",
	Callback = function()
		if getgenv().TPPlace == "Spawn" then
		Teleport(game:GetService("Workspace").Spawns.Spawn.CFrame)
	    elseif getgenv().TPPlace == "Jungle" then
		Teleport(game:GetService("Workspace").Spawns.Jungle.CFrame)
		elseif getgenv().TPPlace == "Beach" then
		Teleport(game:GetService("Workspace").Spawns.Beach.CFrame)
		elseif getgenv().TPPlace == "Space" then
		Teleport(game:GetService("Workspace").Spawns.Space.CFrame)
		elseif getgenv().TPPlace == "Forest" then
		Teleport(game:GetService("Workspace").Spawns.Forest.CFrame)
		elseif getgenv().TPPlace == "Desert" then
		Teleport(game:GetService("Workspace").Spawns.Desert.CFrame)
		elseif getgenv().TPPlace == "Hell" then
		Teleport(game:GetService("Workspace").Spawns.Hell.CFrame)
		elseif getgenv().TPPlace == "Candy" then
		Teleport(game:GetService("Workspace").Spawns.Candy.CFrame)
		elseif getgenv().TPPlace == "Void" then
		Teleport(game:GetService("Workspace").Spawns.Void.CFrame)
		elseif getgenv().TPPlace == "Anime" then
		Teleport(game:GetService("Workspace").Spawns.Anime.CFrame)
		elseif getgenv().TPPlace == "Moon" then
		Teleport(game:GetService("Workspace").Spawns.Moon.CFrame)
		elseif getgenv().TPPlace == "Heaven" then
  	end  
end
})

EggTab:AddButton({
	Name = "Equip Best Pets",
	Callback = function()
		equipBestPets()
	end
})

EggTab:AddButton({
	Name = "Craft All Pets", 
	Callback = function()
		game:GetService("ReplicatedStorage").Events.PetAction:InvokeServer("Craft All")
	end
})

PotionTab:AddButton({
	Name = "Double Muscle",
	Callback = function()
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("MuscleUse"):FireServer()
	end

})

PotionTab:AddButton({
	Name = "Triple Gems",
	Callback = function()
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GemUse"):FireServer()
	end
})

PotionTab:AddButton({
	Name = "Super Luck",
	Callback = function()
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("LuckUse"):FireServer()
	end
})

PotionTab:AddButton({
	Name = "Ultra Luck",
	Callback = function()
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("UltraLuckUse"):FireServer()
	end
})

MiscTab:AddButton({
	Name = "Set Speed",
	Callback = function()
		if getgenv().WalkSpeed == "Normal" then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16	
		elseif getgenv().WalkSpeed == "Fast" then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
		elseif getgenv().WalkSpeed == "Very Fast" then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 125
		elseif getgenv().WalkSpeed == "Super Fast" then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 250
		elseif getgenv().WalkSpeed == "Too Fast" then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 1000
	end
end
})

end
OrionLib:Init()