local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sean's Nico's Nextbots | sean pro toilet gamer#5554", "DarkTheme")

--Player
local Tab = Window:NewTab("Player")
local Section = Tab:NewSection("Player")
Section:NewButton("Speed", "Walk faster than sanic",function(s) --Credits to Skribb11es
    walkSpeed = 75
    
    local UIS = game:GetService("UserInputService")
    local RS = game:GetService("RunService")
    local W, A, S, D
    local xVelo, yVelo
    
    RS.RenderStepped:Connect(function()
       local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
       local C = game.Workspace.CurrentCamera
       local LV = C.CFrame.LookVector
       for i,v in pairs(UIS:GetKeysPressed()) do
           if v.KeyCode == Enum.KeyCode.W then
               W = true
           end
           if v.KeyCode == Enum.KeyCode.A then
               A = true
           end
           if v.KeyCode == Enum.KeyCode.S then
               S = true
           end
           if v.KeyCode == Enum.KeyCode.D then
               D = true
           end
       end
    
       if W == true and S == true then
           yVelo = false
           W,S = nil
       end
    
       if A == true and D == true then
           xVelo = false
           A,D = nil
       end
    
       if yVelo ~= false then
           if W == true then
               if xVelo ~= false then
                   if A == true then
                       local LeftLV = (C.CFrame * CFrame.Angles(0, math.rad(45), 0)).LookVector
                       HRP.Velocity = Vector3.new((LeftLV.X * walkSpeed), HRP.Velocity.Y, (LeftLV.Z * walkSpeed))
                       W,A = nil
                   else
                       if D == true then
                           local RightLV = (C.CFrame * CFrame.Angles(0, math.rad(-45), 0)).LookVector
                           HRP.Velocity = Vector3.new((RightLV.X * walkSpeed), HRP.Velocity.Y, (RightLV.Z * walkSpeed))
                           W,D = nil
                       end
                   end
               end
           else
               if S == true then
                   if xVelo ~= false then
                       if A == true then
                           local LeftLV = (C.CFrame * CFrame.Angles(0, math.rad(135), 0)).LookVector
                           HRP.Velocity = Vector3.new((LeftLV.X * walkSpeed), HRP.Velocity.Y, (LeftLV.Z * walkSpeed))
                           S,A = nil
                       else
                           if D == true then
                               local RightLV = (C.CFrame * CFrame.Angles(0, math.rad(-135), 0)).LookVector
                               HRP.Velocity = Vector3.new((RightLV.X * walkSpeed), HRP.Velocity.Y, (RightLV.Z * walkSpeed))
                               S,D = nil
                           end
                       end
                   end
               end
           end
       end
    
       if W == true then
           HRP.Velocity = Vector3.new((LV.X * walkSpeed), HRP.Velocity.Y, (LV.Z * walkSpeed))
       end
       if S == true then
           HRP.Velocity = Vector3.new(-(LV.X * walkSpeed), HRP.Velocity.Y, -(LV.Z * walkSpeed))
       end
       if A == true then
           local LeftLV = (C.CFrame * CFrame.Angles(0, math.rad(90), 0)).LookVector
           HRP.Velocity = Vector3.new((LeftLV.X * walkSpeed), HRP.Velocity.Y, (LeftLV.Z * walkSpeed))
       end
       if D == true then
           local RightLV = (C.CFrame * CFrame.Angles(0, math.rad(-90), 0)).LookVector
           HRP.Velocity = Vector3.new((RightLV.X * walkSpeed), HRP.Velocity.Y, (RightLV.Z * walkSpeed))
       end
    
       xVelo, yVelo, W, A, S, D = nil
    end)
end)
Section:NewButton("Autorun", "Automatically run", function(v)
_G.Autorun = v
while _G.Autorun do
local player = game.Players.LocalPlayer
local runnin = player.Character.scripts['running']
runnin.Value = true
wait()
end
end)
Section:NewSlider("Height", "Become as tall as Lebron Jahames", 50, 2, function(s)
    for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == game.Players.LocalPlayer.Name then
    v.Humanoid.HipHeight = s --max 5.5 min 1.6
    end end
end)
Section:NewSlider("Field Of View", "69420 inch tv", 120, 1, function(fov)
    game.Players.LocalPlayer.PlayerScripts.options.fov.Value = fov
end)
Section:NewButton("Infinite jump", "pls only press once", function(v) 
    local Player = game:GetService'Players'.LocalPlayer;
    local UIS = game:GetService'UserInputService';
    _G.JumpHeight = 50;
    function Action(Object, Function) if Object ~= nil then Function(Object); end end
    UIS.InputBegan:connect(function(UserInput)
        if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
            Action(Player.Character.Humanoid, function(self)
                if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                    Action(self.Parent.HumanoidRootPart, function(self)
                        self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                    end)
                end
            end)
        end
    end)
end)
Section:NewButton("Quick Reset", "Press R to activate", function(v)
    local UserInputService = game:GetService("UserInputService")
    UserInputService.InputBegan:Connect(function(input,gameProcessedEvent)
                if not gameProcessedEvent then
                    if input.UserInputType == Enum.UserInputType.Keyboard then
                        if input.KeyCode == Enum.KeyCode.R then
                            keypress(0x1B) wait()
                            keyrelease(0x1B) wait()
                            game:GetService("ReplicatedStorage").events.respawnchar:FireServer()
                            keypress(0x1B) wait()
                            keyrelease(0x1B)
                        end
                    end
                else
                    local skip
                end
            end)

end)
Section:NewToggle("Passive Bots", "the monsters will stop chasing u", function(v) --Credits to Felix
player = game.Players.LocalPlayer
if v then
if player.Character.scripts:FindFirstChild('safe') then
local old_cf = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
if not player.Character.scripts.safe.Value == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").spawns.mall.SpawnLocation.CFrame
wait(1)
end
safe = player.Character.scripts.safe
safe.Parent = nil;
wait(0.7)
game.Players.LocalPlayer.Character.HumanoidRootPart.Position = old_cf
end
else
if not player.Character.scripts:FindFirstChild('safe') then
local old_cf = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
keypress(0x1B) wait()
keyrelease(0x1B) wait()
game:GetService("ReplicatedStorage").events.respawnchar:FireServer()
keypress(0x1B) wait()
keyrelease(0x1B)
wait(2)
game.Players.LocalPlayer.Character.HumanoidRootPart.Position = old_cf
end
end
end)

