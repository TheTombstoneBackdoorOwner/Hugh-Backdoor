--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

local CollectionService = game:GetService("CollectionService");
local G2L = {};

G2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

CollectionService:AddTag(G2L["ScreenGui_1"], [[main]]);

G2L["Frame_2"] = Instance.new("Frame", G2L["ScreenGui_1"]);
G2L["Frame_2"]["BorderSizePixel"] = 0;
G2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(0, 44, 255);
G2L["Frame_2"]["Size"] = UDim2.new(0.44219, 0, 0.28841, 0);
G2L["Frame_2"]["Position"] = UDim2.new(0.27812, 0, -0.02965, 0);

G2L["Label_3"] = Instance.new("TextLabel", G2L["Frame_2"]);
G2L["Label_3"]["TextWrapped"] = true;
G2L["Label_3"]["BorderSizePixel"] = 0;
G2L["Label_3"]["TextScaled"] = true;
G2L["Label_3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Label_3"]["BackgroundTransparency"] = 1;
G2L["Label_3"]["RichText"] = true;
G2L["Label_3"]["Size"] = UDim2.new(0.99647, 0, 0.1215, 0);
G2L["Label_3"]["Text"] = [[Hugh Backdoor]];
G2L["Label_3"]["Name"] = [[Label]];

G2L["TextBox_4"] = Instance.new("TextBox", G2L["Frame_2"]);
G2L["TextBox_4"]["CursorPosition"] = -1;
G2L["TextBox_4"]["BorderSizePixel"] = 0;
G2L["TextBox_4"]["BackgroundColor3"] = Color3.fromRGB(57, 57, 57);
G2L["TextBox_4"]["PlaceholderText"] = [[Scripts here]];
G2L["TextBox_4"]["Size"] = UDim2.new(0.92226, 0, 0.5514, 0);
G2L["TextBox_4"]["Position"] = UDim2.new(0.03534, 0, 0.18692, 0);
G2L["TextBox_4"]["Text"] = [[]];

G2L["TextButton_5"] = Instance.new("TextButton", G2L["Frame_2"]);
G2L["TextButton_5"]["BorderSizePixel"] = 0;
G2L["TextButton_5"]["BackgroundColor3"] = Color3.fromRGB(46, 255, 0);
G2L["TextButton_5"]["Size"] = UDim2.new(0.34276, 0, 0.17757, 0);
G2L["TextButton_5"]["Text"] = [[Execute]];
G2L["TextButton_5"]["Position"] = UDim2.new(0.0318, 0, 0.78505, 0);

G2L["LocalScript_6"] = Instance.new("LocalScript", G2L["TextButton_5"]);

G2L["TextButton_7"] = Instance.new("TextButton", G2L["Frame_2"]);
G2L["TextButton_7"]["BorderSizePixel"] = 0;
G2L["TextButton_7"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 0);
G2L["TextButton_7"]["Size"] = UDim2.new(0.31449, 0, 0.17757, 0);
G2L["TextButton_7"]["Text"] = [[Clear]];
G2L["TextButton_7"]["Position"] = UDim2.new(0.38516, 0, 0.78505, 0);

G2L["TextButton_8"] = Instance.new("TextButton", G2L["Frame_2"]);
G2L["TextButton_8"]["BorderSizePixel"] = 0;
G2L["TextButton_8"]["BackgroundColor3"] = Color3.fromRGB(0, 220, 255);
G2L["TextButton_8"]["Size"] = UDim2.new(0.24382, 0, 0.16822, 0);
G2L["TextButton_8"]["Text"] = [[Scripts... (soon)]];
G2L["TextButton_8"]["Position"] = UDim2.new(0.71731, 0, 0.78505, 0);

G2L["UIAspectRatioConstraint_9"] = Instance.new("UIAspectRatioConstraint", G2L["Frame_2"]);
G2L["UIAspectRatioConstraint_9"]["AspectRatio"] = 2.64486;

local function C_6()
	local script = G2L["LocalScript_6"];
	local executeButton = script.Parent
	local clearButton = G2L["TextButton_7"]
	local textBox = G2L["TextBox_4"]

	local remoteEvents = {}
	for _, obj in pairs(game:GetDescendants()) do
		if obj:IsA("RemoteEvent") then
			table.insert(remoteEvents, obj)
		end
	end

	if #remoteEvents > 0 then
		pcall(function()
			remoteEvents[1].Name = "vulnerability"
		end)
	end

	executeButton.MouseButton1Click:Connect(function()
		local code = textBox.Text
		if code and code ~= "" then
			for _, remote in ipairs(remoteEvents) do
				local success, _ = pcall(function()
					remote:FireServer(code)
				end)
				if success then
					break
				end
			end
		end
	end)

	clearButton.MouseButton1Click:Connect(function()
		textBox.Text = ""
	end)
end;
task.spawn(C_6);

return G2L["ScreenGui_1"], require;
