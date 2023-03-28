local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Deviant Hub  |  Legends Of Speed", IntroText = "Deviant Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--Values
getgenv().selectExp = "String"
getgenv().autoExp = true
getgenv().autoRebirth = true
getgenv().selectGem = "String"
getgenv().autoGem = true
getgenv().TPPlace = "String"
getgenv().selectCrystal = "String"
getgenv().autoCrystal = true

--Functions
function autoExp()
    while getgenv().autoExp == true do
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer("collectOrb", "Red Orb", selectExp)
        wait(.00000001)
    end
end

function autoRebirth()
    while getgenv().autoRebirth == true do
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("rebirthEvent"):FireServer("rebirthRequest")
        wait(.001)
    end
end     

function autoGem()
    while getgenv().autoGem == true do
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("orbEvent"):FireServer("collectOrb", "Gem", getgenv().selectGem)
        wait(.001)
    end
end     

function Teleport(location)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location
end

function autoCrystal()
    while getgenv().autoCrystal == true do
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer("openCrystal", getgenv().selectCrystal)
        wait(.01)
    end
end

--Tabs
local FarmTab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TPTab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CrystalTab = Window:MakeTab({
	Name = "Crystal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Toggles
FarmTab:AddDropdown({
	Name = "Select Exp",
	Default = "City",
	Options = {"City", "Snow City", "Magma City", "Legends Highway"},
	Callback = function(Value)
		getgenv().selectExp = (Value)
	end    
})

FarmTab:AddToggle({
	Name = "Auto Exp",
	Default = false,
	Callback = function(Value)
		getgenv().autoExp = (Value)
        autoExp()
	end    
})

FarmTab:AddDropdown({
	Name = "Select Gems",
	Default = "City",
	Options = {"City", "Snow City", "Magma City", "Legends Highway"},
	Callback = function(Value)
		getgenv().selectGem = (Value)
	end    
})

FarmTab:AddToggle({
    Name = "Auto Gem",
    Default = false,
    Callback = function(Value)
        getgenv().autoGem = (Value)
        autoGem()
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

TPTab:AddDropdown({
	Name = "Select Location",
	Default = "City",
	Options = {"City", "Snow City", "Magma City", "Legends Highway"},
	Callback = function(Value)
		getgenv().TPPlace = (Value)
	end    
})

TPTab:AddButton({
	Name = "Teleport",
	Callback = function(Value)
        if getgenv().TPPlace == "City" then
            Teleport(CFrame.new(-9684.84473, 60.6541595, 3093.29663, -4.76837158e-05, -0.996190667, 0.0872024298, -1, 4.76837158e-05, -2.08243728e-06, -2.08243728e-06, -0.0872024298, -0.996190667))
        elseif getgenv().TPPlace == "Snow City" then
            Teleport(CFrame.new(-9673.79102, 60.6541595, 3788.24927, 0, 1, -0, -1, 0, 0, 0, 0, 1))
        elseif getgenv().TPPlace == "Magma City" then
            Teleport(CFrame.new(-11053.1162, 218.589584, 4904.35938, -0.000142812729, 0.996185243, -0.0872633383, -0.999999821, -0.000190734863, -0.00054153055, -0.000556118786, 0.0872632489, 0.996185124))
        elseif getgenv().TPPlace == "Legends Highway" then
            Teleport(CFrame.new(-13097.0186, 218.589584, 5913.35889, -0.000142812729, 0.996185243, -0.0872633383, -0.999999821, -0.000190734863, -0.00054153055, -0.000556118786, 0.0872632489, 0.996185124))    
        end
    end
})

CrystalTab:AddDropdown({
	Name = "Select Location",
	Default = "Red Crystal",
	Options = {"Red Crystal", "Blue Crystal", "Purple Crystal", "Yellow Crystal", "Snow Crystal", "Inferno Crystal", "Electro Legends Crystal"},
	Callback = function(Value)
		getgenv().selectCrystal = (Value)
	end    
})

CrystalTab:AddToggle({
	Name = "Auto Crystal",
	Default = false,
	Callback = function(Value)
		getgenv().autoCrystal = (Value)
        autoCrystal()
	end    
})

OrionLib:Init()
