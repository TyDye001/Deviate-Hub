local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--Values

getgenv().selectpet1 = "String"
getgenv().selectpet2 = "String"
getgenv().selectpet3 = "String"
getgenv().selectpet4 = "String"
getgenv().selectpet = "String"
getgenv().autoSellPetToggle = true
getgenv().autoSellPet = true

--Functions
local processedPet = {}
game:GetService("Players").LocalPlayer.petsFolder.ChildAdded:Connect(function(child)
    if child:IsA("Part") then
        processedPet[child] = false
    end
end)
function autoSellPet()
    while getgenv().autoSellPet == true do
        for i, v in pairs(game:GetService("Players").LocalPlayer.petsFolder:GetDescendants()) do
            wait(.1)
            processedPet = {}
            if v.Name == getgenv().selectpet1 and not processedPet[game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name)] then
                processedPet[game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name)] = true
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("sellPetEvent"):FireServer("sellPet", game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name))
                wait(.1)
            elseif v.Name == getgenv().selectpet2 and not processedPet[game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name)] then
                processedPet[game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name)] = true
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("sellPetEvent"):FireServer("sellPet", game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name))
                wait(.1)
            elseif v.Name == getgenv().selectpet3 and not processedPet[game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name)] then
                processedPet[game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name)] = true
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("sellPetEvent"):FireServer("sellPet", game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name))
                wait(.1)
            elseif v.Name == getgenv().selectpet4 and not processedPet[game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name)] then
                processedPet[game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name)] = true
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("sellPetEvent"):FireServer("sellPet", game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name))
            elseif v.Name == getgenv().selectpet5 and not processedPet[game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name)] then
                processedPet[game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name)] = true
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("sellPetEvent"):FireServer("sellPet", game:GetService("Players").LocalPlayer.petsFolder:WaitForChild(v.Parent.Name):WaitForChild(v.Name))
                wait(.1)
            end
        end
    end
end

--Tabs

local TestTab = Window:MakeTab({
	Name = "Test",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Dropdowns

TestTab:AddDropdown({
    Name = "Select Sell Pets 1",
    Default = "None",
    Options = {"None", "Orange Birdie", "Tan Dog", "Red Golem", "Yellow Butterfly", "Purple Falcon", "White Pegasus"},
    Callback = function(Value)
        getgenv().selectpet1 = (Value)
    end
})

TestTab:AddDropdown({
    Name = "Select Sell Pets 2",
    Default = "None",
    Options = {"None", "Orange Birdie", "Tan Dog", "Red Golem", "Yellow Butterfly", "Purple Falcon", "White Pegasus"},
    Callback = function(Value)
        getgenv().selectpet2 = (Value)
    end
})

TestTab:AddDropdown({
    Name = "Select Sell Pets 3",
    Default = "None",
    Options = {"None", "Orange Birdie", "Tan Dog", "Red Golem", "Yellow Butterfly", "Purple Falcon", "White Pegasus"},
    Callback = function(Value)
        getgenv().selectpet3 = (Value)
    end
})

TestTab:AddDropdown({
    Name = "Select Sell Pets 4",
    Default = "None",
    Options = {"None", "Orange Birdie", "Tan Dog", "Red Golem", "Yellow Butterfly", "Purple Falcon", "White Pegasus"},
    Callback = function(Value)
        getgenv().selectpet4 = (Value)
    end
})

TestTab:AddDropdown({
    Name = "Select Sell Pets 5",
    Default = "None",
    Options = {"None", "Orange Birdie", "Tan Dog", "Red Golem", "Yellow Butterfly", "Purple Falcon", "White Pegasus"},
    Callback = function(Value)
        getgenv().selectpet5 = (Value)
    end
})

--Toggles

TestTab:AddToggle({
    Name = "Auto Sell",
    Default = false,
    Callback = function(Value)
        getgenv().autoSellPetToggle = (Value)
        while getgenv().autoSellPetToggle == true do
            getgenv().autoSellPet = true
            autoSellPet()
            wait(.6)
            getgenv().autoSellPet = false
            wait(.1)
        end
    end
})

OrionLib:Init()