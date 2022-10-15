local MenuTable = {
	Ability = {"AutoRoll", "Number"},
	Aura = {"AutoBuy", "AutoDelete"},
	Relic = {"AutoBuy", "AutoCombine", "Number"},
	Fist = {"AutoBuy", "AutoCombine", "Number"},
	Quest = {"AutoQuest", "Type"},
	Boss = {"AutoHit"}
}


local AutoGUIV3 = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local UISizeConstraint = Instance.new("UISizeConstraint")
local resizer = Instance.new("Frame")
local dragger = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local UIGradient_2 = Instance.new("UIGradient")
local exit = Instance.new("Frame")
local button = Instance.new("ImageButton")
local UICorner_2 = Instance.new("UICorner")
local UIGradient_3 = Instance.new("UIGradient")
local menu = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")


AutoGUIV3.Name = "AutoGUIV3"
AutoGUIV3.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
AutoGUIV3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AutoGUIV3.ResetOnSpawn = false

Frame.Parent = AutoGUIV3
Frame.Active = true
Frame.AnchorPoint = Vector2.new(1, 0)
Frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Frame.Position = UDim2.new(1, -5, 0, 5)
Frame.Selectable = true
local value = 0
for i, v in pairs(MenuTable) do
	value = value + 1
end
Frame.Size = UDim2.new(0,384,0,50+35*value)

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = Frame
TitleLabel.AnchorPoint = Vector2.new(0.5, 0)
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1.000
TitleLabel.BorderSizePixel = 0
TitleLabel.Position = UDim2.new(0.5, 0, 0, 0)
TitleLabel.Size = UDim2.new(1, 0, 0.2, 0)
TitleLabel.Font = Enum.Font.SourceSansBold
TitleLabel.Text = "Ashton's Cool GUI"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.TextScaled = true
TitleLabel.TextSize = 14.000
TitleLabel.TextStrokeTransparency = 0.000
TitleLabel.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(35, 35, 35))}
UIGradient.Rotation = 90
UIGradient.Parent = TitleLabel

UISizeConstraint.Parent = TitleLabel
UISizeConstraint.MaxSize = Vector2.new(math.huge, 30)
UISizeConstraint.MinSize = Vector2.new(288, 288)

resizer.Name = "resizer"
resizer.Parent = Frame
resizer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
resizer.BackgroundTransparency = 1.000
resizer.ClipsDescendants = true
resizer.Position = UDim2.new(1, -30, 1, -30)
resizer.Size = UDim2.new(0, 30, 0, 30)
resizer.SizeConstraint = Enum.SizeConstraint.RelativeXX

dragger.Name = "dragger"
dragger.Parent = resizer
dragger.AnchorPoint = Vector2.new(1, 0)
dragger.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
dragger.BackgroundTransparency = 1.000
dragger.BorderSizePixel = 0
dragger.Position = UDim2.new(1, 0, 0, 0)
dragger.Size = UDim2.new(2, 0, 2, 0)
dragger.ZIndex = 2
dragger.ImageTransparency = 1.000

UICorner.CornerRadius = UDim.new(0.5, 0)
UICorner.Parent = dragger

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(192, 192, 192))}
UIGradient_2.Offset = Vector2.new(-0.5, 0)
UIGradient_2.Rotation = 315
UIGradient_2.Parent = dragger

exit.Name = "exit"
exit.Parent = Frame
exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
exit.BackgroundTransparency = 1.000
exit.ClipsDescendants = true
exit.Position = UDim2.new(1, -30, 0, 0)
exit.Size = UDim2.new(0, 30, 0, 30)
exit.SizeConstraint = Enum.SizeConstraint.RelativeXX

button.Name = "button"
button.Parent = exit
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.BackgroundTransparency = 1.000
button.BorderSizePixel = 0
button.Position = UDim2.new(0, 0, -1, 0)
button.Size = UDim2.new(2, 0, 2, 0)
button.ZIndex = 2
button.AutoButtonColor = false
button.ImageTransparency = 1.000

UICorner_2.CornerRadius = UDim.new(0.5, 0)
UICorner_2.Parent = button

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.75, Color3.fromRGB(127, 127, 127)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(127, 127, 127))}
UIGradient_3.Rotation = 135
UIGradient_3.Parent = button


