local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--Values

_G.autoClick = true

--Functions

function autoClick()
    while _G.autoClick == true do
        local args = {
            [1] = 1
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Aero"):WaitForChild("AeroRemoteServices"):WaitForChild("ClickService"):WaitForChild("Click"):FireServer(unpack(args))
        wait(.001)
    end
end

--Tabs

local FarmTab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Toggles

FarmTab:AddToggle({
    Name = "Auto Click",
    Default = false,
    Callback = function(Value)
        _G.autoClick = (Value)
        autoClick()
    end
})


OrionLib:Init()