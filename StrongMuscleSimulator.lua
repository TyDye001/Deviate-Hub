--Source By TyDye177 :)
--Hi

if game.PlaceId == 10945472407 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Deviant Hub  |  Strong Muscle Simulator",IntroText = "Deviant Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

	getgenv().TPPlace = "string"
	getgenv().WalkSpeed = "string"

--Values

_G.autoWieght = true
_G.autoRebirth = true
_G.fastPunch = true
_G.multiPunch = true
_G.autoHatch = true
_G.selectEgg = "Basic"
_G.equipBestPets = true
_G.teleportPlayer = true
_G.playerName = "String"
getgenv().autoEasterEgg = true


--Functions

function kamehameha()
	game:GetService("ReplicatedStorage").Skills.KamehamehaFolder.RemoteEvent:FireServer()
end

function smash()
	game:GetService("ReplicatedStorage").Skills.SmashFolder.RemoteEvent:FireServer()
end

function multiPunch()
	while _G.multiPunch == true do
	game:GetService("ReplicatedStorage").Skills.MultiplePunchesFolder.RemoteEvent:FireServer()
	wait(.25)
	end
end

function smashGround()
	while _G.smashGround == true do
		game:GetService("ReplicatedStorage").Skills.GroundPunchFolder.RemoteEvent:FireServer()
		wait(.1)
	end
end

function fastPunch()
	while _G.fastPunch == true do
		game:GetService("ReplicatedStorage"):WaitForChild("Skills"):WaitForChild("CombatFolder"):WaitForChild("RemoteEvent"):FireServer("Right")
		wait(.01)
		game:GetService("ReplicatedStorage"):WaitForChild("Skills"):WaitForChild("CombatFolder"):WaitForChild("RemoteEvent"):FireServer("Left")
		wait(.01)
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

function autoRebirth()
		while _G.autoRebirth == true do
			game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
			wait(.01)
		 end
		end

function rebirth()
	game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
		wait(.01)
	end

function Teleport(teleportPlace)
	local player = game.Players.LocalPlayer
	player.Character.HumanoidRootPart.CFrame = teleportPlace
end

function autoHatch()
	while _G.autoHatch == true do
		game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(_G.selectEgg,1)
		wait(.1)
	 end
	end

function craftAllPets()
	while _G.craftAllPets == true do
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PetAction"):InvokeServer("Craft All")
		wait(.1)
	 end
	end

function equipBestPets()
	while _G.equipBestPets == true do
		game:GetService("ReplicatedStorage").Events.PetAction:InvokeServer("Unequip All")
		wait(.01)
		game:GetService("ReplicatedStorage").Events.PetAction:InvokeServer("Equip Best")
		wait(10)
	 end
	end

local plr = game.Players.LocalPlayer
function autoEasterEgg()
	while getgenv().autoEasterEgg == true do
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1340.19995, 10.4506521, 287.550629, 0.992667794, -1.46975516e-08, 0.12087442, 2.19424052e-08, 1, -5.86060018e-08, -0.12087442, 6.08285688e-08, 0.992667794)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1356.22839, 10.4533472, 236.464783, 0.943055868, 8.99328778e-10, 0.33263433, -3.11141002e-09, 1, 6.11754292e-09, -0.33263433, -6.80414702e-09, 0.943055868)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1383.7583, 10.4545555, 214.96051, 0.969829321, -2.9185804e-08, 0.24378489, 2.09650342e-08, 1, 3.63160275e-08, -0.24378489, -3.01093905e-08, 0.969829321)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1370.61255, 10.4555178, 181.150452, 0.972305417, -1.26833308e-08, -0.233713925, 3.57106664e-08, 1, 9.42962401e-08, 0.233713925, -1.00030817e-07, 0.972305417)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1343.57727, 10.4556074, 157.712738, 0.986661613, -2.72522147e-08, 0.1627848, 3.12946469e-08, 1, -2.22687291e-08, -0.1627848, 2.70659921e-08, 0.986661613)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1362.3811, 10.456809, 147.632797, 0.993912697, 5.42224292e-08, -0.110170402, -6.33189714e-08, 1, -7.9069352e-08, 0.110170402, 8.55639115e-08, 0.993912697)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1343.94763, 10.455533, 125.011818, 0.871247232, -6.76764103e-08, 0.490844399, 1.01362133e-07, 1, -4.20399395e-08, -0.490844399, 8.63802185e-08, 0.871247232)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1321.53687, 10.4552727, 139.569275, 0.982351422, 2.44778207e-08, 0.187044606, -1.42775813e-09, 1, -1.23367684e-07, -0.187044606, 1.2092336e-07, 0.982351422)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1300.67883, 10.4544983, 99.9801636, 0.991015077, 7.97494053e-08, 0.13375023, -9.11104863e-08, 1, 7.88219836e-08, -0.13375023, -9.0299821e-08, 0.991015077)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1290.72107, 10.4540491, 135.269333, -0.964441121, 1.93805114e-08, -0.264297724, 2.54764299e-09, 1, 6.40318021e-08, 0.264297724, 6.10815718e-08, -0.964441121)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1274.67688, 10.4524736, 159.181717, -0.979560435, 2.1905846e-08, 0.20115, 2.27973231e-08, 1, 2.11538853e-09, -0.20115, 6.65783251e-09, -0.979560435)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1237.38367, 10.4497175, 189.512787, -0.710348129, -6.97620877e-08, -0.703850448, -1.12982859e-08, 1, -8.77123369e-08, 0.703850448, -5.43539933e-08, -0.710348129)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1232.05371, 10.4484596, 217.914703, -0.989347458, 1.17631522e-08, -0.145573348, 1.24872543e-10, 1, 7.99570117e-08, 0.145573348, 7.90870871e-08, -0.989347458)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1225.14331, 10.4463873, 243.266235, -0.899308205, -1.17401191e-08, -0.437315404, 9.48150181e-09, 1, -4.63439243e-08, 0.437315404, -4.5823878e-08, -0.899308205)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		plr.Character.HumanoidRootPart.CFrame = CFrame.new(-1261.70227, 10.449338, 230.374176, 0.579262316, 1.02469983e-07, 0.815141201, -4.50554509e-08, 1, -9.36905806e-08, -0.815141201, 1.75448687e-08, 0.579262316)
		wait(.1)
		if getgenv().autoEasterEgg == false then break end
		wait(23.51)
		if getgenv().autoEasterEgg == false then break end
	end