menu.Name = "menu"
menu.Parent = Frame
menu.AnchorPoint = Vector2.new(0.5, 0)
menu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
menu.BackgroundTransparency = 1.000
menu.Position = UDim2.new(0.5, 0, 0, 30)
menu.Size = UDim2.new(1, -10, 1, -35)

UIListLayout.Parent = menu
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)


local function EKTY_fake_script()
	local script = Instance.new('LocalScript', AutoGUIV3)

	wait(2.5)
	local mouse = game.Players.LocalPlayer:GetMouse()
	
	local DRAGGER_SIZE = 30
	local DRAGGER_TRANSPARENCY = .5
	
	local dragging = false
	
	local function makeResizable(obj:GuiObject, minSize)
	
		local resizer = script.Parent.Frame.resizer
		local dragger = resizer.dragger
		local exit = script.Parent.Frame.exit
		local button = exit.button
	
		resizer.Size = UDim2.fromOffset(DRAGGER_SIZE, DRAGGER_SIZE)
		resizer.Position = UDim2.new(0, 0, 1, -DRAGGER_SIZE)
		exit.Size = UDim2.fromOffset(DRAGGER_SIZE, DRAGGER_SIZE)
		button.Position = UDim2.new(1, -DRAGGER_SIZE, 0, -DRAGGER_SIZE)
	
		local duic = dragger.UICorner
		minSize = minSize or Vector2.new(192, 108)
	
		local startDrag, startSize
		local gui = obj:FindFirstAncestorWhichIsA("ScreenGui")
		resizer.Parent = obj
	
		local function finishResize(tr)
			dragger.Position = UDim2.new(1,0,0,0)
			dragger.Size = UDim2.new(2,0,2,0)
			dragger.Parent = resizer
			dragger.BackgroundTransparency = tr
			duic.Parent = dragger
			startDrag = nil
		end
		dragger.MouseButton1Down:Connect(function()
			if not startDrag then
				startSize = obj.AbsoluteSize			
				startDrag = Vector2.new(mouse.X, mouse.Y)
				dragger.BackgroundTransparency = 1
				dragger.Size = UDim2.fromOffset(gui.AbsoluteSize.X, gui.AbsoluteSize.Y)
				dragger.Position = UDim2.new(1,0,0,0)
				duic.Parent = nil
				dragger.Parent = gui
			end
		end)	
		button.MouseButton1Down:Connect(function()
			AutoGUIV3:Destroy()
		end)
		dragger.MouseMoved:Connect(function()
			if startDrag then		
				local m = Vector2.new(mouse.X, mouse.Y)
				local mouseMoved = Vector2.new(startDrag.X - m.X , m.Y - startDrag.Y)
	
				local s = startSize + mouseMoved
				local sx = math.max(minSize.X, s.X) 
				local sy = math.max(minSize.Y, s.Y)
	
				obj.Size = UDim2.fromOffset(sx, sy)
	
			end
		end)
		dragger.MouseEnter:Connect(function()
			finishResize(DRAGGER_TRANSPARENCY)				
		end)
		dragger.MouseLeave:Connect(function()
			finishResize(1)
		end)		
		dragger.MouseButton1Up:Connect(function()
			finishResize(DRAGGER_TRANSPARENCY)
		end)	
		
		local function visibilityExit(tr)
			button.BackgroundTransparency = tr
		end
		button.MouseEnter:Connect(function()
			visibilityExit(DRAGGER_TRANSPARENCY)				
		end)
		button.MouseLeave:Connect(function()
			visibilityExit(1)
		end)	
		
		
	end
	
	local function makeDraggable(obj)
		local UIS = game:GetService("UserInputService")
		local dragInput, dragStart
		local startPos = obj.Position 
		local dragger = obj	
		local function updateInput(input)
			local offset = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + offset.X, startPos.Y.Scale, startPos.Y.Offset + offset.Y)
			game:GetService("TweenService"):Create(obj, TweenInfo.new(0.25), {Position = Position}):Play()
		end
		dragger.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and not UIS:GetFocusedTextBox() then
				dragging = true
				dragStart = input.Position
				startPos = obj.Position
				local dragged = obj
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		dragger.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		UIS.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				updateInput(input)
			end
		end)
	end
	
	local frameToResize = script.Parent.Frame	
	local minimumSize = Vector2.new(192, 108)
	
	makeResizable(frameToResize, minimumSize)
	makeDraggable(frameToResize)
	
	
