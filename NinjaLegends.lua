local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Deviant Hub  |  Ninja Legends", IntroText = "Deviant Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--Values
getgenv().autoSwing = true
getgenv().TPPlace = "String"
getgenv().autoSell = true
getgenv().bestWeapon = true
getgenv().bestBelt = true
getgenv().bestSkill = true
getgenv().autoHoop = true
getgenv().selectEgg = "String"
getgenv().autoHatch = "String"
getgenv().selectSpeed = "String"
getgenv().collectRewards = "String"
getgenv().autoEvo = true

--Functions
function autoSwing()
    while getgenv().autoSwing == true do
        game.Players.LocalPlayer.ninjaEvent:FireServer("swingKatana")
        wait(.001)
    end
end

function autoSell()
    while getgenv().autoSell == true do
        for i, v in pairs(game:GetService("Workspace").sellAreaCircles.sellAreaCircle16:GetDescendants()) do
            if v.Name == "TouchInterest" then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
            end
        end
    end
end

function bestWeapon()
    while getgenv().bestWeapon == true do
        game.Players.LocalPlayer.ninjaEvent:FireServer("buyAllSwords", "Blazing Vortex Island")
        wait(.1)
    end
end

function bestBelt()
    while getgenv().bestBelt == true do
        game.Players.LocalPlayer.ninjaEvent:FireServer("buyAllBelts", "Blazing Vortex Island")
        wait(.1)
    end
end

function bestSkill()
    while getgenv().bestSkill == true do
        game.Players.LocalPlayer.ninjaEvent:FireServer("buyAllSkills", "Blazing Vortex Island")
        wait(.1)
    end
end

function autoHoop()
    while getgenv().autoHoop == true do
        for i, v in ipairs(workspace:WaitForChild("Hoops"):GetChildren()) do
            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("hoopEvent"):FireServer("useHoop", v)
            wait(.00000001)
        end
    end
end

function Teleport(location)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location
end

function autoHatch()
    while getgenv().autoHatch == true do
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer("openCrystal", getgenv().selectEgg)
        wait(.01)
    end
end

function autoEvo()
    while getgenv().autoEvo == true do
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("autoEvolveRemote"):InvokeServer("autoEvolvePets")
        wait(.5)
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
	Name = "Crystals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

TPTab:AddDropdown({
	Name = "Select Location",
	Default = "Spawn",
	Options = {"Spawn", "Enchanted Island", "Astral Island", "Mystical Island", "Space Island", "Tundra Island", "Eternal Island", "SandStorm Island", "Thunderstorm Island", "Ancient Inferno Island", "Midnight Island", "Mythical Souls Island", "Winter Wonder Island", "Golden Master Island", "Dragon Legend Island", "Cybernetic Legend Island", "Skystorm Ultraus Island", "Chaos Legend Island", "Soul Fusion Island", "Dark Elements Island", "Inner Peace Island", "Blazing Vortex Island"},
	Callback = function(Value)
		getgenv().TPPlace = (Value)
	end    
})

CrystalTab:AddDropdown({
    Name = "Select Crystal",
    Default = "Blue Crystal",
    Options = {"Blue Crystal", "Purple Crystal", "Enchanted Island", "Astral Island", "Inferno Crystal", "Galaxy Crystal", "Frozen Crystal", "Eternal Crystal", "Storm Crystal", "Thunder Crystal", "Ultra Shockwave Crystal", "Secret Blades Crystal", "Infinity Void Crystal"},
    Callback = function(Value)
        getgenv().selectEgg = (Value)
    end
})

MiscTab:AddDropdown({
    Name = "Select Speed",
    Default = "Normal",
    Options = {"Normal", "Fast", "Very Fast", "Super Fast"},
    Callback = function(Value)
        getgenv().selectSpeed = (Value)
    end
})

--Toggles
FarmTab:AddToggle({
    Name = "Auto Swing",
    Default = false,
    Callback = function(Value)
        getgenv().autoSwing = (Value)
        autoSwing()
    end
})

FarmTab:AddToggle({
    Name = "Auto Sell",
    Default = false,
    Callback = function(Value)
        getgenv().autoSell = (Value)
        autoSell()
    end
})

FarmTab:AddToggle({
    Name = "Auto Buy Best Weapon",
    Default = false,
    Callback = function(Value)
        getgenv().bestWeapon = (Value)
        bestWeapon()
    end
})

