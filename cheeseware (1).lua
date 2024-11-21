



local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/hoholwaredevz/Fatality/main/Linoriarework.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
Library:Notify('Loading cheeseware...');
task.wait(3)
local Window = Library:CreateWindow({
	Title = 'cheeseware.cc [professional beanbot pasters destroyer]',
	Center = true,
	AutoShow = true,
})

local Tabs = {
	RageBot = Window:AddTab('Aimbot'),
	Miscellaneous = Window:AddTab('Miscellaneous'),
	Visuals = Window:AddTab('Visuals'),
	['UI Settings'] = Window:AddTab('Settings'),
}

local rs = game:GetService("RunService")
local ts = game:GetService("TweenService")
local plrs = game:GetService("Players")
local cas = game:GetService("ContextActionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:FindFirstChild("Events")
local HitEvent = Events and Events:FindFirstChild("Hit")



local AimbotSec1 = Tabs.RageBot:AddLeftGroupbox('Main')
local AimbotSec3 = Tabs.RageBot:AddLeftGroupbox('Desync')
local AimbotSec2 = Tabs.RageBot:AddRightGroupbox('Anti Aim')
local MiscellaneousSec1 = Tabs.Miscellaneous:AddLeftGroupbox('Bhop')
local MiscellaneousSec2 = Tabs.Miscellaneous:AddRightGroupbox('Exploits')
local VisualsSec1 = Tabs.Visuals:AddRightGroupbox('ViewModel Changer')
local VisualsSec2 = Tabs.Visuals:AddRightGroupbox('Another')
local VisualsSec3 = Tabs.Visuals:AddLeftGroupbox('ESP')

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local RunService = game:GetService("RunService")
local Crosshairs = LocalPlayer.PlayerGui.GUI.Crosshairs

-- watermark or some shit

local sigmawatermark = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")


sigmawatermark.Name = "sigma watermark"
sigmawatermark.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
sigmawatermark.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = sigmawatermark
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.42, 0, 0.93, 0)
Frame.Size = UDim2.new(0, 120, 0, 20)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "cheeseware.cc"
TextLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
TextLabel.TextSize = 14.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left


UIPadding.Parent = Frame
UIPadding.PaddingLeft = UDim.new(0, 5)  -- Adjust padding as needed
--
Frame.Visible = false

AimbotSec1:AddToggle("Rage", {
	Text = "Enabled",
	Default = false
}):OnChanged(function()
    
end)

AimbotSec1:AddToggle("Prediction", {
	Text = "Prediction",
	Default = false
}):OnChanged(function()
    
end)
AimbotSec1:AddToggle("InstallKill", {
	Text = "Instant Kill",
	Default = false
}):OnChanged(function()
    
end)

AimbotSec1:AddToggle("RapidFire", {
	Text = "RapidFire",
	Default = false
}):OnChanged(function()
    
end)

local RunService = game:GetService("RunService")

AimbotSec1:AddToggle("GodMode", {
    Text = "God Mode",
    Default = false,
    Callback = function(Value)
        local godmode = Value

        local connection
        if connection then
            connection:Disconnect()
        end

        connection = RunService.RenderStepped:Connect(function()
            if godmode then
                for _, plr in ipairs(game.Players:GetPlayers()) do
                    if (plr:FindFirstChild("DamageLogs") and not plr.DamageLogs:FindFirstChild(game.Players.LocalPlayer.Name)) then
                        game.ReplicatedStorage.MapVoting.Submit:FireServer(plr, "DamageLogs")
                    end
                end
            end
        end)
    end
})

AimbotSec1:AddToggle("rage_hitlogs", {
	Text = "Hit Logs",
	Default = false
}):OnChanged(function()
    
end)
AimbotSec1:AddDropdown('TargetPart', {
	Values = {
		'Head',
		'Random'
	},
	Default = 1,
	Multi = false,
	Text = 'TargetPart',
	Tooltip = 'TargetPart',
	Callback = function(Value)
		print(Options.TargetPart.Value)
	end
})

AimbotSec1:AddDropdown('Originmod', {
	Values = {
		'OLD',
		'Camera'
	},
	Default = 1,
	Multi = false,
	Text = 'Origin',
	Tooltip = 'Origin',
	Callback = function(Value)
		print(Options.Originmod.Value)
	end
})


AimbotSec1:AddSlider('MinDamage', {
	Text = 'Min Damage',
	Default = 1,
	Min = -50,
	Max = 100,
	Rounding = 0,
	Compact = false,
})
Options.MinDamage:OnChanged(function()

end)

AimbotSec1:AddSlider('Penetrate', {
	Text = 'Inf Pen Slider',
	Default = 1,
	Min = 1,
	Max = 5,
	Rounding = 0,
	Compact = false,
})
Options.Penetrate:OnChanged(function()

end)

AimbotSec1:AddSlider('MaxPenWall', {
	Text = 'Max Penetrate Wall',
	Default = 5,
	Min = 1,
	Max = 15,
	Rounding = 0,
	Compact = false,
})
Options.Penetrate:OnChanged(function()

end)

MiscellaneousSec1:AddToggle("Bhop", {
	Text = "Bhop",
	Default = false
}):OnChanged(function()
    
end)

MiscellaneousSec1:AddSlider('BhopSpeed', {
	Text = 'Bhop Speed',
	Default = 16,
	Min = 1,
	Max = 150,
	Rounding = 0,
	Compact = false,
})
Options.Penetrate:OnChanged(function()

end)

