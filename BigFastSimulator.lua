--Source By TyDye177 :)
--Hi

    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Deviant Hub  |  Big Fat Simulator", IntroText = "Deviant Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

	getgenv().TPPlace = "string"
	getgenv().WalkSpeed = "string"

--Values

getgenv().autoWieght = true
getgenv().autoRebirth = true
getgenv().fastPunch = true
getgenv().autoHatch = true
getgenv().selectEgg = "String"
getgenv().equipBestPets = true
getgenv().craftAllPets = true
getgenv().teleportPlayer = true
getgenv().playerName = "String"

--Functions

function kamehameha()
	game:GetService("ReplicatedStorage").Skills.KamehamehaFolder.RemoteEvent:FireServer()
end

function smash()
	game:GetService("ReplicatedStorage").Skills.SmashFolder.RemoteEvent:FireServer()
end

function smashGround()
	while getgenv().smashGround == true do
		game:GetService("ReplicatedStorage").Skills.GroundPunchFolder.RemoteEvent:FireServer()
		wait(.1)
	end
end

function fastPunch()
	while getgenv().fastPunch == true do
		game:GetService("ReplicatedStorage"):WaitForChild("Skills"):WaitForChild("CombatFolder"):WaitForChild("RemoteEvent"):FireServer("Right")
		wait(.01)
		game:GetService("ReplicatedStorage"):WaitForChild("Skills"):WaitForChild("CombatFolder"):WaitForChild("RemoteEvent"):FireServer("Left")
		wait(.01)
	end
end

local plr = game.Players.LocalPlayer

function autoWeight()
	while getgenv().autoWeight == true do
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
    	while getgenv().autoRebirth == true do
			game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
			wait(.01)
		end
end

function Teleport(teleportPlace)
	local player = game.Players.LocalPlayer
	player.Character.HumanoidRootPart.CFrame = teleportPlace
end

function autoHatch()
	while getgenv().autoHatch == true do
		game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(getgenv().selectEgg,1)
		wait(.1)
	 end
end

function craftAllPets()
	while getgenv().craftAllPets == true do
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PetAction"):InvokeServer("Craft All")
		wait(.1)
	 end
end

function equipBestPets()
	while getgenv().equipBestPets == true do
		game:GetService("ReplicatedStorage").Events.PetAction:InvokeServer("Unequip All")
		wait(.01)
		game:GetService("ReplicatedStorage").Events.PetAction:InvokeServer("Equip Best")
		wait(10)
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
	Name = "Auto Food",
	Default = false,
	Callback = function(Value)
		getgenv().autoWeight = (Value)
        autoWeight()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		getgenv().autoRebirth = (Value)
		autoRebirth()
	end
})

SkillTab:AddToggle({
	Name = "Fast Punch",
	Default = false,
	Callback = function(Value)
		getgenv().fastPunch = (Value)
		fastPunch()
	end
})

SkillTab:AddToggle({
	Name = "Smash Ground",
	Default = false,
	Callback = function(Value)
		getgenv().smashGround = (Value)
		smashGround()
	end
})

EggTab:AddDropdown({
	Name = "Select Egg",
	Default = "Basic",
	Options = {"Basic", "Town", "Beach", "Crystal", "Forest", "Desert", "Hell"},
	Callback = function(Value)
		getgenv().selectEgg = (Value)
	end    
})

EggTab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
		getgenv().autoHatch = (Value)
        autoHatch()
	end    
})

EggTab:AddToggle({
	Name = "Equip Best Pets",
	Default = false,
	Callback = function(Value)
		getgenv().equipBestPets = (Value)
		equipBestPets()
	end
})

EggTab:AddToggle({
	Name = "Craft All Pets", 
	Default = false,
	Callback = function(Value)
		getgenv().craftAllPets = (Value)
		craftAllPets()
	end
})

--Dropdowns

MapTab:AddDropdown({
	Name = "Select Area",
	Default = "Spawn",
	Options = {"Spawn", "Jungle", "Beach", "Space", "Forest", "Desert", "Hell"},
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
		getgenv().playerName = (Value)
	end	  
})

MapTab:AddButton({
	Name = "Teleport To Player", 
	Callback = function(Value)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[getgenv().playerName].Character.HumanoidRootPart.CFrame
	end
})

PotionTab:AddButton({
	Name = "Double Food",
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
		_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made By Tydye177"
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

OrionLib:Init()