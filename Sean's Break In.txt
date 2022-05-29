local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sean's Break In | sean pro toilet gamer#5554", "DarkTheme")

--Main
local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Food") --Food Tab
Section:NewButton("Apple", "Literally just an apple, what do you expect?", function()
local A_1 = "Apple"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
Section:NewButton("Cookie", "It's a cookie bro", function()
local A_1 = "Cookie"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
Section:NewButton("Bloxy Cola", "It's a bloxy cola, what else?", function()
local A_1 = "BloxyCola"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
Section:NewButton("Chips", "Chips 4 Noobs", function()
local A_1 = "Chips"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
Section:NewButton("Lollipop", "Haha get diabetes", function()
local A_1 = "Lollipop"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
Section:NewButton("Poisoned Pizza", "Cool Pizza from the Attic", function()
local A_1 = "EpicPizza"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
Section:NewButton("Pizza", "Freshly baked pizza", function()
local A_1 = "Pizza3" 
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
Section:NewButton("Expired Bloxy Cola", "The flavor and carbonation has decreased because due to expiration", function()
local A_1 = "ExpiredBloxyCola"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
local Section = Tab:NewSection("Healing")
Section:NewButton("Cure", "Basically a Medkit but in a bottle", function()
local A_1 = "Cure"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
Section:NewButton("Medkit", "Can heal others but cannot heal yourself", function()
local A_1 = "Medkit"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
local Section = Tab:NewSection("Weapons") --Weapons Tab
Section:NewButton("Bat", "Just and ordinary bat, what do you expect?", function()
local A_1 = "Bat"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
Section:NewButton("Sword", "If you like swords, consider playing noob attack", function()
local A_1 = "LinkedSword"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
Section:NewButton("Hammer", "Basically a Mjolnir but weaker lmao", function()
local A_1 = true
local A_2 = "Hammer"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.BasementWeapon
Event:FireServer(A_1, A_2)
end)
local Section = Tab:NewSection("Other") --Others Tab
Section:NewButton("Planks", "Protecc the house", function()
for i = 1, 200 do
wait(1)
local A_1 = "Plank"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end
end)
Section:NewButton("Remove fog", "No more scary fogs omg!!!!!", function()
game.Lighting.FogStart = 696969
game.Lighting.FogEnd = 696969
end)
Section:NewButton("Truck Key", "Unlock the new Uncle Pete ending lol", function()
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GetKeys
Event:FireServer()
end)
Section:NewButton("Basement Key", "Unlock the Basement", function()
local A_1 = "Key"
local Event = game:GetService("ReplicatedStorage").RemoteEvents.GiveTool
Event:FireServer(A_1)
end)
Section:NewButton("Befriend the Cat", "Become friends with the cat, spam click this to lag the game", function()
local Event = game:GetService("ReplicatedStorage").RemoteEvents.Cattery
Event:FireServer()
end)
Section:NewButton("Kill Larry's Troops", "Will lag the game and might crash", function()
for i,v in pairs(game.Workspace.BadGuys:GetChildren()) do
for i = 1, 50 do
game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v,10)
game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v,996)
game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v,9)
game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v,8)
game:GetService("ReplicatedStorage").RemoteEvents.HitBadguy:FireServer(v,996)
end
end
end)
Section:NewButton("Open the Safe", "Open the Safe behind one of the paintings", function()
game.ReplicatedStorage.RemoteEvents.Safe:FireServer(game:GetService("Workspace").CodeNote.SurfaceGui.TextLabel.Text)
end)




--Player
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player") --Player Tab
Section:NewButton("Walkspeed", "Walk like flash or sonic", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100 --The higher the number, the faster you walk
end)
Section:NewButton("Jumppower", "Jump higher lol", function()
local dgyagdyuafydfaudauygfdyuagfyda = game.Players.LocalPlayer

dgyagdyuafydfaudauygfdyuagfyda.Character.Humanoid.JumpPower = 300 --The higher the number, the higher you jump
end)

 
 
 
--Roles
local Tab = Window:NewTab("Roles")
local Section = Tab:NewSection("Roles") --Roles Tab
Section:NewButton("Swat", "Get the M16A1 gun", function()
local A_1 = "SwatGun"
local A_2 = true
local Event = game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole
Event:FireServer(A_1, A_2)
end)
Section:NewButton("Police", "Get the Colt M1911 gun", function()
local A_1 = "Gun"
local A_2 = true
local Event = game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole
Event:FireServer(A_1, A_2)
end)
Section:NewButton("Fighter", "Toy sword lmao imagine", function()
local A_1 = "Sword"
local A_2 = true
local Event = game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole
Event:FireServer(A_1, A_2)
end)
Section:NewButton("Guest", "Get sword lol", function()
local A_1 = "LinkedSword"
local A_2 = true
local Event = game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole
Event:FireServer(A_1, A_2)
end)
Section:NewButton("Lollipop", "Speedrun getting diabetes", function()
local A_1 = "Lollipop"
local A_2 = true
local Event = game:GetService("ReplicatedStorage").RemoteEvents.OutsideRole
Event:FireServer(A_1, A_2)
end) 
 
 
 
 
--Teleport
local Tab = Window:NewTab("Teleport")
local Section = Tab:NewSection("Teleport") --Teleport Tab
Section:NewButton("Attic", "Go to the Attic without having to carry the ladder", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14.697402, 36.4197998, -208.872543, -0.644324303, -3.71446873e-08, -0.764752388, -3.10436228e-08, 1, -2.24157866e-08, 0.764752388, 9.29764976e-09, -0.644324303)
end)
Section:NewButton("Basement", "Top 3 best places to hide dead bodies", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(69.8310394, -13.7755079, -165.977463, 0.95127666, 9.82377957e-10, 0.308338702, 2.93541635e-10, 1, -4.09166079e-09, -0.308338702, 3.98281141e-09, 0.95127666)
end)
Section:NewButton("Sewers", "Just a sewer, hopefully nothing will go wrong", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(265.276642, -273.991974, -1554.37134, -0.99914068, -2.66190581e-09, -0.0414475761, -2.67436318e-09, 1, 2.45109155e-10, 0.0414475761, 3.55744406e-10, -0.99914068)
end)
Section:NewButton("Fight Arena", "The place where Scarry Larry tortures kids", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-69.2129364, -286.247009, -1470.77979, -0.60776031, 1.01906053e-07, 0.79412055, 2.24060646e-08, 1, -1.11177755e-07, -0.79412055, -4.97763075e-08, -0.60776031)
end)
Section:NewButton("Sewer Dealer", "Guy selling sus drink", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111.958931, -271.61615, -1519.72192, -0.516001701, 0.0252035502, -0.856216669, 0.0753103346, 0.997031152, -0.016037453, 0.853270531, -0.0727573186, -0.516367912)
end)
Section:NewButton("Larry's House", "Haha ur house get ruined", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1812.02661, 4961.30664, -2453.44116, 0.998638332, -2.23233911e-08, -0.0521681011, 2.30351187e-08, 1, 1.30417206e-08, 0.0521681011, -1.42256606e-08, 0.998638332)
end)
Section:NewButton("Bloxy Mart", "For an unspecified reason the store sells money for robux", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-430.400269, 4.75861835, -118.748116, -0.0400790386, 4.17824992e-08, 0.999196529, -6.09064017e-08, 1, -4.42591315e-08, -0.999196529, -6.26313295e-08, -0.0400790386)
end)
Section:NewButton("Pete's Car", "Our lovely uncle's car", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.1903534, 8.42566395, -59.2815132, -0.997427762, -9.33169653e-10, -0.0716788396, -7.80057297e-10, 1, -2.16408202e-09, 0.0716788396, -2.10260187e-09, -0.997427762)
end)
 
 
 
 
--Credits
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")
Section:NewButton("sean pro toilet gamer#5554", "Click The button to copy", function()
setclipboard("sean pro toilet gamer#5554")
end)