end

--Tabs

local FarmTab = Window:MakeTab({
	Name = "Auto Farm",
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

FarmTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		_G.autoRebirth = (Value)
		autoRebirth()
	end
})

FarmTab:AddToggle({
	Name = "Auto Easter Egg Event",
	Default = false,
	Callback = function(Value)
		getgenv().autoEasterEgg = (Value)
		autoEasterEgg()
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

SkillTab:AddToggle({
	Name = "Multiple Punch",
	Default = false,
	Callback = function(Value)
		_G.multiPunch = (Value)
		multiPunch()
	end
})

SkillTab:AddToggle({
	Name = "Smash Ground",
	Default = false,
	Callback = function(Value)
		_G.smashGround = (Value)
		smashGround()
	end
})

EggTab:AddDropdown({
	Name = "Select Egg",
	Default = "Basic",
	Options = {"Basic", "Town", "Beach", "Crystal", "Forest", "Desert", "Hell", "Cat", "Void", "Anime", "Atlantis", "Angel", "Boss", "Easter"},
	Callback = function(Value)
		_G.selectEgg = (Value)
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

EggTab:AddToggle({
	Name = "Equip Best Pets",
	Default = false,
	Callback = function(Value)
		_G.equipBestPets = (Value)
		equipBestPets()
	end
})

EggTab:AddToggle({
	Name = "Craft All Pets", 
	Default = false,
	Callback = function(Value)
		_G.craftAllPets = (Value)
		craftAllPets()
	end
})

--Dropdowns

MapTab:AddDropdown({
	Name = "Select Area",
	Default = "Spawn",
	Options = {"Spawn", "Jungle", "Beach", "Space", "Forest", "Desert", "Hell", "Candy", "Void", "Anime", "Moon", "Heaven", "Boss", "Easter", "Gym", "Candy Training", "Moon Training", "Above The Map"},
	Callback = function(Value)
		getgenv().TPPlace = (Value)
	end    
})

MiscTab:AddDropdown({
	Name = "Select Speed",
	Default = "Normal",
	Options = {"Normal", "Fast", "Very Fast", "Super Fast", "Too Fast", "Way Too Fast"},
	Callback = function(Value)
		getgenv().WalkSpeed = (Value)
	end    
})

--Buttons

SkillTab:AddButton({
	Name = "Kamehameha (No Damage)",
	Callback = function()
		kamehameha()
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
		Teleport(game:GetService("Workspace").Spawns.Heaven.CFrame)
		elseif getgenv().TPPlace == "Gym" then
		Teleport(game:GetService("Workspace").ScriptSabitleri.Training.CFrame)
		elseif getgenv().TPPlace == "Candy Training" then
		Teleport(game:GetService("Workspace").ScriptSabitleri.Training2.CFrame)
		elseif getgenv().TPPlace == "Moon Training" then
		Teleport(game:GetService("Workspace").ScriptSabitleri.Training3.CFrame)
		elseif getgenv().TPPlace == "Boss" then
		Teleport(game:GetService("Workspace").BossSpawn.CFrame)
		elseif getgenv().TPPlace == "Easter" then
		Teleport(game:GetService("Workspace").EasterSpawn.CFrame)
		elseif getgenv().TPPlace == "Above The Map" then
		Teleport(CFrame.new(-1319.40442, 89.5042191, 209.569458, 0.979221344, -1.4935889e-08, 0.202794418, 1.57723434e-08, 1, -2.50858401e-09, -0.202794418, 5.65500224e-09, 0.979221344))
  	end  
end
})

MapTab:AddTextbox({
	Name = "Select Player",
	Default = "No One",
	TextDisappear = false,
	Callback = function(Value)
		_G.playerName = (Value)
	end	  
})

MapTab:AddButton({
	Name = "Teleport To Player", 
	Callback = function(Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.playerName].Character.HumanoidRootPart.CFrame
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
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 425
		elseif getgenv().WalkSpeed == "Way Too Fast" then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 1000
	end
end
})

MiscTab:AddButton({
	Name = "Collect Rewards",
	Callback = function()
		for i, v in pairs(game:GetService("Workspace").Oduller:GetDescendants()) do
			if v.Name == "TouchInterest" and v.Parent then
				firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
				wait(1)
				firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
			end
		end
	end
})

MiscTab:AddButton({
	Name = "Anti Afk",
	Callback = function()
		wait(0.5)local ba=Instance.new("ScreenGui")
		local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
		local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
		ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
		ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
		ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
		ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
		ca.TextSize=22;da.Parent=ca
		da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
		da.Size=UDim2.new(0,370,0,107)_b.Parent=da
		_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
		_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="made by cofead#7431"
		_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
		ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
		ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
		ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
		game:service'Players'.LocalPlayer.Idled:connect(function()
		bb:CaptureController()bb:ClickButton2(Vector2.new())
		ab.Text="Roblox tried to kick u but i kicked him instead"wait(2)ab.Text="Status : Active"end)
	end
})

--Sliders

end
OrionLib:Init()