end
coroutine.wrap(EKTY_fake_script)()
local function WNAOR_fake_script()
	local script = Instance.new('LocalScript', AutoGUIV3)

	local l__Parent__1 = game.Players.LocalPlayer.PlayerGui:WaitForChild("Reroll")
	local l__Prompt__2 = l__Parent__1:WaitForChild("Prompt");
	local l__TicketPrompt__3 = l__Parent__1:WaitForChild("TicketPrompt");
	local l__Roll__4 = l__Prompt__2:WaitForChild("Roll");
	local l__LocalPlayer__5 = game.Players.LocalPlayer;
	local l__HttpService__6 = game:GetService("HttpService");
	local l__Stats__7 = l__LocalPlayer__5:WaitForChild("Stats");
	local u1 = l__HttpService__6:JSONDecode(l__Stats__7.Value);
	l__Stats__7.Changed:Connect(function()
		u1 = l__HttpService__6:JSONDecode(l__Stats__7.Value);
	end);
	
	local Info = require(game:GetService("ReplicatedStorage"):WaitForChild("Info"))
	local Quest = Info.Quests
	
	
	local CombineFist = coroutine.wrap(function()
		while wait() do
			if menu:WaitForChild("Fist").AutoCombine.TextColor3 == Color3.new(0.75, 1, 0.75) then
				local v643 = {}
				local u129 = {}
				local v644, v645, v646 = pairs(u1["Fists"]);
				while wait() do
					local v647, v648 = v644(v645, v646);
					if not v647 then
						break;
					end;
					v646 = v647;
					table.insert(v643, v647)
				end
				local v659, v660, v661 = pairs(v643);
				while wait() do
					local v662, v663 = v659(v660, v661);
					if not v662 then
						break;
					end;
					v661 = v662;
					local v664 = u1["Fists"][v663]
					if v664.Level < tonumber(menu:FindFirstChild("Fist").TextBox.Text) then
						table.insert(u129,v663)
					end
				end
				game.ReplicatedStorage.UpgradeItem:InvokeServer("Fist", u129);
			end
		end
	end)()
	local CombineRelic = coroutine.wrap(function()
		while wait() do
			if menu:WaitForChild("Relic").AutoCombine.TextColor3 == Color3.new(0.75, 1, 0.75) then
				local v643 = {}
				local u129 = {}
				local v644, v645, v646 = pairs(u1["Relics"]);
				while wait() do
					local v647, v648 = v644(v645, v646);
					if not v647 then
						break;
					end;
					v646 = v647;
					table.insert(v643, v647)
				end
				local v659, v660, v661 = pairs(v643);
				while wait() do
					local v662, v663 = v659(v660, v661);
					if not v662 then
						break;
					end;
					v661 = v662;
					local v664 = u1["Relics"][v663]
					if v664.Level < tonumber(menu:FindFirstChild("Relic").TextBox.Text) then
						table.insert(u129,v663)
					end
				end
				game.ReplicatedStorage.UpgradeItem:InvokeServer("Relic", u129);
			end
		end
	end)()
	local AurasStorage = {};
	local Delete = coroutine.wrap(function()
		while wait() do
			if menu:WaitForChild("Aura").AutoDelete.TextColor3 == Color3.new(0.75, 1, 0.75) then
				local v538 = {};
				local v539, v540, v541 = pairs(u1["Auras"]);
				while wait() do
					local v542, v543 = v539(v540, v541);
					if v542 then

					else
						break;
					end;
					v541 = v542;
					v543.Index = v542;
					table.insert(v538, v543);	
				end;
				table.sort(v538, function(p82, p83)
					return p83.Level < p82.Level;
				end);
				local v544, v545, v546 = pairs(v538);
				while wait() do
					local v547, v548 = v544(v545, v546);
					if v547 then
						if AurasStorage[v548.Name] ~= nil then
							if tonumber(v548.Level) > tonumber(AurasStorage[v548.Name][1]) then
								game.ReplicatedStorage.DeleteAura:InvokeServer(AurasStorage[v548.Name][2])
								print(v548.Name.." "..AurasStorage[v548.Name][1].." Deleted")
								AurasStorage[v548.Name] = {v548.Level, v548.Index}
								print(v548.Name.." "..v548.Level.." Stored")
							else
								game.ReplicatedStorage.DeleteAura:InvokeServer(v548.Index)
								print(v548.Name.." "..v548.Level.." Deleted")
							end	
						else	
							AurasStorage[v548.Name] = {v548.Level, v548.Index}
							print(v548.Name.." "..v548.Level.." Stored")
						end
						v546 = v547
					else
						AurasStorage = {};
						break;
					end;
				end
			end
		end
	end)()
	
	local RerollAbility = coroutine.wrap(function()
		while wait() do
			if menu:WaitForChild("Ability").AutoRoll.TextColor3 == Color3.new(0.75, 1, 0.75) and u1.Money >= 25000 then
				game.ReplicatedStorage.Reroll:InvokeServer()
			end
		end
	end)()
	local RerollFist = coroutine.wrap(function()
		while wait() do
			if menu:WaitForChild("Fist").AutoBuy.TextColor3 == Color3.new(0.75, 1, 0.75) and u1.Money >= 35000 then
				game.ReplicatedStorage.RollGear:InvokeServer("Fist")
			end
		end
	end)()
	local RerollRelic = coroutine.wrap(function()
		while wait() do
			if menu:WaitForChild("Relic").AutoBuy.TextColor3 == Color3.new(0.75, 1, 0.75) and u1.Money >= 50000 then
				game.ReplicatedStorage.RollGear:InvokeServer("Relic")
			end
		end
	end)()
	local RerollAura = coroutine.wrap(function()
		while wait() do
			if menu:WaitForChild("Aura").AutoBuy.TextColor3 == Color3.new(0.75, 1, 0.75) and u1.Gold >= 100 then
				game.ReplicatedStorage.RollGear:InvokeServer("Aura")
			end
		end
	end)()
	local Questing = coroutine.wrap(function()
		while wait() do
			if menu:WaitForChild("Quest").AutoQuest.TextColor3 == Color3.new(0.75, 1, 0.75) then
				local quest = menu:FindFirstChild("Quest").TextBox.Text
				if u1.Quest ~= nil then
					local Completion = true
					for v3253, v3254 in pairs(Info.Quests[quest].Objectives) do
						if u1.Quest.Objectives[v3253] < v3254 then
							Completion = false
						end
					end
					if Completion == true then
						game.ReplicatedStorage.TakeQuest:FireServer("Completed")
						game.ReplicatedStorage.TakeQuest:FireServer(quest)
					end
				else 
					game.ReplicatedStorage.TakeQuest:FireServer(quest)
				end
			end
		end
	end)()
	

	for i, v in pairs(MenuTable) do
		local frame = Instance.new("Frame")
		frame.Name = i
		frame.BackgroundTransparency = .8
		frame.BorderSizePixel = 0
		frame.Size = UDim2.new(1, 0, 1/6, -5)
		if i == "Ability" then frame.LayoutOrder = 1 
		elseif i == "Aura" then frame.LayoutOrder = 2 
		elseif i == "Relic" then frame.LayoutOrder = 3 
		elseif i == "Fist" then frame.LayoutOrder = 4 
		elseif i == "Quest" then frame.LayoutOrder = 5 
		elseif i == "Boss" then frame.LayoutOrder = 5 end

		local title = Instance.new("TextLabel")
		title.Text = i
		title.Font = "SourceSansBold"
		title.TextColor3 = Color3.new(1, 1, 1)
		title.TextStrokeTransparency = 0
		title.TextXAlignment = Enum.TextXAlignment.Left
		title.TextScaled = true
		title.BackgroundTransparency = 1
		title.Size = UDim2.new(0.3, 0,1, 0) 
		title.LayoutOrder = 0
		title.Parent = frame

		local uilistlayout = Instance.new("UIListLayout")
		uilistlayout.FillDirection = "Horizontal"
		uilistlayout.Padding = UDim.new(0,5)
		uilistlayout.Parent = frame
		uilistlayout.SortOrder = "LayoutOrder"

		for i2, v2 in ipairs(v) do
			if v2 == "Number" then
				local TextBox = Instance.new("TextBox")
				TextBox.Text = "7.5"
				TextBox.Font = "SourceSansBold"
				TextBox.TextColor3 = Color3.new(0.75, 0.75, 0.75)
				TextBox.TextScaled = true
				TextBox.TextStrokeTransparency = 0
				TextBox.BackgroundTransparency = .9
				TextBox.Size = UDim2.new(0.2, 0, 0.75, 0)
				TextBox.Position = UDim2.new(0, 0, 0.5, 0)
				TextBox.AnchorPoint = Vector2.new(0, 0.5)
				TextBox.Parent = frame
				TextBox.FocusLost:connect(function()
					if tonumber(TextBox.Text) == nil then
						TextBox.Text = 7.5
					elseif tonumber(TextBox.Text) < 1.0 then
						TextBox.Text = 1.0
					end
					TextBox.Text = decimalformat(tonumber(TextBox.Text))
					l__Parent__1.Click:Play();
				end)
			elseif v2 == "Type" then
				local TextBox = Instance.new("TextBox")
				TextBox.Text = "Rigged Game"
				TextBox.Font = "SourceSansBold"
				TextBox.TextColor3 = Color3.new(0.75, 0.75, 0.75)
				TextBox.TextScaled = true
				TextBox.TextStrokeTransparency = 0
				TextBox.BackgroundTransparency = .9
				TextBox.Size = UDim2.new(0.2, 0, 0.75, 0)
				TextBox.Position = UDim2.new(0, 0, 0.5, 0)
				TextBox.AnchorPoint = Vector2.new(0, 0.5)
				TextBox.Parent = frame
				TextBox.FocusLost:connect(function()
					l__Parent__1.Click:Play();
				end)
			else
				local button = Instance.new("TextButton")
				button.Name = v2
				button.Text = v2
				button.Font = "SourceSansBold"
				if v2 == "AutoQuest" or v2 == "AutoHit" then
					button.TextColor3 = Color3.new(0.75, 1, 0.75)
				else
					button.TextColor3 = Color3.new(0.5, 0.25, 0.25)
				end
				button.TextScaled = true
				button.TextStrokeTransparency = 0
				button.BackgroundTransparency = 1
				button.TextXAlignment = Enum.TextXAlignment.Left
				button.Size = UDim2.new(0.2, 0, 0.75, 0)
				button.Position = UDim2.new(0, 0, 0.5, 0)
				button.AnchorPoint = Vector2.new(0, 0.5)
				button.MouseButton1Click:Connect(function()
					l__Parent__1.Click:Play();
					if button.TextColor3 == Color3.new(0.5, 0.25, 0.25) then
						button.TextColor3 = Color3.new(0.75, 1, 0.75)
					else
						button.TextColor3 = Color3.new(0.5, 0.25, 0.25)
					end
				end)
				button.Parent = frame
			end
		end
		frame.Parent = menu
	end
	
	
	local envReroll = getsenv(l__Parent__1.Reroll)
	local decimalformat = envReroll.decimalformat
	local askquestion = envReroll.askquestion

	
	local l__Rerolling__2 = l__Parent__1:WaitForChild("Rerolling");
	local u3 = { {
		Name = "Low Tier", 
		MinLevel = 1, 
		Color = Color3.new(1, 0.8, 0.5)
	}, {
		Name = "Mid-Tier", 
		MinLevel = 2, 
		Color = Color3.new(1, 1, 0.7)
	}, {
		Name = "Elite Tier", 
		MinLevel = 3.5, 
		Color = Color3.new(1, 0.5, 0)
	}, {
		Name = "High Tier", 
		MinLevel = 5, 
		Color = Color3.new(1, 0.8, 1)
	}, {
		Name = "Low God Tier", 
		MinLevel = 6, 
		Color = Color3.fromRGB(204, 165, 255)
	}, {
		Name = "God Tier", 
		MinLevel = 6.5, 
		Color = Color3.fromRGB(204, 165, 255)
	}, {
		Name = "High God Tier", 
		MinLevel = 7, 
		Color = Color3.fromRGB(204, 165, 255)
	}, {
		Name = "Low Mythical Tier", 
		MinLevel = 7.5, 
		Color = Color3.fromRGB(255, 0, 0)
	}, {
		Name = "Mythical Tier", 
		MinLevel = 8, 
		Color = Color3.fromRGB(255, 0, 0)
	}, {
		Name = "High Mythical Tier", 
		MinLevel = 8.5, 
		Color = Color3.fromRGB(255, 0, 0)
	}, {
		Name = "Exodia Tier", 
		MinLevel = 9, 
		Color = Color3.fromRGB(255, 255, 0)
	}, {
		Name = "High Exodia Tier", 
		MinLevel = 9.5, 
		Color = Color3.fromRGB(255, 255, 0)
	}, {
		Name = "CHADDED", 
		MinLevel = 10, 
		Color = Color3.fromRGB(255, 255, 255)
	} };
	game.ReplicatedStorage.ClaimAbility.OnClientInvoke = function(p3, p4)
		l__Rerolling__2.Folder:ClearAllChildren();
		if p4 > tonumber(menu:FindFirstChild("Ability").TextBox.Text) or p3.RelativeProbability then
			l__Prompt__2.Visible = false;
			l__Rerolling__2.Visible = true;
			local v13 = {};
			for v14, v15 in pairs(u3) do
				local v16 = game.Players.LocalPlayer.PlayerGui:WaitForChild("Reroll"):WaitForChild("Reroll").TierLine:Clone();
				v16.BackgroundColor3 = v15.Color;
				v16.TextLabel.TextColor3 = v15.Color;
				v16.TextLabel.Text = v15.Name .. " (" .. decimalformat(v15.MinLevel) .. ")";
				v16.Position = UDim2.new(0, 0, -(v15.MinLevel - 1) * 2 + 0.5, 0);
				v16.Parent = l__Rerolling__2.Folder;
				table.insert(v13, v16);
			end;
			local v17 = p4;
			local v18 = nil;
			for v19 = #u3, 1, -1 do
				local v20 = u3[v19];
				if v20.MinLevel <= p4 then
					v17 = v20.MinLevel;
					v18 = v20.Color;
					break;
				end;
			end;
			for v21 = 1, v17, 0.1 do
				local v22 = math.min(v21, v17);
				for v23, v24 in pairs(u3) do
					if v24.MinLevel <= v22 and v22 - 0.1 < v24.MinLevel then
						l__Parent__1.ReachedTier:Play();
					end;
				end;
				for v25, v26 in pairs(v13) do
					v26.Position = UDim2.new(0, 0, v26.Position.Y.Scale + 0.125, 0);
				end;
				l__Rerolling__2.Ability.TextLabel.Text = decimalformat(math.floor(v22 * 10 + 0.5) / 10);
				game:GetService("RunService").Heartbeat:wait();
			end;
			l__Rerolling__2.Ability.TextLabel.TextColor3 = v18;
			l__Rerolling__2.Ability.ImageColor3 = v18;
			l__Parent__1.OnTier:Play();
			wait(.5);
			l__Rerolling__2.Ability.TextLabel.Text = decimalformat(math.floor(v17 * 10 + 0.5) / 10);
			for v27 = v17, p4, 0.025 do
				for v28, v29 in pairs(v13) do
					v29.Position = UDim2.new(0, 0, v29.Position.Y.Scale + 0.05, 0);
				end;
				l__Rerolling__2.Ability.TextLabel.Text = p3 .. " (" .. decimalformat(math.floor(math.min(v27, p4) * 10 + 0.5) / 10) .. ")";
				game:GetService("RunService").Heartbeat:wait();
			end;
			l__Parent__1.Finished:Play();
			wait(0.25);
	
			local v30 = askquestion("Switch Ability", "Do you want to change your ability to " .. p3 .. " (" .. decimalformat(p4) .. ")?");
			if v30 and p4 < u1.Potential then
				v30 = askquestion("Lower Potential", "" .. p3 .. " (" .. decimalformat(p4) .. ") Has a lower potential than your current ability, " .. u1.Ability .. " (" .. decimalformat(u1.Potential) .. "). Are you sure you want to change it?") and askquestion("Final Confirmation", "This action cannot be undone.");
			end;
			l__Rerolling__2.Visible = false;
			local v31 = false
			if v30 then
				v31 = "Store your current ability? (Saying no will inherit your old level.)";
			else
				v31 = "Store this ability?";
			end;
			local v32 = askquestion("Store Ability", v31);
			if not v32 or not (#u1.Stored >= 3) then
				return v30, v32;
			end;
			envReroll._G.showStored();
			envReroll._G.AbilityStorage.Visible = true;
			envReroll._G.Replacing = true;
			envReroll._G.ToReplace = "Replacing";	
			while wait() do
				wait();
				if envReroll._G.ToReplace ~= "Replacing" then
					break;
				end;	
			end;
			if envReroll._G.ToReplace == "Cancelled" then
				return v30, false;
			end;
			return v30, envReroll._G.ToReplace;
		else
			l__Parent__1.Finished:Play();
			return false, false;
		end
	end;
end
coroutine.wrap(WNAOR_fake_script)()
