local gui = script.Parent
local mainFrame = gui:WaitForChild("MainSelectFrame")
local enterButton = mainFrame:WaitForChild("EnterButton")
local player = game.Players.LocalPlayer
local mainFightFrame = player.PlayerGui.MainFightMenu:WaitForChild("MainFightFrame")
local title = mainFrame:WaitForChild("Title")

-- Settings UI
local settingsButton = mainFrame:WaitForChild("SettingsButton")
local settingsMenu = mainFrame:WaitForChild("SettingsMenu")
local settingTitle = settingsMenu:WaitForChild("SETTINGS")
local settingExit = settingsMenu:WaitForChild("EXIT")
local settingYap = settingsMenu:WaitForChild("yap")

-- Single Attack UI
local SingleAttackFrame = mainFrame:WaitForChild("SingleAttackSelect")
local sansIntro = SingleAttackFrame:WaitForChild("sans_intro")
local sansBoneGap1 = SingleAttackFrame:WaitForChild("sans_bonegap1")
local sansBlueBone1 = SingleAttackFrame:WaitForChild("sans_bluebone1")
local attackSelectorButton = mainFrame:WaitForChild("AttackSelectorButton")
local attackSelectorExit = SingleAttackFrame:WaitForChild("SingleAttackExit")

-- Music
local menuMusic = Instance.new("Sound", player)
menuMusic.SoundId = "rbxassetid://91746229304117"
menuMusic.Looped = true
menuMusic.Volume = 0.5

local bossFightMusic = Instance.new("Sound", player)
bossFightMusic.SoundId = "rbxassetid://119747961177609"
bossFightMusic.Looped = true
bossFightMusic.Volume = 0.5

-- Constants
local HOVER_COLOR = Color3.fromRGB(255, 255, 0) -- Yellow
local NORMAL_COLOR = Color3.fromRGB(255, 255, 255) -- White

menuMusic:Play()

enterButton.MouseButton1Click:Connect(function() 
	mainFrame.Visible = false
	mainFightFrame.Visible = true

	menuMusic:Stop()
	--bossFightMusic:Play()

	gui:Destroy()

end)

settingsButton.MouseButton1Click:Connect(function()
	settingsMenu.Visible = true
	settingsButton.Visible = false
	enterButton.Visible = false
	settingTitle.Visible = true
	settingYap.Visible = true
	settingExit.Visible = true
	attackSelectorButton.Visible = false
	title.Visible = false
end)

settingExit.MouseButton1Click:Connect(function()
	settingsMenu.Visible = false
	settingsButton.Visible = true
	enterButton.Visible = true
	settingTitle.Visible = false
	settingYap.Visible = false
	settingExit.Visible = false
	title.Visible = true
	attackSelectorButton.Visible = true
end)

attackSelectorButton.MouseButton1Click:Connect(function()
	SingleAttackFrame.Visible = true
	sansIntro.Visible = true
	sansBoneGap1.Visible = true
	sansBlueBone1.Visible = true
	enterButton.Visible = false
	title.Visible = false
	settingsButton.Visible = false
	attackSelectorButton.Visible = false
	
end)

attackSelectorExit.MouseButton1Click:Connect(function()
	SingleAttackFrame.Visible = false
	sansIntro.Visible = false
	sansBoneGap1.Visible = false
	sansBlueBone1.Visible = false
	enterButton.Visible = true
	title.Visible = true
	settingsButton.Visible = true
	attackSelectorButton.Visible = true
end)

sansIntro.MouseButton1Click:Connect(function()
	mainFrame.Visible = false
	mainFightFrame.Visible = true

	menuMusic:Stop()
	--bossFightMusic:Play()

	gui:Destroy()
end)

sansBlueBone1.MouseButton1Click:Connect(function()
	mainFrame.Visible = false
	mainFightFrame.Visible = true

	menuMusic:Stop()
	--bossFightMusic:Play()

	gui:Destroy()
end)

sansBoneGap1.MouseButton1Click:Connect(function()
	mainFrame.Visible = false
	mainFightFrame.Visible = true

	menuMusic:Stop()
	--bossFightMusic:Play()

	gui:Destroy()
end)
-- Hover effects for buttons -- 
enterButton.MouseEnter:Connect(function()
	enterButton.TextColor3 = HOVER_COLOR
end)

enterButton.MouseLeave:Connect(function()
	enterButton.TextColor3 = NORMAL_COLOR
end)

settingsButton.MouseEnter:Connect(function()
	settingsButton.TextColor3 = HOVER_COLOR
end)

settingsButton.MouseLeave:Connect(function()
	settingsButton.TextColor3 = NORMAL_COLOR
end)

settingExit.MouseEnter:Connect(function()
	settingExit.TextColor3 = HOVER_COLOR
end)

settingExit.MouseLeave:Connect(function()
	settingExit.TextColor3 = NORMAL_COLOR
end)

attackSelectorButton.MouseEnter:Connect(function()
	attackSelectorButton.TextColor3 = HOVER_COLOR
end)

attackSelectorButton.MouseLeave:Connect(function()
	attackSelectorButton.TextColor3 = NORMAL_COLOR
end)

sansIntro.MouseEnter:Connect(function()
	sansIntro.TextColor3 = HOVER_COLOR
end)

sansIntro.MouseLeave:Connect(function()
	sansIntro.TextColor3 = NORMAL_COLOR
end)

sansBlueBone1.MouseEnter:Connect(function()
	sansBlueBone1.TextColor3 = HOVER_COLOR
end)

sansBlueBone1.MouseLeave:Connect(function()
	sansBlueBone1.TextColor3 = NORMAL_COLOR
end)

sansBoneGap1.MouseEnter:Connect(function()
	sansBoneGap1.TextColor3 = HOVER_COLOR
end)

sansBoneGap1.MouseLeave:Connect(function()
	sansBoneGap1.TextColor3 = NORMAL_COLOR
end)







