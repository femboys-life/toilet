local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sean's ALO Sanctuary | sean pro toilet gamer#5554", "DarkTheme")

--Main
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")
Section:NewButton("Unlock all Mats", "Unlock all the yoga mats", function()
    local mat = {"Black", "Pink","Yellow","LightGreen","DarkGreen"}
    for i,v in ipairs(mat) do
    game:GetService("ReplicatedStorage").NetManagedInstances.UnlockMat:FireServer(v)
end
end)
Section:NewButton("Unlock Renown Crewneck Pullover", "free item omg omg real no robux", function()
    local a = {["pose"] = "LotusPose",["length"] = 1}
    game:GetService("ReplicatedStorage").NetManagedInstances.BeginMeditation:FireServer(a)
    wait()
    game:GetService("ReplicatedStorage").NetManagedInstances.FinishMeditation:FireServer()
end)
Section:NewButton("Infinite Blue Orb", "get blue ballz", function()
    while wait() do
    game:GetService("ReplicatedStorage").NetManagedInstances.orbCollection:FireServer(1)
end
end)

--Teleport
local Tab = Window:NewTab("Teleport")
local Section = Tab:NewSection("Teleport")
Section:NewButton("ALO Store", "Teleport to the ALO Store", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-197, 83, 81)
end)
Section:NewButton("ALO Center", "Teleport to the meditation thingy", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13, 91, 305)
end)
Section:NewButton("ALO Lounge", "Idk i think its a lounge", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141, 100, 512)
end)
Section:NewButton("ALO Spawn", "The spawn place", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-353, 63, 155)
end)
Section:NewButton("ALO Screen", "The screen thingy idk how 2 explain", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-207, 106, 316)
end)
Section:NewButton("Out Of Bounds", "Teleport out of the map lmao what else do u expect?", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338, 475, 628) 
end)
Section:NewButton("Edge Of The Map", "Teleport out of the map and fall to death", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4953, 17, -4962) 
end)

--Player
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player")
Section:NewButton("Fly", "Fly around the map and make everyone think you're a hacker, press E to toggle the script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TR011F4C3/PANDA/main/scripts/fly.lua", true))()
end)
 
Section:NewButton("Noclip", "Clip through walls and make everyone confused, press V to toggle the script", function()
    game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
    game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
    while true do
    	 game:GetService("RunService").Stepped:wait()
	   	 game.Players.LocalPlayer.Character.Head.CanCollide = false
	     game.Players.LocalPlayer.Character.Torso.CanCollide = false
end
end)
 
Section:NewToggle("Infinite Jump", "Jump Infinitely, he just has a good gaming chair", function(state)
    if state then
_G.infinjump = true
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
    else
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)
 
 
 
Section:NewSlider("Walkspeed", "Walk like flash or sonic lol", 500, 0, function(ussususususuusususuususus) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ussususususuusususuususus
end)
 
Section:NewSlider("Jumppower", "Jump really really really high", 500, 0, function(hellothisismicrosofttechsupport) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = hellothisismicrosofttechsupport
end)

--Credits
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")
Section:NewButton("sean pro toilet gamer#5554", "Click The button to copy", function()
setclipboard("sean pro toilet gamer#5554")
end)