--Teleport
local Tab = Window:NewTab("Teleport")
local Section = Tab:NewSection("Teleport")
Section:NewButton("Out of Bounds", "Go outside of the map", function(v)
    save_CFRAME = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.406494140625, 102.73624420166016, 295.02508544921875)
end)
Section:NewButton("Safe Room", "Teleport back lol", function(v)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = save_CFRAME
end)

--ESP
local Tab = Window:NewTab("ESP")
local Section = Tab:NewSection("ESP")
Section:NewToggle("Player ESP", "Spidey Senses", function(v)
_G.player_esp = v
while _G.player_esp do
wait(0.1)
for __,v in pairs(game.Workspace:GetChildren()) do
for i,b in pairs(game.Players:GetChildren()) do
if b.Name==game.Players.LocalPlayer.Name then local skip else
if b.Name == v.Name then
    --print(v,Name, math.floor(v:DistanceFromCharacter(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)))
    if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end
    local a = Instance.new("BillboardGui",v)
    a.Name = "ESP"
    a.Size = UDim2.new(3,0, 5,0)
    a.AlwaysOnTop = true
    local b = Instance.new("Frame",a)
    b.Size = UDim2.new(1,0, 1,0)
    b.BackgroundTransparency = 0.60
    b.BorderSizePixel = 0
    b.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
    local c = Instance.new('TextLabel',b)
    c.Size = UDim2.new(1,1,0,1)
    c.BorderSizePixel = 0
    c.TextSize = 12 
    c.Text = v.Name
    c.BackgroundTransparency = 1
    c.TextColor3 = Color3.fromRGB(255, 255, 255)
    c.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    c.TextStrokeTransparency = 0.7
end
end
end
end
end

for __,v in pairs(game.Workspace:GetChildren()) do
for i,b in pairs(game.Players:GetChildren()) do
if b.Name==game.Players.LocalPlayer.Name then local skip else
if b.Name == v.Name then
if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end 
end
end
end
end
end)
Section:NewToggle("Friend ESP", "Didn't know you had friends", function(v)
_G.friend_esp = v
while _G.friend_esp do
for __,v in pairs(game.Workspace:GetChildren()) do
for i,b in pairs(game.Players:GetChildren()) do
if b.Name==game.Players.LocalPlayer.Name then local skip else
if b.Name == v.Name then
if b:IsFriendsWith(game.Players.LocalPlayer.UserId) then
    if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end
    local a = Instance.new("BillboardGui",v)
    a.Name = "ESP"
    a.Size = UDim2.new(3,0, 5,0)
    a.AlwaysOnTop = true
    local b = Instance.new("Frame",a)
    b.Size = UDim2.new(1,0, 1,0)
    b.BackgroundTransparency = 0.50
    b.BorderSizePixel = 0
    b.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
    local c = Instance.new('TextLabel',b)
    c.Size = UDim2.new(1,1,0,1)
    c.BorderSizePixel = 0
    c.TextSize = 15 
    c.Text = v.Name
    c.BackgroundTransparency = 1
    c.TextColor3 = Color3.fromRGB(255, 255, 255)
    c.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    c.TextStrokeTransparency = 0.7
end
end
end
end
end
wait(0.1)
end

for __,v in pairs(game.Workspace:GetChildren()) do
for i,b in pairs(game.Players:GetChildren()) do
if b.Name==game.Players.LocalPlayer.Name then local skip else
if b.Name == v.Name then
if b:IsFriendsWith(game.Players.LocalPlayer.UserId) then
if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end 
end
end
end
end
end
    
end)
Section:NewToggle("Monster ESP", "Spidey Senses", function(v)
_G.monster_esp = v
while _G.monster_esp do
local function contains(table, val)
   for i=1,#table do
      if table[i] == val then return true end
   end
   return false
end
for __,v in pairs(game:GetService("Workspace").bots:GetChildren()) do
    if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end
    local a = Instance.new("BillboardGui",v)
    a.Name = "ESP"
    a.Size = UDim2.new(15,0, 13,0)
    a.AlwaysOnTop = true
    local b = Instance.new("Frame",a)
    b.Size = UDim2.new(1,0, 1,0)
    b.BackgroundTransparency = 0.50
    b.BorderSizePixel = 0
    b.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    local c = Instance.new('TextLabel',b)
    c.Size = UDim2.new(1,1,0,1)
    c.BorderSizePixel = 2
    c.TextSize = 13
    c.Text = v.Name
    c.BackgroundTransparency = 1
    c.TextColor3 = Color3.fromRGB(255, 255, 255)
    c.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    c.TextStrokeTransparency = 0.1
end
wait(0.1)
end
for __,v in pairs(game:GetService("Workspace").bots:GetChildren()) do
if v:FindFirstChild("ESP") then v:FindFirstChild("ESP"):Destroy() end end
end)