VisualsSec1:AddSlider('Fov', {
	Text = 'Fov',
	Default = 70,
	Min = 1,
	Max = 120,
	Rounding = 0,
	Compact = false,
})
Options.Penetrate:OnChanged(function()

end)

VisualsSec2:AddToggle('NoHands', {
    Text = 'No Hands',
    Default = false,
    Callback = function(Value)
        local enabled = Value -- Store the toggle state

        while enabled and Window do -- Check enabled and window existence in loop
            if workspace.Camera:FindFirstChild("Arms") then
                workspace.Camera.Arms:Destroy()
            end
            task.wait(0.1)
            enabled = Toggles.NoHands.Value -- Update 'enabled' in every iteration
        end
    end
})

VisualsSec2:AddToggle('AntiBlind', {
    Text = 'Anti-Blind',
    Default = false,
    Callback = function(Value)
        local enabled = Value -- Store the toggle state

        -- Function to set Duration and Full values to zero
        local function setValuesToZero()
            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            local playerGui = LocalPlayer:WaitForChild("PlayerGui")
            local blindGui = playerGui:WaitForChild("Blind")

            -- Set Duration to 0
            if blindGui:FindFirstChild("Duration") then
                blindGui.Duration.Value = 0
            end

            -- Set Full to 0
            if blindGui:FindFirstChild("Full") then
                blindGui.Full.Value = 0
            end
        end

        -- Function to monitor changes and set values back to zero
        local function monitorChanges(obj)
            obj.Changed:Connect(function()
                if enabled then
                    obj.Value = 0
                end
            end)
        end

        -- Anti-blind logic loop
        while enabled do
            setValuesToZero() -- Initial set to zero

            local Players = game:GetService("Players")
            local LocalPlayer = Players.LocalPlayer
            local playerGui = LocalPlayer:WaitForChild("PlayerGui")
            local blindGui = playerGui:WaitForChild("Blind")

            -- Monitor existing objects for changes
            if blindGui:FindFirstChild("Duration") then
                monitorChanges(blindGui.Duration)
            end

            if blindGui:FindFirstChild("Full") then
                monitorChanges(blindGui.Full)
            end

            -- Monitor new children being added to Blind GUI
            blindGui.ChildAdded:Connect(function(child)
                if enabled and (child.Name == "Duration" or child.Name == "Full") then
                    child.Value = 0
                    monitorChanges(child)
                end
            end)

            task.wait(0.1) -- Prevents infinite fast loop
            enabled = Toggles.AntiBlind.Value -- Update 'enabled' state in every iteration
        end
    end
})

VisualsSec3:AddToggle("esp", {
	Text = "ESP",
	Default = false
}):OnChanged(function()
    
end)
VisualsSec3:AddToggle("weapons", {
	Text = "Weapon",
	Default = false
}):OnChanged(function()
    
end)

VisualsSec3:AddToggle("name", {
	Text = "Name",
	Default = false
}):OnChanged(function()
    
end)

VisualsSec3:AddToggle("Health", {
	Text = "Health",
	Default = false
}):OnChanged(function()
    
end)

VisualsSec3:AddToggle("rain", {
	Text = "Gay ESP",
	Default = false
}):OnChanged(function()

	
    
end)

VisualsSec3:AddToggle('watermark', {
	Text = 'Custom Watermark',
	Default = false, -- Default value (true / false)
	Tooltip = 'yes', -- Information shown when you hover over the toggle

	Callback = function(Value)
		Frame.Visible = Value
	end
})
VisualsSec3:AddLabel('Color'):AddColorPicker('Color', {
	Default = Color3.new(1, 1, 1),
	Title = 'Color',
	Transparency = 0,
	Callback = function(Value)
	end
})

AimbotSec3:AddToggle("Desync", {
	Text = "Enabled",
	Default = false
}):OnChanged(function()
    
end)
AimbotSec3:AddDropdown('DesyncMode', {
	Values = {
		'Offset',
		'Random',
		'None'
	},
	Default = 1,
	Multi = false,
	Text = 'Desync Mode',
	Tooltip = 'Desync Mode',
	Callback = function(Value)
		print(Options.DesyncMode.Value)
	end
})

AimbotSec3:AddDropdown('RotateMode', {
	Values = {
		'Random',
		'Manual',
		'None'
	},
	Default = 1,
	Multi = false,
	Text = 'Rotate Mode',
	Tooltip = 'Rotate Mode',
	Callback = function(Value)
		print(Options.RotateMode.Value)
	end
})
AimbotSec3:AddSlider('OffsetX', {
	Text = 'OffsetX',
	Default = 2,
	Min = 2,
	Max = 100,
	Rounding = 0,
	Compact = false,
})
Options.OffsetX:OnChanged(function()

end)
AimbotSec3:AddSlider('OffsetY', {
	Text = 'OffsetY',
	Default = 2,
	Min = 2,
	Max = 100,
	Rounding = 0,
	Compact = false,
})
Options.OffsetY:OnChanged(function()

end)
AimbotSec3:AddSlider('OffsetZ', {
	Text = 'OffsetZ',
	Default = 2,
	Min = 2,
	Max = 100,
	Rounding = 0,
	Compact = false,
})
Options.OffsetZ:OnChanged(function()

end)

