local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local G2L = {}

G2L["ScreenGui_1"] = Instance.new("ScreenGui")
G2L["ScreenGui_1"].Parent = playerGui
G2L["ScreenGui_1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling

G2L["Frame_2"] = Instance.new("Frame")
G2L["Frame_2"].Parent = G2L["ScreenGui_1"]
G2L["Frame_2"].BorderSizePixel = 0
G2L["Frame_2"].BackgroundColor3 = Color3.fromRGB(0, 44, 255)
G2L["Frame_2"].Size = UDim2.new(0.44219, 0, 0.28841, 0)
G2L["Frame_2"].Position = UDim2.new(0.27812, 0, 0.05, 0)

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

local executeButton = G2L["TextButton_5"]
local clearButton = G2L["TextButton_7"]
local textBox = G2L["TextBox_4"]

local remoteEvents = {}
for _, obj in pairs(game:GetDescendants()) do
    if obj:IsA("RemoteEvent") then
        table.insert(remoteEvents, obj)
    end
end

executeButton.MouseButton1Click:Connect(function()
    local code = textBox.Text
    if code and code ~= "" then
        for _, remote in ipairs(remoteEvents) do
            local success, _ = pcall(function()
                remote:FireServer(code)
            end)
            if success then
                remote.Name = "vulnerability"
                break
            end
        end
    end
end)

clearButton.MouseButton1Click:Connect(function()
    textBox.Text = ""
end)

return G2L["ScreenGui_1"], require