--Lights
local Tab = Window:NewTab("Lights")
local Section = Tab:NewSection("Lights")
Section:NewToggle("Auto Flashlight", "f l a s h l i g h t", function(v)
_G.flashlight = v
while _G.flashlight do
game.Players.LocalPlayer.PlayerGui.engine.flv2.flashlight.Value = true
wait(0.1)
end
game.Players.LocalPlayer.PlayerGui.engine.flv2.flashlight.Value = false
end)
Section:NewToggle("Flickering Flashlight", "why would u even use this", function(v)
_G.flicker = v
while _G.flicker do
game.Players.LocalPlayer.PlayerGui.engine.flv2.flashlight.Value = true
wait()
game.Players.LocalPlayer.PlayerGui.engine.flv2.flashlight.Value = false
wait()
end
end)
Section:NewToggle("Electricity", "Turn on/off the electricity", function(light)
_G.LIGHT = light
num = 0
while _G.LIGHT do
if num == 0 then
game:GetService("Workspace").ambience.BlackoutEnd.Playing = true
game:GetService("Workspace").ambience.BlackoutAmbience.Playing = false
game:GetService("Workspace").ambience.BlackoutJingle.Playing = true
game.Players.LocalPlayer.PlayerGui.engine.flv2.flashlight.Value = false
end
num = num + 1
wait(0.1)
--[[
if v.Name == 'light' and v:FindFirstChild('SurfaceGui') then
v.Enabled = true
elseif v.Name == 'ceiling_light' then
for __,c in pairs(v.light:GetChildren()) do
c.Material = 'Neon' 
end
else]]
for i,v in pairs(game.Workspace:GetDescendants()) do
if  v.Name == 'PointLight' then
v.Enabled = true
end  
end
end
while not _G.LIGHT do
if num == 0 then
game:GetService("Workspace").ambience.Blackout.Playing = true
game:GetService("Workspace").ambience.BlackoutAmbience.Playing = true
game:GetService("Workspace").ambience.BlackoutJingle.Playing = false
game.Players.LocalPlayer.PlayerGui.engine.flv2.flashlight.Value = true
end
num = num + 1
wait(0.1)
for i,v in pairs(game.Workspace:GetDescendants()) do
--[[
if v.Name == 'light' and v:FindFirstChild('SurfaceGui') then
v.Enabled = false
elseif v.Name == 'ceiling_light' then
for __,c in pairs(v.light:GetChildren()) do
c.Material = 'SmoothPlastic'
end
else]]if  v.Name == 'PointLight' then
v.Enabled = false
end  
end
end
end)
Section:NewToggle("Fullbright", "discord light mode", function(v) --https://v3rmillion.net/showthread.php?tid=886276
if not _G.FullBrightExecuted then

    _G.FullBrightEnabled = false

    _G.NormalLightingSettings = {
        Brightness = game:GetService("Lighting").Brightness,
        ClockTime = game:GetService("Lighting").ClockTime,
        FogEnd = game:GetService("Lighting").FogEnd,
        GlobalShadows = game:GetService("Lighting").GlobalShadows,
        Ambient = game:GetService("Lighting").Ambient
    }

    game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
        if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
            _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
            if not _G.FullBrightEnabled then
                repeat
                    wait()
                until _G.FullBrightEnabled
            end
            game:GetService("Lighting").Brightness = 1
        end
    end)

    game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
        if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
            _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
            if not _G.FullBrightEnabled then
                repeat
                    wait()
                until _G.FullBrightEnabled
            end
            game:GetService("Lighting").ClockTime = 12
        end
    end)
    
    game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
        if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
            _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
            if not _G.FullBrightEnabled then
                repeat
                    wait()
                until _G.FullBrightEnabled
            end
            game:GetService("Lighting").FogEnd = 786543
        end
    end)

    game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
        if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
            _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
            if not _G.FullBrightEnabled then
                repeat
                    wait()
                until _G.FullBrightEnabled
            end
            game:GetService("Lighting").GlobalShadows = false
        end
    end)

    game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
        if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
            _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
            if not _G.FullBrightEnabled then
                repeat
                    wait()
                until _G.FullBrightEnabled
            end
            game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
        end
    end)

    game:GetService("Lighting").Brightness = 1
    game:GetService("Lighting").ClockTime = 12
    game:GetService("Lighting").FogEnd = 786543
    game:GetService("Lighting").GlobalShadows = false
    game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

    local LatestValue = true
    spawn(function()
        repeat
            wait()
        until _G.FullBrightEnabled
        while wait() do
            if _G.FullBrightEnabled ~= LatestValue then
                if not _G.FullBrightEnabled then
                    game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                    game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                    game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                    game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                    game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                else
                    game:GetService("Lighting").Brightness = 1
                    game:GetService("Lighting").ClockTime = 12
                    game:GetService("Lighting").FogEnd = 786543
                    game:GetService("Lighting").GlobalShadows = false
                    game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                end
                LatestValue = not LatestValue
            end
        end
    end)
end
    
_G.FullBrightExecuted = true
_G.FullBrightEnabled = not _G.FullBrightEnabled end)

--Credits
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits")
Section:NewButton("sean pro toilet gamer#5554", "Click The button to copy", function()
setclipboard("sean pro toilet gamer#5554")
end)
