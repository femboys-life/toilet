local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
Notify({
Description = "made by seanthetoiletgamer";
Title = "Loaded!";
Duration = 5;
});

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Fuzki-UI-Library/main/FuzkiLibrary.lua"))()
local Main = Library:Create("Toilet Hub", "ALO Sanctuary")

local Lock = Main:CreateSection("Main")
local Pleyernegger = Main:CreateSection("Player")
local Macro = Main:CreateSection("Teleports")
local Credits = Main:CreateSection("Credits")

Lock:CreateLabel("Main")
Lock:CreateButton("O", "Unlock All Mats", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AjMfJkpj", true))()
end)
Lock:CreateButton("O", "Unlock Renown Crewneck Pullover", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YLVKnZxh", true))()
end)
Lock:CreateButton("O", "Infinite Orbs", function()
    for i,v in pairs(workspace.Map.Orbs:GetChildren()) do
        if v then
        game:GetService("ReplicatedStorage").NetManagedInstances.orbCollection:FireServer(v)
        end
    end
end)

Pleyernegger:CreateLabel("Player")
Pleyernegger:CreateButton("O", "Fly", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QGLvkvU7"))()
end)
Pleyernegger:CreateSlider(16, 500, "Walkspeed", function(val)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
end)
Pleyernegger:CreateSlider(50, 500, "Jumppower", function(dockrr)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = dockrr
end)

Macro:CreateLabel("Teleports")
Macro:CreateButton("O", "ALO Store", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-197, 83, 81)
end)
Macro:CreateButton("O", "ALO Center", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13, 91, 305)
end)
Macro:CreateButton("O", "ALO Lounge", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141, 100, 512)
end)
Macro:CreateButton("O", "ALO Spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-353, 63, 155)
end)
Macro:CreateButton("O", "ALO Screen", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-207, 106, 316)
end)
Macro:CreateButton("O", "Out of Bounds", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338, 475, 628)
end)
Macro:CreateButton("O", "Edge of the Map", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4953, 17, -4962)
end)

Credits:CreateLabel("Credits")
Credits:CreateLabel("toilet#5244 - Beta Tester")
Credits:CreateLabel("verbb#9595 - Beta Tester")
Credits:CreateLabel("xHeptc#2255 - Library Creator")
Credits:CreateLabel("st#8325 - Toilet God")