FarmTab:AddToggle({
    Name = "Auto Buy Best Belt",
    Default = false,
    Callback = function(Value)
        getgenv().bestBelt = (Value)
        bestBelt()
    end
})

FarmTab:AddToggle({
    Name = "Auto Buy Best Skill",
    Default = false,
    Callback = function(Value)
        getgenv().bestSkill = (Value)
        bestSkill()
    end
})

FarmTab:AddToggle({
    Name = "Auto Hoop",
    Default = false,
    Callback = function(Value)
        getgenv().autoHoop = (Value)
        autoHoop()
    end
})

CrystalTab:AddToggle({
    Name = "Auto Hatch",
    Default = false,
    Callback = function(Value)
        getgenv().autoHatch = (Value)
        autoHatch()
    end
})

CrystalTab:AddToggle({
    Name = "Auto Evolve",
    Default = false,
    Callback = function(Value)
        getgenv().autoEvo = (Value)
        autoEvo()
    end
})

TPTab:AddButton({
	Name = "Teleport",
	Callback = function()
            if TPPlace == "Spawn" then 
                Teleport(CFrame.new(95.0569992, 0.23999998, 30.1200008, 0, 0, -1, 0, 1, 0, 1, 0, 0))
            elseif TPPlace == "Enchanted Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToEnchantedIsland.CFrame)
            elseif TPPlace == "Astral Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToAstralIsland.CFrame)
            elseif TPPlace == "Mystical Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToMysticalIsland.CFrame)
            elseif TPPlace == "Space Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToSpaceIsland.CFrame)
            elseif TPPlace == "Tundra Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToTundraIsland.CFrame)
            elseif TPPlace == "Eternal Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToEternalIsland.CFrame)
            elseif TPPlace == "SandStorm Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToSandstormIsland.CFrame)
            elseif TPPlace == "Thunderstorm Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToThunderstormIsland.CFrame)
            elseif TPPlace == "Ancient Inferno Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToAncientInfernoIsland.CFrame)
            elseif TPPlace == "Midnight Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToMidnightIsland.CFrame)
            elseif TPPlace == "Mythical Souls Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToMythicalSoulsIsland.CFrame)
            elseif TPPlace == "Winter Wonder Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToWinterWonderIsland.CFrame)
            elseif TPPlace == "Golden Master Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToGoldenMasterIsland.CFrame)
            elseif TPPlace == "Dragon Legend Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToDragonLegendIsland.CFrame)
            elseif TPPlace == "Cybernetic Legend Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToCyberneticLegendsIsland.CFrame)
            elseif TPPlace == "Skystorm Ultraus Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToSkystormUltrausIsland.CFrame)
            elseif TPPlace == "Chaos Legend Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToChaosLegendsIsland.CFrame)
            elseif TPPlace == "Soul Fusion Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToSoulFusionIsland.CFrame)
            elseif TPPlace == "Dark Elements Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToDarkElementsIsland.CFrame)
            elseif TPPlace == "Inner Peace Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToInnerPeaceIsland.CFrame)
            elseif TPPlace == "Blazing Vortex Island" then
                Teleport(game:GetService("Workspace").areaTeleportParts.groundToBlazingVortexIsland.CFrame)
            end    
    end
})

MiscTab:AddButton({
    Name = "Set Speed",
    Callback = function(Value)
        if getgenv().selectSpeed == "Normal" then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
        elseif getgenv().selectSpeed == "Fast" then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
        elseif getgenv().selectSpeed == "Very Fast" then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        elseif getgenv().selectSpeed == "Super Fast" then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 175
        end
    end
})

MiscTab:AddButton({
    Name = "Collect Rewards",
    Callback = function(Value)
        for i, v in pairs(game:GetService("Workspace").ultraNinjitsuChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").mythicalChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").goldenChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").enchantedChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").groupRewardsCircle:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").saharaChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").thunderChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").ancientChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").midnightShadowChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").lightKarmaChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").evilKarmaChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").wonderChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").goldenZenChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").dojoCircles.dojoCollectCircle:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").skystormMastersChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").chaosLegendsChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
        for i, v in pairs(game:GetService("Workspace").soulFusionChest:GetDescendants()) do
            if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
                wait(.1)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(.1)
            end
        end
    end
})

OrionLib:Init()