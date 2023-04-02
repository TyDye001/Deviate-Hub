local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Deviant Hub  |  Race Clicking", IntroText = "Deviant Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--Values
getgenv().autoClick = true
getgenv().autoRace = true
getgenv().autoRebirth = true

--Functions
function autoClick()
    while getgenv().autoClick == true do
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ClickService"):WaitForChild("RF"):WaitForChild("Click"):InvokeServer()
        wait(.01)
    end
end

function autoRace()
    while getgenv().autoRace == true do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-695062, -8, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(.01)
    end
end

function autoRebirth()
    while getgenv().autoRebirth == true do
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RebirthService"):WaitForChild("RF"):WaitForChild("Rebirth"):InvokeServer()
        wait(.1)
    end
end

--Tabs
local FarmTab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Dropdowns


--Toggles
FarmTab:AddToggle({
	Name = "Auto Click",
	Default = false,
	Callback = function(Value)
		getgenv().autoClick = (Value)
        autoClick()
	end    
})

FarmTab:AddToggle({
	Name = "Auto Race",
	Default = false,
	Callback = function(Value)
		getgenv().autoRace = (Value)
        autoRace()
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

OrionLib:Init()