AimbotSec2:AddToggle("AntiAim", {
	Text = "Anti Aim",
	Default = false
}):OnChanged(function()
    
end)
AimbotSec2:AddToggle("SpinBot", {
	Text = "Spin Bot",
	Default = false
}):OnChanged(function()
    
end)
AimbotSec2:AddToggle("Jitter", {
	Text = "Jitter",
	Default = false
}):OnChanged(function()
    
end)
AimbotSec2:AddToggle("BreakA", {
	Text = "Break Angles",
	Default = false
}):OnChanged(function()
    
end)

AimbotSec2:AddToggle("DefensiveAA", {
	Text = "Defensive AA",
	Default = false
}):OnChanged(function()

end)

AimbotSec2:AddSlider('SpinBotspeed', {
	Text = 'SpinBot Speed',
	Default = 1,
	Min = 1,
	Max = 100,
	Rounding = 0,
	Compact = false,
})
Options.SpinBotspeed:OnChanged(function()

end)

AimbotSec2:AddSlider('JitterSpeed', {
    Text = 'Jitter Speed',
    Default = 1,
    Min = 1,
    Max = 100,
    Rounding = 0,
    Compact = false,
})
Options.JitterSpeed:OnChanged(function()

end)

AimbotSec2:AddSlider('Jitterroll', {
	Text = 'Jitter Roll',
	Default = 120,
	Min = 1,
	Max = 360,
	Rounding = 0,
	Compact = false,
})
Options.Jitterroll:OnChanged(function()

end)
AimbotSec2:AddSlider('Anglejitter', {
	Text = 'Angle',
	Default = 120,
	Min = 1,
	Max = 360,
	Rounding = 0,
	Compact = false,
})
Options.Anglejitter:OnChanged(function()

end)

AimbotSec2:AddDropdown('pitchSelection', {
    Values = { 'None', 'Down', 'Up' },
    Default = 1,
    Multi = false,
    Text = 'Pitch Selection',
    Tooltip = 'Allows you to set anti-aim pitch.'
})
Options.pitchSelection:OnChanged(function()

end)
VisualsSec2:AddToggle("thirdp", {
	Text = "Force ThirdPerson",
	Default = false
}):OnChanged(function()
end)

VisualsSec2:AddSlider('thirdpd', {
	Text = 'ThirdPerson Distance',
	Default = 6,
	Min = 1,
	Max = 15,
	Rounding = 0,
	Compact = false,
})
Options.OffsetZ:OnChanged(function()
end)



ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings() 

SaveManager:SetIgnoreIndexes({
	'MenuKeybind'
}) 

ThemeManager:SetFolder('cheeseware')
SaveManager:SetFolder('cheeseware/main')
makefolder('cheeseware')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 

ThemeManager:ApplyToTab(Tabs['UI Settings'])
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', {
	Default = 'Insert',
	NoUI = true,
	Text = 'Menu keybind'
})
Library.ToggleKeybind = Options.MenuKeybind 

local wallbang
local Multipliers = {
	["Head"] = 4,
	["FakeHead"] = 4,
	["HeadHB"] = 4,
	["UpperTorso"] = 1,
	["LowerTorso"] = 1.25,
	["LeftUpperArm"] = 1,
	["LeftLowerArm"] = 1,
	["LeftHand"] = 1,
	["RightUpperArm"] = 1,
	["RightLowerArm"] = 1,
	["RightHand"] = 1,
	["LeftUpperLeg"] = 0.75,
	["LeftLowerLeg"] = 0.75,
	["LeftFoot"] = 0.75,
	["RightUpperLeg"] = 0.75,
	["RightLowerLeg"] = 0.75,
	["RightFoot"] = 0.75,
}


local Ping = game.Stats.PerformanceStats.Ping:GetValue()


local Collision = {
	Camera
}


local RageTarget = nil

local Origin = nil

local function GetDeg(pos1, pos2)
	local start = pos1.LookVector
	local vector = CFrame.new(pos1.Position, pos2).LookVector
	local angle = math.acos(start:Dot(vector))
	local deg = math.deg(angle)
	return deg
end
local function Coll(obj)
	if obj:IsA("Accessory") then
		table.insert(Collision, obj)
	end

	if obj:IsA("Part") then
		if obj.Name == "HeadHB" or obj.Name == "FakeHead" or obj.Name == "Head" then
			table.insert(Collision, obj)
		end
	end
end


for _, o in pairs(game.Workspace:GetChildren()) do
	Coll(o)
end

function Predict(Player, Hit, LastStep)
	
	local RageTarget = Player
	local Velocity = (RageTarget.HumanoidRootPart.Position - RageTarget.HumanoidRootPart.OldPosition.Value) / LastStep
	local Direction = Vector3.new(Velocity.X / Velocity.magnitude, 0, Velocity.Z / Velocity.magnitude)
	
	local Pos = Hit.Position + Direction * (Ping / 1000 * (Ping > 200 and 1.5 or 2))
	return Pos
end
function killplayer(Hit, Pos, Dmg)
	local a1 = Hit 
	local a2 = Pos 
	local a3 = workspace[game.Players.LocalPlayer.Name].EquippedTool.Value;					
	local a4 = 1000000
	local a5 = workspace[game.Players.LocalPlayer.Name].Gun  
	local a8 = 1
	local a9 = false
	local a10 = true
	local a11 = Vector3.new()
	local a12 = 1000000
	local a13 = Vector3.new()
	game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Hit"):FireServer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13)
