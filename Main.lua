local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local G2L = {}

G2L["ScreenGui_1"] = Instance.new("ScreenGui")
G2L["ScreenGui_1"].Parent = playerGui
G2L["ScreenGui_1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling

CollectionService:AddTag(G2L["ScreenGui_1"], "main")

G2L["Frame_2"] = Instance.new("Frame")
G2L["Frame_2"].Parent = G2L["ScreenGui_1"]
G2L["Frame_2"].BorderSizePixel = 0
G2L["Frame_2"].BackgroundColor3 = Color3.fromRGB(0, 44, 255)
G2L["Frame_2"].Size = UDim2.new(0.44219, 0, 0.28841, 0)
G2L["Frame_2"].Position = UDim2.new(0.27812, 0, -0.02965, 0)

G2L["Label_3"] = Instance.new("TextLabel")
G2L["Label_3"].Parent = G2L["Frame_2"]
G2L["Label_3"].TextWrapped = true
G2L["Label_3"].BorderSizePixel = 0
G2L["Label_3"].TextScaled = true
G2L["Label_3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["Label_3"].BackgroundTransparency = 1
G2L["Label_3"].RichText = true
G2L["Label_3"].Size = UDim2.new(0.99647, 0, 0.1215, 0)
G2L["Label_3"].Text = "Hugh Backdoor"
G2L["Label_3"].Name = "Label"

G2L["TextBox_4"] = Instance.new("TextBox")
G2L["TextBox_4"].Parent = G2L["Frame_2"]
G2L["TextBox_4"].CursorPosition = -1
G2L["TextBox_4"].BorderSizePixel = 0
G2L["TextBox_4"].BackgroundColor3 = Color3.fromRGB(57, 57, 57)
G2L["TextBox_4"].PlaceholderText = "Scripts here"
G2L["TextBox_4"].Size = UDim2.new(0.92226, 0, 0.5514, 0)
G2L["TextBox_4"].Position = UDim2.new(0.03534, 0, 0.18692, 0)
G2L["TextBox_4"].Text = ""

G2L["TextButton_5"] = Instance.new("TextButton")
G2L["TextButton_5"].Parent = G2L["Frame_2"]
G2L["TextButton_5"].BorderSizePixel = 0
G2L["TextButton_5"].BackgroundColor3 = Color3.fromRGB(46, 255, 0)
G2L["TextButton_5"].Size = UDim2.new(0.34276, 0, 0.17757, 0)
G2L["TextButton_5"].Text = "Execute"
G2L["TextButton_5"].Position = UDim2.new(0.0318, 0, 0.78505, 0)

G2L["TextButton_7"] = Instance.new("TextButton")
G2L["TextButton_7"].Parent = G2L["Frame_2"]
G2L["TextButton_7"].BorderSizePixel = 0
G2L["TextButton_7"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
G2L["TextButton_7"].Size = UDim2.new(0.31449, 0, 0.17757, 0)
G2L["TextButton_7"].Text = "Clear"
G2L["TextButton_7"].Position = UDim2.new(0.38516, 0, 0.78505, 0)

G2L["TextButton_8"] = Instance.new("TextButton")
G2L["TextButton_8"].Parent = G2L["Frame_2"]
G2L["TextButton_8"].BorderSizePixel = 0
G2L["TextButton_8"].BackgroundColor3 = Color3.fromRGB(0, 220, 255)
G2L["TextButton_8"].Size = UDim2.new(0.24382, 0, 0.16822, 0)
G2L["TextButton_8"].Text = "Scripts... (soon)"
G2L["TextButton_8"].Position = UDim2.new(0.71731, 0, 0.78505, 0)

G2L["UIAspectRatioConstraint_9"] = Instance.new("UIAspectRatioConstraint")
G2L["UIAspectRatioConstraint_9"].Parent = G2L["Frame_2"]
G2L["UIAspectRatioConstraint_9"].AspectRatio = 2.64486

return G2L["ScreenGui_1"], require