end
local gun
game:GetService("RunService").RenderStepped:Connect(function()
            local gunname = workspace[game.Players.LocalPlayer.Name].EquippedTool.Value
            gun = game:GetService("ReplicatedStorage").Weapons[gunname]
end)

local ticking, tickingft, tickingbt = tick(), tick(), tick()
game:GetService("RunService").Heartbeat:Connect(function(step)
    local firerate = gun.FireRate.Value
    if Toggles.Rage.Value then
        local CamCFrame = Camera.CFrame
        local LastStep = step
        local Character = LocalPlayer.Character
        if not Character or not Character:FindFirstChild("HumanoidRootPart") then return end -- Check if character and root part exist

        local Origin = (Options.Originmod.Value == "OLD" and Character.HumanoidRootPart.Position or Camera.CFrame.Position) + Vector3.new(0, 1.4, 0)

        for _, Player in pairs(Workspace:GetChildren()) do
            if Player and Player:FindFirstChild("Humanoid") and Player:FindFirstChild("Humanoid").Health > 0 and GetDeg(CamCFrame, Player.Head.Position) <= 180 and not Player:FindFirstChildOfClass("ForceField") and Player.Name ~= LocalPlayer.Name and Players:FindFirstChild(Player.Name) and Players:FindFirstChild(Player.Name).Team ~= LocalPlayer.Team and not Workspace.Status.Preparation.Value then
                if tick() - ticking >= (Toggles.RapidFire.Value and 0.1 or firerate) then
                    local Ignore = {unpack(Collision), Workspace.Map.Clips, Workspace.Map.SpawnPoints, Character, Workspace.Debris}
                    if Player:FindFirstChild("BackC4") then table.insert(Ignore, Player.BackC4) end
                    if Player:FindFirstChild("Gun") then table.insert(Ignore, Player.Gun) end
                    table.insert(Ignore, Player.HumanoidRootPart)

                    local ValidTargetParts = {"Head", "HumanoidRootPart", "LowerTorso", "UpperTorso"}
                    local Closest = (Options.TargetPart.Value == "Random" and Player[ValidTargetParts[math.random(1, #ValidTargetParts)]]) or Player[Options.TargetPart.Value]

                    coroutine.wrap(function()
                        if Player and Player ~= LocalPlayer and Player:FindFirstChild("HumanoidRootPart") then
                            local Position = Player.HumanoidRootPart.Position
                            local OldPosition = Player.HumanoidRootPart:FindFirstChild("OldPosition") or Instance.new("Vector3Value", Player.HumanoidRootPart)
                            OldPosition.Name = "OldPosition"
                            OldPosition.Value = Position
                        end
                    end)()

                    local Hits = {}
                    local EndHit, Hit, Pos
                    local Penetration = gun.Penetration.Value * 0.01 * Options.Penetrate.Value
                    local Rays = Ray.new(Origin, (Closest.Position - Origin).unit * 100000000)

                    repeat
                        Hit, Pos = Workspace:FindPartOnRayWithIgnoreList(Rays, Ignore, false, true)
                        if Hit and Hit.Parent then
                            if Multipliers[Hit.Name] then
                                EndHit = Hit
                            else
                                table.insert(Ignore, Hit)
                                table.insert(Hits, {Position = Pos, Hit = Hit})
                            end
                        end
                    until EndHit or #Hits >= Options.MaxPenWall.Value or not Hit

                    if EndHit and Multipliers[EndHit.Name] and #Hits <= Options.MaxPenWall.Value then
                        local function CalculateDamage(hit)
                            local Damage = gun.DMG.Value * Multipliers[EndHit.Name]
                            if Player:FindFirstChild("Kevlar") then
                                Damage = (Damage / 100) * gun.ArmorPenetration.Value * (string.find(EndHit.Name, "Head") and (Player:FindFirstChild("Helmet") and 1 or 1) or 1)
                            end
                            Damage = Damage * (gun.RangeModifier.Value / 100 ^ ((Origin - EndHit.Position).Magnitude / 500)) / 100
                            return Damage
                        end

						local function FireServer(hit)
							local position = Toggles.Prediction.Value and Predict(Player, hit, LastStep) or hit.Position
							local x = (((position.X - 74312) * 4) + 1325) * 13
							local y = ((position.Y + 3183421) * 4) - 4201428
							local z = ((position.Z * 41) - 581357) * 2
						
							killplayer(hit, Vector3.new(x, y, z), Toggles.InstallKill.Value and math.huge or Damage / 100)
						
							if HitEvent then -- Check if the event exists before firing
								HitEvent:FireServer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13)
							else
								warn("RemoteEvent 'Hit' not found!")  -- Clearer warning message
							end
						
							if Toggles.rage_hitlogs.Value then
								Library:Notify("cheese user Hit '" .. Player.Name .. "' | hitbox: 'head'")
							end
							ticking = tick()
						end


                        if #Hits == 0 and Hit and Hit.Parent == Player then
                            local Damage = CalculateDamage(Hit)
                            if Damage >= Options.MinDamage.Value then
                                FireServer(Hit)
                            end
                        elseif #Hits > 0 then
                            local penetration = gun.Penetration.Value * 0.01
                            local limit = 0
                            local dmgmodifier = 1
                            for i = 1, #Hits do
                                local data = Hits[i]
                                local part = data.Hit
                                local pos = data.Position
                                local modifier = (function()
                                    if part.Material == Enum.Material.DiamondPlate then return 3 end
                                    if part.Material == Enum.Material.CorrodedMetal or part.Material == Enum.Material.Metal or part.Material == Enum.Material.Concrete or part.Material == Enum.Material.Brick then return 2 end
                                    if part.Name == "Grate" or part.Material == Enum.Material.Wood or part.Material == Enum.Material.WoodPlanks then return 0.1 end
                                    if part.Name == "nowallbang" then return 100 end
                                    if part:FindFirstChild("PartModifier") then return part.PartModifier.Value end
                                    if part.Transparency == 1 or not part.CanCollide or part.Name == "Glass" or part.Name == "Cardboard" then return 0 end
                                    return 1
                                end)()
                                local plp = Closest.Position
                                local direction = (plp - pos).unit * math.clamp(gun.Range.Value, 1, 100)
                                local raycasted = Ray.new(pos + direction, direction * -2)
                                local _, endpos = Workspace:FindPartOnRayWithWhitelist(raycasted, {part}, true)
                                local thickness = (endpos - pos).Magnitude * modifier
                                limit = math.min(penetration, limit + thickness)
                                dmgmodifier = 1 - limit / penetration
                            end

                            local Damage = CalculateDamage(Hit) * dmgmodifier
                            if Damage >= Options.MinDamage.Value then
                                FireServer(Hit)
                            end
                        end
                    end
                end
            end
        end
    end

    if not Crosshairs.Scope.Visible then
        Camera.FieldOfView = Options.Fov.Value
    end
end)








local LocalPlayerIsAlive = false

local utility = {}
local connections = {}

function utility:Connect(connection, func)
	local con = connection:Connect(func)
	table.insert(connections, con)
	return con
end

function utility:BindToRenderStep(name, priority, func)
	local fake_connection = {}

	function fake_connection:Disconnect()
		rs:UnbindFromRenderStep(name)
	end

	rs:BindToRenderStep(name, priority, func)

	return fake_connection
end

local function RandomNumberRange(a)
	return math.random(-a, a)
end

function RandomVectorRange(a, b, c)
	return Vector3.new(RandomNumberRange(a), RandomNumberRange(b), RandomNumberRange(c))
end

function CheckPlayer(Player, CamCFrame)
	if Player and Player:FindFirstChild("Humanoid") and Player:FindFirstChild("Humanoid").Health > 0 then
		return true
	else
		return false
	end
end



local desync_stuff = {
	frames = {},
	mode = "default"
}

function desync_stuff:GetOrigin()
	return desync_stuff["origin"] or CFrame.new()
end

function desync_stuff:SetOrigin(new)
	desync_stuff["origin"] = new
end
function desync_stuff.step(a, origin)
	local frames = desync_stuff.frames

	if LocalPlayerIsAlive == true then
		frames[#frames + 1] = origin

		if desync_stuff["mode"] == "default" then
			if frames[#frames - a] ~= nil then
				desync_stuff:SetOrigin(frames[#frames - a])
			else
				desync_stuff:SetOrigin(frames[#frames])
			end
		end
	end
end

local frames_stuff = {}

utility:Connect(rs.Heartbeat, function()
	local config = {
		Main = {
			desync_enabled = Toggles.Desync.Value;
			desync_mode = Options.DesyncMode.Value;
			desync_rotation = Options.RotateMode.Value;
			Thirdperson = false;
			NoFootStepSounds = false;
			OffsetX = Options.OffsetX.Value;
			Offsety = Options.OffsetY.Value;
			OffsetZ = Options.OffsetZ.Value;
		}
	}
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and LocalPlayer.Character:FindFirstChild("UpperTorso") then
		LocalPlayerIsAlive = true
	else
		LocalPlayerIsAlive = false
	end

	if LocalPlayerIsAlive == true then

		if workspace.Status.Preparation.Value == false and config.Main.desync_enabled == true and not desync_stuff["set_1"] then

			desync_stuff.step(360, LocalPlayer.Character.HumanoidRootPart.CFrame)

			desync_stuff[1] = LocalPlayer.Character.HumanoidRootPart.CFrame

			local fakeCFrame = desync_stuff:GetOrigin()

			if config.Main.desync_mode == "Offset" then
				fakeCFrame = fakeCFrame * CFrame.new(Vector3.new(config.Main.OffsetX, config.Main.OffsetY, config.Main.OffsetZ))
			elseif config.Main.desync_mode == "Random" then
				fakeCFrame = fakeCFrame * CFrame.new(RandomVectorRange(1000, 1000, 1000))
			elseif config.Main.desync_mode == "None" then
				fakeCFrame = fakeCFrame
			end

			if config.Main.desync_rotation == "Manual" then
				fakeCFrame = fakeCFrame * CFrame.Angles(math.rad(130), math.rad(130), math.rad(130))
			elseif config.Main.desync_rotation == "Random" then
				fakeCFrame = fakeCFrame * CFrame.Angles(math.rad(RandomNumberRange(180)), math.rad(RandomNumberRange(180)), math.rad(RandomNumberRange(180)))
			elseif config.Main.desync_rotation == "None" then
				fakeCFrame = fakeCFrame
			end

			LocalPlayer.Character.HumanoidRootPart.CFrame = fakeCFrame
			desync_stuff["set_1"] = true

			if config.Main.Thirdperson == true then
		
				LocalPlayer.Character.LowerTorso.Anchored = true
				LocalPlayer.Character.LowerTorso.Root.Part0 = LocalPlayer.Character.LowerTorso
				LocalPlayer.Character.LowerTorso.CFrame = fakeCFrame * CFrame.new(0, -0.8, 0)
			else
				LocalPlayer.Character.LowerTorso.Anchored = false
				LocalPlayer.Character.LowerTorso.Root.Part0 = LocalPlayer.Character.HumanoidRootPart
			end
		else
			desync_stuff[1] = nil
			
			LocalPlayer.Character.LowerTorso.Anchored = false
			LocalPlayer.Character.LowerTorso.Root.Part0 = LocalPlayer.Character.HumanoidRootPart
		end
	else
		desync_stuff[1] = nil
	
		if LocalPlayerIsAlive == true then
			LocalPlayer.Character.LowerTorso.Anchored = false
			LocalPlayer.Character.LowerTorso.Root.Part0 = LocalPlayer.Character.HumanoidRootPart
		end
	end
end)

utility:Connect(rs.Heartbeat, function()
	local config = {
		Main = {
			desync_enabled = Toggles.Desync.Value;
			desync_mode = Options.DesyncMode.Value;
			desync_rotation = Options.RotateMode.Value;
			Thirdperson = false;
			NoFootStepSounds = true;
			OffsetX = Options.OffsetX.Value;
			Offsety = Options.OffsetY.Value;
			OffsetZ = Options.OffsetZ.Value;
		}
	}
	if LocalPlayerIsAlive == true then
		if config.Main.NoFootStepSounds == true then
			desync_stuff[2] = LocalPlayer.Character.HumanoidRootPart.Velocity

			LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.zero

			rs.RenderStepped:Wait()

			LocalPlayer.Character.HumanoidRootPart.Velocity = desync_stuff[2]
		end
	end
end)

utility:BindToRenderStep("desync_1", 1, function()
	if desync_stuff[1] and desync_stuff["set_1"] and LocalPlayerIsAlive == true then
		LocalPlayer.Character.HumanoidRootPart.CFrame = desync_stuff[1]
		desync_stuff["set_1"] = false
	end
end)


RunService.RenderStepped:Connect(function()
	if LocalPlayer.Character ~= nil and UserInputService:IsKeyDown(Enum.KeyCode.Space) and LocalPlayer.PlayerGui.GUI.Main.GlobalChat.Visible == false and Toggles.Bhop.Value == true then
		if LocalPlayer.Character:FindFirstChild("jumpcd") then
			LocalPlayer.Character.jumpcd:Destroy()
		end
		LocalPlayer.Character.Humanoid.Jump = true
		local Speed =  Options.BhopSpeed.Value
		local Dir = Camera.CFrame.LookVector * Vector3.new(1, 0, 1)
		local Move = Vector3.new()
		Move = UserInputService:IsKeyDown(Enum.KeyCode.W) and Move + Dir or Move
		Move = UserInputService:IsKeyDown(Enum.KeyCode.S) and Move - Dir or Move
		Move = UserInputService:IsKeyDown(Enum.KeyCode.D) and Move + Vector3.new(-Dir.Z, 0, Dir.X) or Move
		Move = UserInputService:IsKeyDown(Enum.KeyCode.A) and Move + Vector3.new(Dir.Z, 0, -Dir.X) or Move
		if Move.Unit.X == Move.Unit.X then
			Move = Move.Unit
			LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(Move.X * Speed, LocalPlayer.Character.HumanoidRootPart.Velocity.Y, Move.Z * Speed)
		end
	end
	task.wait()
end)



local objects = {}
local utility = {}

do
	utility.default = {
		Line = {
			Thickness = 1.5,
			Color = Color3.fromRGB(255, 255, 255),
			Visible = false
		},
		Text = {
			Size = 13,
			Center = true,
			Outline = true,
			Font = Drawing.Fonts.Plex,
			Color = Color3.fromRGB(255, 255, 255),
			Visible = false
		},
		Square = {
			Thickness = 1.5,
			Filled = false,
			Color = Color3.fromRGB(255, 255, 255),
			Visible = false
		},
	}
	function utility.create(type, isOutline)
		local drawing = Drawing.new(type)
		for i, v in pairs(utility.default[type]) do
			drawing[i] = v
		end
		if isOutline then
			drawing.Color = Color3.new(0, 0, 0)
			drawing.Thickness = 3
		end
		return drawing
	end
	function utility.add(plr)
		if not objects[plr] then
			objects[plr] = {
				Name = utility.create("Text"),
				Weapon = utility.create("Text"),
				Armor = utility.create("Text"),
				BoxOutline = utility.create("Square", true),
				Box = utility.create("Square"),
				HealthOutline = utility.create("Line", true),
				Health = utility.create("Line"),
			}
		end
	end
	for _, plr in pairs(Players:GetPlayers()) do
		if Player ~= LocalPlayer then
			utility.add(plr)
		end
	end
	Players.PlayerAdded:Connect(utility.add)
	Players.PlayerRemoving:Connect(function(plr)
		wait()
		if objects[plr] then
			for i, v in pairs(objects[plr]) do
				for i2, v2 in pairs(v) do
					if v then
						v:Remove()
					end
				end
			end
			objects[plr] = nil
		end
   
	end)
end
local color
local ticking, tickingft, tickingbt = tick(), tick(), tick()
local lastChangeTime = 0

RunService.Heartbeat:Connect(function(deltaTime)
	if tick() - ticking >= 0.1 then
		if Toggles.rain.Value == true then
			color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
			ticking = tick()
		else
			color = Options.Color.Value
			ticking = tick()
		end
	end
end)
game:GetService("RunService").Heartbeat:Connect(function()
	for _, Player in pairs(Players:GetPlayers()) do
		local tbl = objects[Player]
		if tbl == nil then
			return
		end
		if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Team ~= "TTT" and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("Gun") and Player.Character:FindFirstChild("Humanoid") and Player ~= LocalPlayer and Toggles.esp.Value then
			local Camera = workspace.CurrentCamera
			local HumanoidRootPart = Player.Character.HumanoidRootPart
			local RootPosition = HumanoidRootPart.Position
			local Pos, OnScreen = Camera:WorldToViewportPoint(RootPosition)
		
			local Size = (Camera:WorldToViewportPoint(RootPosition - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPosition + Vector3.new(0, 2.6, 0)).Y) / 2
		
			if Toggles.esp.Value then
				tbl.Box.Color = color
				tbl.Box.Size = Vector2.new(Size * 1.5, Size * 1.9)
				tbl.Box.Position = Vector2.new(Pos.X - tbl.Box.Size.X / 2, Pos.Y - tbl.Box.Size.Y / 2)
				tbl.Box.Visible = OnScreen
				tbl.BoxOutline.Size = tbl.Box.Size
				tbl.BoxOutline.Position = tbl.Box.Position
				tbl.BoxOutline.Visible = OnScreen
			else
				tbl.Box.Visible = false
				tbl.BoxOutline.Visible = false
			end
		
			if Toggles.Health.Value then
				local HealthPercent = Player.Character.Humanoid.Health / Player.Character.Humanoid.MaxHealth
				tbl.Health.Color = color
				tbl.Health.From = Vector2.new(tbl.Box.Position.X - 5, tbl.Box.Position.Y + tbl.Box.Size.Y)
				tbl.Health.To = Vector2.new(tbl.Health.From.X, tbl.Health.From.Y - tbl.Box.Size.Y * HealthPercent)
				tbl.Health.Visible = OnScreen
				tbl.HealthOutline.From = Vector2.new(tbl.Health.From.X - 1, tbl.Box.Position.Y + tbl.Box.Size.Y)
				tbl.HealthOutline.To = Vector2.new(tbl.Health.From.X - 1, tbl.Box.Position.Y)
				tbl.HealthOutline.Visible = OnScreen
			else
				tbl.Health.Visible = false
				tbl.HealthOutline.Visible = false
			end
		
			if Toggles.name.Value then
				tbl.Name.Color = color
				tbl.Name.Text = Player.Name
				tbl.Name.Position = Vector2.new(tbl.Box.Position.X + tbl.Box.Size.X / 2, tbl.Box.Position.Y - 16)
				tbl.Name.Font = Drawing.Fonts.UI
				tbl.Name.Outline = true  -- Assuming 'Text' was meant to be 'true'
				tbl.Name.Size = 10
				tbl.Name.Visible = OnScreen
			else
				tbl.Name.Visible = false
			end
		
			if Toggles.weapons.Value == true then
				tbl.Weapon.Color = color
				tbl.Weapon.Text = Player.Character.EquippedTool.Value
				tbl.Weapon.Position = Vector2.new(tbl.Box.Size.X / 2 + tbl.Box.Position.X, tbl.Box.Size.Y + tbl.Box.Position.Y + 1)
				tbl.Weapon.Font = Drawing.Fonts.UI
				tbl.Weapon.Outline = true  -- Assuming 'Text' was meant to be 'true'
				tbl.Weapon.Size = 10
				tbl.Weapon.Visible = OnScreen
			else
				tbl.Weapon.Visible = false
			end
            

			local LastInfoPos = tbl.Box.Position.Y - 1
		else
			if Player.Name ~= LocalPlayer.Name then
				for i, v in pairs(tbl) do
					v.Visible = false
				end
			end

		end
	end
end)

local function getClosestEnemy()
    local closestEnemy = nil
    local closestDistance = math.huge
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= LocalPlayer 
           and player.Character 
           and player.Character:FindFirstChild("Humanoid") 
           and player.Character.Humanoid.Health > 0 
           and player.Character:FindFirstChild("HumanoidRootPart") 
           and player.Team ~= LocalPlayer.Team then -- Team check added here

            local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestEnemy = player
            end
        end
    end
    return closestEnemy
end

local baseYaw = 0
local yawOffset = 0
local lastJitterUpdate = tick()
local breakAA = 0
local minTickInterval = 0.05
local maxTickInterval = 0.2
local TickInterval = 0.1
local DefensiveAATick = 0

local function updateYaw(deltaTime)
    if Toggles.AntiAim.Value then
        if Options.YawBase.Value == "Local View" then
            yawOffset = Camera.CFrame.LookVector.Y
        elseif Options.YawBase.Value == "Static" then
            yawOffset = math.rad(Options.StaticYaw.Value)
        elseif Options.YawBase.Value == "At Target" then
            local target = getClosestEnemy()
            if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
                local lookVector = (target.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Unit
                yawOffset = math.atan2(lookVector.X, lookVector.Z)
            end
        end

        if Toggles.SpinBot.Value then
            yawOffset = yawOffset + Options.SpinBotspeed.Value * deltaTime
        elseif Toggles.Jitter.Value then
             if tick() - lastJitterUpdate >= 1 / Options.JitterSpeed.Value then
                lastJitterUpdate = tick()
                yawOffset = yawOffset +  math.rad(Options.Anglejitter.Value) + math.rad((math.random(1, 2) == 1 and Options.Jitterroll.Value or -Options.Jitterroll.Value))
            end
        elseif Toggles.BreakA.Value then
            breakAA = (breakAA + Options.BreakAspeed.Value) % 360
            yawOffset = yawOffset + math.rad(breakAA)
        elseif Toggles.DefensiveAA.Value then
             DefensiveAATick += deltaTime
            if DefensiveAATick >= TickInterval then
                DefensiveAATick = 0
                TickInterval = math.random() * (maxTickInterval - minTickInterval) + minTickInterval
                yawOffset = yawOffset + math.rad(math.random(-180,180))
            end
        end
    end
end

RunService.RenderStepped:Connect(function(deltaTime)
    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.Health > 0  then
        if Toggles.AntiAim.Value then
            LocalPlayer.Character.Humanoid.AutoRotate = false
            updateYaw(deltaTime)
            local pitch = 0

            if Options.pitchSelection.Value == "Down" then
                pitch = math.rad(-90)
            elseif Options.pitchSelection.Value == "Up" then
                pitch = math.rad(90)
            end

            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.Position) * CFrame.Angles(pitch, yawOffset, 0)
        else
            LocalPlayer.Character.Humanoid.AutoRotate = true
        end
    end
end)

AimbotSec2:AddDropdown("YawBase", {
    Values = {"Local View", "Static", "At Target"},
    Default = 1,
    Text = "Yaw Base"
}):OnChanged(function()
    updateYaw(0)
end)

AimbotSec2:AddSlider("StaticYaw",{Text = "Static Yaw", Min = -180, Max = 180, Default = 0, Rounding = 0})

AimbotSec2:AddSlider('BreakAspeed', {
	Text = 'Break Speed',
	Default = 100,
	Min = 1,
	Max = 500,
	Rounding = 0,
	Compact = false,
})

RunService.RenderStepped:Connect(function()
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.Health > 0 and Toggles.SpinBot.Value and Toggles.AntiAim.Value then
		LocalPlayer.Character.Humanoid.AutoRotate = false
		local pitch = 0
		if Options.pitchSelection.Value == "Down" then
			pitch = math.rad(-90)
		elseif Options.pitchSelection.Value == "Up" then
			pitch = math.rad(90)
		end
		LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(pitch, math.rad(Options.SpinBotspeed.Value), 0)
	end
end)

local lastJitterUpdate = tick()

RunService.RenderStepped:Connect(function()
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.Health > 0 and Toggles.Jitter.Value and Toggles.AntiAim.Value then
		LocalPlayer.Character.Humanoid.AutoRotate = false
		local pitch = 0
		if Options.pitchSelection.Value == "Down" then
			pitch = math.rad(-90)
		elseif Options.pitchSelection.Value == "Up" then
			pitch = math.rad(90)
		end

		-- Apply jitter only if the specified interval has passed
		if tick() - lastJitterUpdate >= 1 / Options.JitterSpeed.Value then
			lastJitterUpdate = tick() -- reset the update interval timer
			local angle = math.rad(Options.Anglejitter.Value) + math.rad((math.random(1, 2) == 1 and Options.Jitterroll.Value or -Options.Jitterroll.Value))
			LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.Position) * CFrame.Angles(pitch, angle, 0)
		end
	end
end)

local breakAA = 0
RunService.RenderStepped:Connect(function()
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid")  and LocalPlayer.Character.Humanoid.Health > 0 and Toggles.BreakA.Value and Toggles.AntiAim.Value then
		LocalPlayer.Character.Humanoid.AutoRotate = false
		local pitch = 0
		if Options.pitchSelection.Value == "Down" then
			pitch = math.rad(-90)
		elseif Options.pitchSelection.Value == "Up" then
			pitch = math.rad(90)
		end
		breakAA = (breakAA + Options.BreakAspeed.Value) % 360
		LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(pitch, math.rad(breakAA), 0)
	end
end)

local minTickInterval = 0.05
local maxTickInterval = 0.2
local TickInterval = 0.1
local DefensiveAATick = 0


RunService.RenderStepped:Connect(function(deltaTime)
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid.Health > 0 and Toggles.AntiAim.Value and Toggles.DefensiveAA.Value then
		DefensiveAATick += deltaTime
		if DefensiveAATick >= TickInterval then
			DefensiveAATick = 0
			TickInterval = math.random() * (maxTickInterval - minTickInterval) + minTickInterval
			LocalPlayer.Character.Humanoid.AutoRotate = false

			-- Corrected CFrame calculation:
			local newCFrame = CFrame.new(LocalPlayer.Character.HumanoidRootPart.Position) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180)), math.rad(math.random(-180, 180))) 

			LocalPlayer.Character.HumanoidRootPart.CFrame = newCFrame
		end
	end
end)
RunService.RenderStepped:Connect(function()
	if Toggles.thirdp.Value == true then
		LocalPlayer.CameraMinZoomDistance = Options.thirdpd.Value
		LocalPlayer.CameraMaxZoomDistance = Options.thirdpd.Value
		workspace.ThirdPerson.Value = true
	else
		workspace.ThirdPerson.Value = false
		LocalPlayer.CameraMinZoomDistance = 0
		LocalPlayer.CameraMaxZoomDistance = 0
	end
end)
Library:Notify('Whitelisting..')
Library:Notify('Done!')
Library:Notify('Enjoy fellow sigma!');

