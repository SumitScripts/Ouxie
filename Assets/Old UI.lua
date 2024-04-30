--[[

!OUXIE UI LIBRARY IS VERY POORLY MADE SO IF YOUR GOING TO EDIT THE SOURCE CODE YOU BETTER BE KNOWING WHAT YOUR DOING!

its fully open source and no im not sorry for my trash luau skills
also for people this was made by Skire (x6x_0)

OUXIE DISCORD SERVER: https://discord.gg/6a3rAf9r8k

 .d88888b.                    d8b               888 
d88P" "Y88b                   Y8P               888 
888     888                                     888 
888     888 888  888 888  888 888  .d88b.       888 
888     888 888  888 `Y8bd8P' 888 d8P  Y8b      888 
888     888 888  888   X88K   888 88888888      Y8P 
Y88b. .d88P Y88b 888 .d8""8b. 888 Y8b.           "  
 "Y88888P"   "Y88888 888  888 888  "Y8888       888 


888b     d888               888               888888b.                     
8888b   d8888               888               888  "88b                    
88888b.d88888               888               888  .88P                    
888Y88888P888  8888b.   .d88888  .d88b.       8888888K.  888  888      d8b 
888 Y888P 888     "88b d88" 888 d8P  Y8b      888  "Y88b 888  888      Y8P 
888  Y8P  888 .d888888 888  888 88888888      888    888 888  888          
888   "   888 888  888 Y88b 888 Y8b.          888   d88P Y88b 888      d8b 
888       888 "Y888888  "Y88888  "Y8888       8888888P"   "Y88888      Y8P 
                                                              888          
                                                         Y8b d88P          
                                                          "Y88P"           

 .d8888b.  888      d8b                                                
d88P  Y88b 888      Y8P                                                
Y88b.      888                                                         
 "Y888b.   888  888 888 888d888 .d88b.                                 
    "Y88b. 888 .88P 888 888P"  d8P  Y8b                                
      "888 888888K  888 888    88888888      888888                    
Y88b  d88P 888 "88b 888 888    Y8b.                                    
 "Y8888P"  888  888 888 888     "Y8888                                 
                                                                       
                                                                       
                                                                       
  .d88           .d8888b.                    .d8888b.  88b.        888 
 d88P"          d88P  Y88b                  d88P  Y88b "Y88b       888 
d88P            888                         888    888   Y88b      888 
888    888  888 888d888b.  888  888         888    888    888      888 
888    `Y8bd8P' 888P "Y88b `Y8bd8P'         888    888    888      888 
Y88b     X88K   888    888   X88K           888    888   d88P      Y8P 
 Y88b. .d8""8b. Y88b  d88P .d8""8b.         Y88b  d88P .d88P        "  
  "Y88 888  888  "Y8888P"  888  888 88888888 "Y8888P"  88P"        888 
                                                                       
                                                                                                    
]]

local ui = {}

function ui:Window(Header)
	-- Instances: 74 | Scripts: 5 | Modules: 0
	local G2L = {};

    local toggles = 0
	-- StarterGui.OuxieUI
	G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
	G2L["1"]["Name"] = [[OuxieUI]];
	G2L["1"]["ResetOnSpawn"] = false;

	-- StarterGui.OuxieUI.UI
	G2L["2"] = Instance.new("Frame", G2L["1"]);
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 25);
	G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["2"]["Size"] = UDim2.new(0, 287, 0, 324);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["2"]["Name"] = [[UI]];

	-- StarterGui.OuxieUI.UI.UICorner
	G2L["3"] = Instance.new("UICorner", G2L["2"]);


	-- StarterGui.OuxieUI.UI.UIStroke
	G2L["4"] = Instance.new("UIStroke", G2L["2"]);
	G2L["4"]["Color"] = Color3.fromRGB(171, 171, 255);

	-- StarterGui.OuxieUI.UI.Top
	G2L["5"] = Instance.new("Frame", G2L["2"]);
	G2L["5"]["BorderSizePixel"] = 0;
	G2L["5"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 39);
	G2L["5"]["Size"] = UDim2.new(0, 287, 0, 33);
	G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["5"]["Name"] = [[Top]];

	-- StarterGui.OuxieUI.UI.Top.UICorner
	G2L["6"] = Instance.new("UICorner", G2L["5"]);


	-- StarterGui.OuxieUI.UI.Top.Cover
	G2L["7"] = Instance.new("Frame", G2L["5"]);
	G2L["7"]["BorderSizePixel"] = 0;
	G2L["7"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 39);
	G2L["7"]["Size"] = UDim2.new(0, 287, 0, 13);
	G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["7"]["Position"] = UDim2.new(0, 0, 0.6000000238418579, 0);
	G2L["7"]["Name"] = [[Cover]];

	-- StarterGui.OuxieUI.UI.Top.Header
	G2L["8"] = Instance.new("TextLabel", G2L["5"]);
	G2L["8"]["ZIndex"] = 2;
	G2L["8"]["BorderSizePixel"] = 0;
	G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	G2L["8"]["TextSize"] = 14;
	G2L["8"]["TextColor3"] = Color3.fromRGB(162, 162, 242);
	G2L["8"]["Size"] = UDim2.new(0, 176, 0, 32);
	G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["8"]["Text"] = Header;
	G2L["8"]["Name"] = [[Header]];
	G2L["8"]["BackgroundTransparency"] = 1;

	-- StarterGui.OuxieUI.UI.Top.Header.UIPadding
	G2L["9"] = Instance.new("UIPadding", G2L["8"]);
	G2L["9"]["PaddingLeft"] = UDim.new(0, 9);

	-- StarterGui.OuxieUI.UI.Top.Close
	G2L["a"] = Instance.new("ImageButton", G2L["5"]);
	G2L["a"]["ZIndex"] = 2;
	G2L["a"]["BorderSizePixel"] = 0;
	G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["a"]["Size"] = UDim2.new(0, 32, 0, 32);
	G2L["a"]["Name"] = [[Close]];
	G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["a"]["Position"] = UDim2.new(0.888501763343811, 0, 0, 0);
	G2L["a"]["BackgroundTransparency"] = 1;

	-- StarterGui.OuxieUI.UI.Top.Close.ImageLabel
	G2L["b"] = Instance.new("ImageLabel", G2L["a"]);
	G2L["b"]["ZIndex"] = 2;
	G2L["b"]["BorderSizePixel"] = 0;
	G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["b"]["ImageColor3"] = Color3.fromRGB(162, 162, 242);
	G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["b"]["Image"] = [[rbxassetid://7072725342]];
	G2L["b"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["b"]["BackgroundTransparency"] = 1;
	G2L["b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.OuxieUI.UI.Top.Mini
	G2L["c"] = Instance.new("ImageButton", G2L["5"]);
	G2L["c"]["ZIndex"] = 2;
	G2L["c"]["BorderSizePixel"] = 0;
	G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["c"]["Size"] = UDim2.new(0, 32, 0, 32);
	G2L["c"]["Name"] = [[Mini]];
	G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["c"]["Position"] = UDim2.new(0.8048780560493469, 0, 0, 0);
	G2L["c"]["BackgroundTransparency"] = 1;

	-- StarterGui.OuxieUI.UI.Top.Mini.ImageLabel
	G2L["d"] = Instance.new("ImageLabel", G2L["c"]);
	G2L["d"]["ZIndex"] = 2;
	G2L["d"]["BorderSizePixel"] = 0;
	G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["d"]["ImageColor3"] = Color3.fromRGB(162, 162, 242);
	G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["d"]["Image"] = [[rbxassetid://7072719338]];
	G2L["d"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["d"]["BackgroundTransparency"] = 1;
	G2L["d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.OuxieUI.UI.Top.TopHandler
	G2L["e"] = Instance.new("LocalScript", G2L["5"]);
	G2L["e"]["Name"] = [[TopHandler]];

	-- StarterGui.OuxieUI.UI.Dragify
	G2L["f"] = Instance.new("LocalScript", G2L["2"]);
	G2L["f"]["Name"] = [[Dragify]];

	-- StarterGui.OuxieUI.UI.Elements
	G2L["10"] = Instance.new("Frame", G2L["2"]);
	G2L["10"]["BorderSizePixel"] = 0;
	G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["10"]["BackgroundTransparency"] = 1;
	G2L["10"]["Size"] = UDim2.new(0, 287, 0, 254);
	G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["10"]["Position"] = UDim2.new(0, 0, 0.21604938805103302, 0);
	G2L["10"]["Name"] = [[Elements]];

	-- StarterGui.OuxieUI.UI.Elements.Pages
	G2L["11"] = Instance.new("Folder", G2L["10"]);
	G2L["11"]["Name"] = [[Pages]];

	-- StarterGui.OuxieUI.UI.Tabs
	G2L["37"] = Instance.new("Frame", G2L["2"]);
	G2L["37"]["BorderSizePixel"] = 0;
	G2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["37"]["BackgroundTransparency"] = 1;
	G2L["37"]["Size"] = UDim2.new(1, 0, 0.043209876865148544, 28);
	G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["37"]["Position"] = UDim2.new(0, 0, 0.10185185074806213, 0);
	G2L["37"]["Name"] = [[Tabs]];

	-- StarterGui.OuxieUI.UI.Tabs.Holder
	G2L["38"] = Instance.new("ScrollingFrame", G2L["37"]);
	G2L["38"]["Active"] = true;
	G2L["38"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
	G2L["38"]["BorderSizePixel"] = 0;
	G2L["38"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
	G2L["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["38"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
	G2L["38"]["BackgroundTransparency"] = 1;
	G2L["38"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["38"]["ScrollBarThickness"] = 0;
	G2L["38"]["Name"] = [[Holder]];

	-- StarterGui.OuxieUI.UI.Tabs.Holder.UIListLayout
	G2L["39"] = Instance.new("UIListLayout", G2L["38"]);
	G2L["39"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
	G2L["39"]["FillDirection"] = Enum.FillDirection.Horizontal;
	G2L["39"]["Padding"] = UDim.new(0, 7);
	G2L["39"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.OuxieUI.UI.Tabs.Holder.UIPadding
	G2L["3a"] = Instance.new("UIPadding", G2L["38"]);
	G2L["3a"]["PaddingRight"] = UDim.new(0, 7);
	G2L["3a"]["PaddingLeft"] = UDim.new(0, 7);

	-- StarterGui.OuxieUI.UI.Tabs.Holder.TabHandler
	G2L["42"] = Instance.new("LocalScript", G2L["38"]);
	G2L["42"]["Name"] = [[TabHandler]];

	-- StarterGui.OuxieUI.MINI
	G2L["43"] = Instance.new("Frame", G2L["1"]);
	G2L["43"]["ZIndex"] = 999999999;
	G2L["43"]["BorderSizePixel"] = 0;
	G2L["43"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 25);
	G2L["43"]["Size"] = UDim2.new(0, 50, 0, 50);
	G2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["43"]["Position"] = UDim2.new(0.048327136784791946, 0, 0.3683127462863922, 0);
	G2L["43"]["Name"] = [[MINI]];

	-- StarterGui.OuxieUI.MINI.UIStroke
	G2L["44"] = Instance.new("UIStroke", G2L["43"]);
	G2L["44"]["Color"] = Color3.fromRGB(171, 171, 255);

	-- StarterGui.OuxieUI.MINI.UICorner
	G2L["45"] = Instance.new("UICorner", G2L["43"]);
	G2L["45"]["CornerRadius"] = UDim.new(1, 0);

	-- StarterGui.OuxieUI.MINI.Function
	G2L["46"] = Instance.new("LocalScript", G2L["43"]);
	G2L["46"]["Name"] = [[Function]];

	-- StarterGui.OuxieUI.MINI.Dragify
	G2L["47"] = Instance.new("LocalScript", G2L["43"]);
	G2L["47"]["Name"] = [[Dragify]];

	-- StarterGui.OuxieUI.MINI.Trigger
	G2L["48"] = Instance.new("ImageButton", G2L["43"]);
	G2L["48"]["ZIndex"] = 0;
	G2L["48"]["BorderSizePixel"] = 0;
	G2L["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["48"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["48"]["Name"] = [[Trigger]];
	G2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["48"]["BackgroundTransparency"] = 1;

	-- StarterGui.OuxieUI.MINI.Trigger.UICorner
	G2L["49"] = Instance.new("UICorner", G2L["48"]);
	G2L["49"]["CornerRadius"] = UDim.new(1, 0);

	-- StarterGui.OuxieUI.MINI.ImageLabel
	G2L["4a"] = Instance.new("ImageLabel", G2L["43"]);
	G2L["4a"]["ZIndex"] = 999999999;
	G2L["4a"]["BorderSizePixel"] = 0;
	G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["4a"]["ImageColor3"] = Color3.fromRGB(162, 162, 242);
	G2L["4a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["4a"]["Image"] = [[rbxassetid://16931525213]];
	G2L["4a"]["Size"] = UDim2.new(0.800000011920929, 0, 0.800000011920929, 0);
	G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["4a"]["BackgroundTransparency"] = 1;
	G2L["4a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	function ui:NewTab(Name, Id)
		
		-- StarterGui.OuxieUI.UI.Tabs.Holder.Page1
		G2L["3b"] = Instance.new("ImageButton", G2L["38"]);
		G2L["3b"]["ZIndex"] = 10;
		G2L["3b"]["BorderSizePixel"] = 0;
		G2L["3b"]["SliceCenter"] = Rect.new(512, 512, 512, 512);
		G2L["3b"]["ScaleType"] = Enum.ScaleType.Crop;
		G2L["3b"]["AutoButtonColor"] = false;
		G2L["3b"]["SliceScale"] = 4;
		G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 39);
		G2L["3b"]["AutomaticSize"] = Enum.AutomaticSize.X;
		G2L["3b"]["ImageColor3"] = Color3.fromRGB(26, 26, 39);
		G2L["3b"]["Selectable"] = false;
		G2L["3b"]["AnchorPoint"] = Vector2.new(0.5, 0);
		G2L["3b"]["Size"] = UDim2.new(0, 0, 0, 30);
		G2L["3b"]["Name"] = Name;
		G2L["3b"]["ClipsDescendants"] = true;
		G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		G2L["3b"]["Position"] = UDim2.new(0.5, 0, 0, 30);

		-- StarterGui.OuxieUI.UI.Tabs.Holder.Page1.padding
		G2L["3c"] = Instance.new("UIPadding", G2L["3b"]);
		G2L["3c"]["PaddingTop"] = UDim.new(0, 5);
		G2L["3c"]["Name"] = [[padding]];
		G2L["3c"]["PaddingRight"] = UDim.new(0, 10);
		G2L["3c"]["PaddingBottom"] = UDim.new(0, 5);
		G2L["3c"]["PaddingLeft"] = UDim.new(0, 10);

		-- StarterGui.OuxieUI.UI.Tabs.Holder.Page1.corner
		G2L["3d"] = Instance.new("UICorner", G2L["3b"]);
		G2L["3d"]["Name"] = [[corner]];
		G2L["3d"]["CornerRadius"] = UDim.new(0, 100);

		-- StarterGui.OuxieUI.UI.Tabs.Holder.Page1.TABTXT
		G2L["3e"] = Instance.new("TextLabel", G2L["3b"]);
		G2L["3e"]["ZIndex"] = 10;
		G2L["3e"]["BorderSizePixel"] = 0;
		G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
		G2L["3e"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
		G2L["3e"]["TextTransparency"] = 0.20000000298023224;
		G2L["3e"]["TextSize"] = 15;
		G2L["3e"]["TextColor3"] = Color3.fromRGB(162, 162, 242);
		G2L["3e"]["AutomaticSize"] = Enum.AutomaticSize.X;
		G2L["3e"]["Size"] = UDim2.new(0, 0, 1, 0);
		G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		G2L["3e"]["Text"] = Name;
		G2L["3e"]["Name"] = [[TABTXT]];
		G2L["3e"]["BackgroundTransparency"] = 1;
		G2L["3e"]["Position"] = UDim2.new(0, 26, 0, 0);

		-- StarterGui.OuxieUI.UI.Tabs.Holder.Page1.icon
		G2L["3f"] = Instance.new("ImageLabel", G2L["3b"]);
		G2L["3f"]["ZIndex"] = 10;
		G2L["3f"]["BorderSizePixel"] = 0;
		G2L["3f"]["ScaleType"] = Enum.ScaleType.Fit;
		G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		G2L["3f"]["ImageColor3"] = Color3.fromRGB(162, 162, 242);
		G2L["3f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
		G2L["3f"]["Size"] = UDim2.new(0, 16, 0, 16);
		G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		G2L["3f"]["Name"] = [[icon]];
		G2L["3f"]["BackgroundTransparency"] = 1;
		G2L["3f"]["Position"] = UDim2.new(0, 8, 0.5, 0);
		
		if Id == "0" or Id == "Cube" then
			G2L["3f"].Image = "rbxassetid://7072706318"
		elseif Id == "None" then
			G2L["3f"]:Destroy()
		else
			G2L["3f"].Image = "rbxassetid://"..Id
		end

		-- StarterGui.OuxieUI.UI.Tabs.Holder.Page1.icon.scale
		if G2L["3f"] then
			-- StarterGui.OuxieUI.UI.Tabs.Holder.Page1.icon.scale
			G2L["40"] = Instance.new("UIScale", G2L["3f"]);
			G2L["40"]["Name"] = [[scale]];
		else 
			--idk skip?
		end

		-- StarterGui.OuxieUI.UI.Tabs.Holder.Page1.UIStroke
		G2L["41"] = Instance.new("UIStroke", G2L["3b"]);
		G2L["41"]["Color"] = Color3.fromRGB(54, 54, 81);
		
		-- StarterGui.OuxieUI.UI.Elements.Pages.Page1
		G2L["12"] = Instance.new("ScrollingFrame", G2L["11"]);
		G2L["12"]["Active"] = true;
		G2L["12"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
		G2L["12"]["BorderSizePixel"] = 0;
		G2L["12"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
		G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		G2L["12"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
		G2L["12"]["BackgroundTransparency"] = 1;
		G2L["12"]["Size"] = UDim2.new(1, 0, 1, 0);
		G2L["12"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
		G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		G2L["12"]["ScrollBarThickness"] = 0;
		G2L["12"]["Name"] = Name;
		
		-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.UIListLayout
		G2L["1a"] = Instance.new("UIListLayout", G2L["12"]);
		G2L["1a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
		G2L["1a"]["Padding"] = UDim.new(0, 7);
		G2L["1a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

		-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.UIPadding
		G2L["1b"] = Instance.new("UIPadding", G2L["12"]);
		G2L["1b"]["PaddingTop"] = UDim.new(0, 5);
		G2L["1b"]["PaddingRight"] = UDim.new(0, 1);
		G2L["1b"]["PaddingBottom"] = UDim.new(0, 5);
		G2L["1b"]["PaddingLeft"] = UDim.new(0, 1);
		
		local tab = {
			button = G2L["3b"],
			content = G2L["12"]
		}

		local function switch(name)
			for i,v in pairs(G2L["11"]:GetChildren()) do
				if v.Name == name then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end

		for i,v in pairs(G2L["38"]:GetChildren()) do
			if v:IsA("ImageButton") then
				v.MouseButton1Click:Connect(function()
					switch(v.Name)
				end)
			end
		end
		
        function tab:Input(Name, Desc, pcall)

            local inputFrame = Instance.new("Frame", tab.content)
            inputFrame.BorderSizePixel = 0
            inputFrame.BackgroundColor3 = Color3.fromRGB(17, 17, 25)
            inputFrame.Size = UDim2.new(0.963421106338501, 0, -0.11143887788057327, 100)
            inputFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            inputFrame.Position = UDim2.new(0.021052632480859756, 0, 0, 0)
            inputFrame.Name = Name
        
            local uiStroke = Instance.new("UIStroke", inputFrame)
            uiStroke.Color = Color3.fromRGB(54, 54, 81)
        
            local uiCorner = Instance.new("UICorner", inputFrame)
            uiCorner.CornerRadius = UDim.new(0, 4)
        
            local nameLabel = Instance.new("TextLabel", inputFrame)
            nameLabel.TextWrapped = true
            nameLabel.BorderSizePixel = 0
            nameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            nameLabel.TextXAlignment = Enum.TextXAlignment.Left
            nameLabel.Font = Enum.Font.SourceSansBold
            nameLabel.TextSize = 14
            nameLabel.TextColor3 = Color3.fromRGB(160, 160, 239)
            nameLabel.Size = UDim2.new(0, 175, 0, 34)
            nameLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            nameLabel.Text = Name
            nameLabel.Name = "NameLabel"
            nameLabel.BackgroundTransparency = 1
            nameLabel.Position = UDim2.new(0.05012529343366623, 0, 2.1283059936649806e-07, 0)
        
            local descLabel = Instance.new("TextLabel", inputFrame)
            descLabel.TextWrapped = true
            descLabel.BorderSizePixel = 0
            descLabel.TextYAlignment = Enum.TextYAlignment.Top
            descLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            descLabel.TextXAlignment = Enum.TextXAlignment.Left
            descLabel.Font = Enum.Font.SourceSans
            descLabel.TextSize = 12
            descLabel.TextColor3 = Color3.fromRGB(128, 128, 191)
            descLabel.Size = UDim2.new(0, 175, 0, 42)
            descLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            descLabel.Text = Desc
            descLabel.Name = "DescLabel"
            descLabel.BackgroundTransparency = 1
            descLabel.Position = UDim2.new(0.05012529343366623, 0, 0.3858708143234253, 0)
        
            local inputBox = Instance.new("TextBox", inputFrame)
            inputBox.CursorPosition = -1
            inputBox.PlaceholderColor3 = Color3.fromRGB(115, 115, 171)
            inputBox.BorderSizePixel = 0
            inputBox.TextSize = 11
            inputBox.BackgroundColor3 = Color3.fromRGB(26, 26, 39)
            inputBox.TextColor3 = Color3.fromRGB(127, 127, 189)
            inputBox.Font = Enum.Font.SourceSansBold
            inputBox.PlaceholderText = "str"
            inputBox.Size = UDim2.new(0, 61, 0, 27)
            inputBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
            inputBox.Text = ""
            inputBox.Position = UDim2.new(0.7138304114341736, 0, 0.32080551981925964, 0)
            inputBox.Name = "InputBox"
        
            local inputStroke = Instance.new("UIStroke", inputBox)
            inputStroke.Color = Color3.fromRGB(54, 54, 81)
            inputStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        
            local inputCorner = Instance.new("UICorner", inputBox)
            inputCorner.CornerRadius = UDim.new(0, 4)

            value = ""
            inputBox.FocusLost:Connect(function()
                value = inputBox.Text
                pcall(value)
            end)

        end

		function tab:Button(Name, Desc, pcall)
			
			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.BUTTON
			G2L["13"] = Instance.new("Frame", tab.content);
			G2L["13"]["BorderSizePixel"] = 0;
			G2L["13"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 25);
			G2L["13"]["Size"] = UDim2.new(0.963421106338501, 0, -0.11143887788057327, 100);
			G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["13"]["Position"] = UDim2.new(0.021052632480859756, 0, 0, 0);
			G2L["13"]["Name"] = Name;

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.BUTTON.UIStroke
			G2L["14"] = Instance.new("UIStroke", G2L["13"]);
			G2L["14"]["Color"] = Color3.fromRGB(54, 54, 81);

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.BUTTON.UICorner
			G2L["15"] = Instance.new("UICorner", G2L["13"]);
			G2L["15"]["CornerRadius"] = UDim.new(0, 4);

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.BUTTON.NAME
			G2L["16"] = Instance.new("TextLabel", G2L["13"]);
			G2L["16"]["TextWrapped"] = true;
			G2L["16"]["BorderSizePixel"] = 0;
			G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			G2L["16"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			G2L["16"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
			G2L["16"]["TextSize"] = 14;
			G2L["16"]["TextColor3"] = Color3.fromRGB(160, 160, 239);
			G2L["16"]["Size"] = UDim2.new(0, 215, 0, 34);
			G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["16"]["Text"] = Name;
			G2L["16"]["Name"] = [[NAME]];
			G2L["16"]["BackgroundTransparency"] = 1;
			G2L["16"]["Position"] = UDim2.new(0.050125304609537125, 0, 1.0903553260277477e-07, 0);

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.BUTTON.DESC
			G2L["17"] = Instance.new("TextLabel", G2L["13"]);
			G2L["17"]["TextWrapped"] = true;
			G2L["17"]["BorderSizePixel"] = 0;
			G2L["17"]["TextYAlignment"] = Enum.TextYAlignment.Top;
			G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			G2L["17"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			G2L["17"]["TextSize"] = 12;
			G2L["17"]["TextColor3"] = Color3.fromRGB(128, 128, 191);
			G2L["17"]["Size"] = UDim2.new(0, 215, 0, 42);
			G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["17"]["Text"] = Desc;
			G2L["17"]["Name"] = [[DESC]];
			G2L["17"]["BackgroundTransparency"] = 1;
			G2L["17"]["Position"] = UDim2.new(0.050125304609537125, 0, 0.3858707547187805, 0);

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.BUTTON.Button
			G2L["18"] = Instance.new("ImageButton", G2L["13"]);
			G2L["18"]["BorderSizePixel"] = 0;
			G2L["18"]["AutoButtonColor"] = false;
			G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			G2L["18"]["Size"] = UDim2.new(1, 0, 1, 0);
			G2L["18"]["Name"] = [[Button]];
			G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["18"]["BackgroundTransparency"] = 1;

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.BUTTON.Arrow
			G2L["19"] = Instance.new("ImageLabel", G2L["13"]);
			G2L["19"]["BorderSizePixel"] = 0;
			G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			G2L["19"]["ImageColor3"] = Color3.fromRGB(157, 157, 235);
			G2L["19"]["AnchorPoint"] = Vector2.new(0, 0.5);
			G2L["19"]["Image"] = [[rbxassetid://7072706745]];
			G2L["19"]["Size"] = UDim2.new(0, 27, 0, 27);
			G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["19"]["Name"] = [[Arrow]];
			G2L["19"]["BackgroundTransparency"] = 1;
			G2L["19"]["Position"] = UDim2.new(0.8413890600204468, 0, 0.5, 0);
			
			G2L["18"].MouseButton1Click:Connect(function()
				pcall()
			end)
		end
		
		function tab:Toggle(Name, Desc, pcall)
			
            local toggleFrame = Instance.new("Frame", tab.content)
            toggleFrame.BorderSizePixel = 0
            toggleFrame.BackgroundColor3 = Color3.fromRGB(17, 17, 25)
            toggleFrame.Size = UDim2.new(0.963421106338501, 0, -0.11143887788057327, 100)
            toggleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
            toggleFrame.Position = UDim2.new(0.021052632480859756, 0, 0.3270857632160187, 0)
            toggleFrame.Name = Name
        
            local uiStroke = Instance.new("UIStroke", toggleFrame)
            uiStroke.Color = Color3.fromRGB(54, 54, 81)
        
            local uiCorner = Instance.new("UICorner", toggleFrame)
            uiCorner.CornerRadius = UDim.new(0, 4)
        
            local nameLabel = Instance.new("TextLabel", toggleFrame)
            nameLabel.TextWrapped = true
            nameLabel.BorderSizePixel = 0
            nameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            nameLabel.TextXAlignment = Enum.TextXAlignment.Left
            nameLabel.Font = Enum.Font.SourceSansBold
            nameLabel.TextSize = 14
            nameLabel.TextColor3 = Color3.fromRGB(160, 160, 239)
            nameLabel.Size = UDim2.new(0, 215, 0, 34)
            nameLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            nameLabel.Text = Name
            nameLabel.Name = "NameLabel"
            nameLabel.BackgroundTransparency = 1
            nameLabel.Position = UDim2.new(0.050125304609537125, 0, 1.0903553260277477e-07, 0)
        
            local descLabel = Instance.new("TextLabel", toggleFrame)
            descLabel.TextWrapped = true
            descLabel.BorderSizePixel = 0
            descLabel.TextYAlignment = Enum.TextYAlignment.Top
            descLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            descLabel.TextXAlignment = Enum.TextXAlignment.Left
            descLabel.Font = Enum.Font.SourceSans
            descLabel.TextSize = 12
            descLabel.TextColor3 = Color3.fromRGB(128, 128, 191)
            descLabel.Size = UDim2.new(0, 215, 0, 42)
            descLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
            descLabel.Text = Desc
            descLabel.Name = "DescLabel"
            descLabel.BackgroundTransparency = 1
            descLabel.Position = UDim2.new(0.050125304609537125, 0, 0.3858707547187805, 0)
        
            local toggleButton = Instance.new("ImageButton", toggleFrame)
            toggleButton.BorderSizePixel = 0
            toggleButton.AutoButtonColor = false
            toggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            toggleButton.Size = UDim2.new(1, 0, 1, 0)
            toggleButton.Name = "Button"
            toggleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
            toggleButton.BackgroundTransparency = 1
        
            local checkImage = Instance.new("ImageLabel", toggleFrame)
            checkImage.BorderSizePixel = 0
            checkImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            checkImage.ImageColor3 = Color3.fromRGB(157, 157, 235)
            checkImage.AnchorPoint = Vector2.new(0, 0.5)
            checkImage.Image = "rbxassetid://7072723598"
            checkImage.Size = UDim2.new(0, 27, 0, 27)
            checkImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
            checkImage.Name = "Check"
            checkImage.BackgroundTransparency = 1
            checkImage.Position = UDim2.new(0.8413890600204468, 0, 0.5, 0)
			
			bool = false
			toggleButton.MouseButton1Click:Connect(function()
				if bool then
					checkImage.Image = "rbxassetid://7072723598"
					bool=false
				elseif bool == false then
					checkImage.Image = "rbxassetid://7072723637"
					bool=true
				elseif bool == nil then
					bool=false
				end
				pcall(bool)
			end)
			return
		end
		
		function tab:Dropdown(Name, Desc, Options, pcall)
			
			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN
			G2L["23"] = Instance.new("Frame", tab.content);
			G2L["23"]["BorderSizePixel"] = 0;
			G2L["23"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 25);
			G2L["23"]["Size"] = UDim2.new(0.963421106338501, 0, -0.11143887788057327, 100);
			G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["23"]["Position"] = UDim2.new(0.021052632480859756, 0, 0.3270857632160187, 0);
			G2L["23"]["Name"] = Name;

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN.UIStroke
			G2L["24"] = Instance.new("UIStroke", G2L["23"]);
			G2L["24"]["Color"] = Color3.fromRGB(54, 54, 81);

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN.UICorner
			G2L["25"] = Instance.new("UICorner", G2L["23"]);
			G2L["25"]["CornerRadius"] = UDim.new(0, 4);

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN.NAME
			G2L["26"] = Instance.new("TextLabel", G2L["23"]);
			G2L["26"]["TextWrapped"] = true;
			G2L["26"]["BorderSizePixel"] = 0;
			G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			G2L["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
			G2L["26"]["TextSize"] = 14;
			G2L["26"]["TextColor3"] = Color3.fromRGB(160, 160, 239);
			G2L["26"]["Size"] = UDim2.new(0, 215, 0, 34);
			G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["26"]["Text"] = Name;
			G2L["26"]["Name"] = [[NAME]];
			G2L["26"]["BackgroundTransparency"] = 1;
			G2L["26"]["Position"] = UDim2.new(0.050125304609537125, 0, 1.0903553260277477e-07, 0);

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN.DESC
			G2L["27"] = Instance.new("TextLabel", G2L["23"]);
			G2L["27"]["TextWrapped"] = true;
			G2L["27"]["BorderSizePixel"] = 0;
			G2L["27"]["TextYAlignment"] = Enum.TextYAlignment.Top;
			G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			G2L["27"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
			G2L["27"]["TextSize"] = 12;
			G2L["27"]["TextColor3"] = Color3.fromRGB(128, 128, 191);
			G2L["27"]["Size"] = UDim2.new(0, 215, 0, 42);
			G2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["27"]["Text"] = Desc;
			G2L["27"]["Name"] = [[DESC]];
			G2L["27"]["BackgroundTransparency"] = 1;
			G2L["27"]["Position"] = UDim2.new(0.050125304609537125, 0, 0.3858707547187805, 0);

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN.Button
			G2L["28"] = Instance.new("ImageButton", G2L["23"]);
			G2L["28"]["BorderSizePixel"] = 0;
			G2L["28"]["AutoButtonColor"] = false;
			G2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			G2L["28"]["Size"] = UDim2.new(1, 0, 1, 0);
			G2L["28"]["Name"] = [[Button]];
			G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["28"]["BackgroundTransparency"] = 1;

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN.Check
			G2L["29"] = Instance.new("ImageLabel", G2L["23"]);
			G2L["29"]["BorderSizePixel"] = 0;
			G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			G2L["29"]["ImageColor3"] = Color3.fromRGB(157, 157, 235);
			G2L["29"]["AnchorPoint"] = Vector2.new(0, 0.5);
			G2L["29"]["Image"] = [[rbxassetid://7072718266]];
			G2L["29"]["Size"] = UDim2.new(0, 27, 0, 27);
			G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["29"]["Name"] = [[Check]];
			G2L["29"]["BackgroundTransparency"] = 1;
			G2L["29"]["Position"] = UDim2.new(0.8413890600204468, 0, 0.5, 0);


			local drop = Options 
            print(Options)


			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2
			G2L["2a"] = Instance.new("Frame", tab.content);
			G2L["2a"]["BorderSizePixel"] = 0;
			G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(17, 17, 25);
			G2L["2a"]["Size"] = UDim2.new(0.963421106338501, 0, 0.22005949914455414, 100);
			G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["2a"]["Position"] = UDim2.new(0.01828945241868496, 0, 0.322518527507782, 0);
			G2L["2a"]["Visible"] = false;
			G2L["2a"]["Name"] = Name..[[_P2]];

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2.UIStroke
			G2L["2b"] = Instance.new("UIStroke", G2L["2a"]);
			G2L["2b"]["Color"] = Color3.fromRGB(54, 54, 81);

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2.UICorner
			G2L["2c"] = Instance.new("UICorner", G2L["2a"]);
			G2L["2c"]["CornerRadius"] = UDim.new(0, 4);

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2.NAME
			G2L["2d"] = Instance.new("TextLabel", G2L["2a"]);
			G2L["2d"]["TextWrapped"] = true;
			G2L["2d"]["BorderSizePixel"] = 0;
			G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			G2L["2d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
			G2L["2d"]["TextSize"] = 14;
			G2L["2d"]["TextColor3"] = Color3.fromRGB(160, 160, 239);
			G2L["2d"]["Size"] = UDim2.new(0, 244, 0, 34);
			G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["2d"]["Text"] = Name;
			G2L["2d"]["Name"] = [[NAME]];
			G2L["2d"]["BackgroundTransparency"] = 1;
			G2L["2d"]["Position"] = UDim2.new(0.05012529343366623, 0, 2.1283059936649806e-07, 0);

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2.Options
			G2L["2e"] = Instance.new("ScrollingFrame", G2L["2a"]);
			G2L["2e"]["Active"] = true;
			G2L["2e"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
			G2L["2e"]["BorderSizePixel"] = 0;
			G2L["2e"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
			G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			G2L["2e"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
			G2L["2e"]["BackgroundTransparency"] = 1;
			G2L["2e"]["Size"] = UDim2.new(0, 272, 0, 121);
			G2L["2e"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			G2L["2e"]["ScrollBarThickness"] = 0;
			G2L["2e"]["Position"] = UDim2.new(0.0028680909890681505, 0, 0.21809564530849457, 0);
			G2L["2e"]["Name"] = [[Options]];

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2.Options.UIPadding
			G2L["35"] = Instance.new("UIPadding", G2L["2e"]);
			G2L["35"]["PaddingTop"] = UDim.new(0, 1);
			G2L["35"]["PaddingRight"] = UDim.new(0, 1);
			G2L["35"]["PaddingBottom"] = UDim.new(0, 1);
			G2L["35"]["PaddingLeft"] = UDim.new(0, 1);

			-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2.Options.UIListLayout
			G2L["36"] = Instance.new("UIListLayout", G2L["2e"]);
			G2L["36"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
			G2L["36"]["Padding"] = UDim.new(0, 7);
			G2L["36"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
			
			selected = nil
			function drop:Add(Name)

				-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2.Options.OPTION
				G2L["2f"] = Instance.new("Frame", G2L["2e"]);
				G2L["2f"]["BorderSizePixel"] = 0;
				G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 45);
				G2L["2f"]["Size"] = UDim2.new(0.963421106338501, 0, -0.5246620178222656, 100);
				G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				G2L["2f"]["Position"] = UDim2.new(0.021052641794085503, 0, 0, 0);
				G2L["2f"]["Name"] = Name;

				-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2.Options.OPTION.UIStroke
				G2L["30"] = Instance.new("UIStroke", G2L["2f"]);
				G2L["30"]["Color"] = Color3.fromRGB(54, 54, 81);

				-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2.Options.OPTION.UICorner
				G2L["31"] = Instance.new("UICorner", G2L["2f"]);
				G2L["31"]["CornerRadius"] = UDim.new(0, 4);

				-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2.Options.OPTION.NAME
				G2L["32"] = Instance.new("TextLabel", G2L["2f"]);
				G2L["32"]["TextWrapped"] = true;
				G2L["32"]["BorderSizePixel"] = 0;
				G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				G2L["32"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				G2L["32"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
				G2L["32"]["TextSize"] = 14;
				G2L["32"]["TextColor3"] = Color3.fromRGB(160, 160, 239);
				G2L["32"]["AnchorPoint"] = Vector2.new(0, 0.5);
				G2L["32"]["Size"] = UDim2.new(0, 215, 0, 34);
				G2L["32"]["Active"] = true;
				G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				G2L["32"]["Text"] = Name;
				G2L["32"]["Name"] = [[NAME]];
				G2L["32"]["BackgroundTransparency"] = 1;
				G2L["32"]["Position"] = UDim2.new(0.05000000074505806, 0, 0.5, 0);

				-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2.Options.OPTION.Button
				G2L["33"] = Instance.new("ImageButton", G2L["2f"]);
				G2L["33"]["BorderSizePixel"] = 0;
				G2L["33"]["AutoButtonColor"] = false;
				G2L["33"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				G2L["33"]["Size"] = UDim2.new(1, 0, 1, 0);
				G2L["33"]["Name"] = [[Button]];
				G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				G2L["33"]["BackgroundTransparency"] = 1;

				-- StarterGui.OuxieUI.UI.Elements.Pages.Page1.DROPDOWN_P2.Options.OPTION.Arrow
				G2L["34"] = Instance.new("ImageLabel", G2L["2f"]);
				G2L["34"]["BorderSizePixel"] = 0;
				G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				G2L["34"]["ImageColor3"] = Color3.fromRGB(157, 157, 235);
				G2L["34"]["AnchorPoint"] = Vector2.new(0, 0.5);
				G2L["34"]["Image"] = [[rbxassetid://7072706745]];
				G2L["34"]["Size"] = UDim2.new(0, 27, 0, 27);
				G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				G2L["34"]["Name"] = [[Arrow]];
				G2L["34"]["BackgroundTransparency"] = 1;
				G2L["34"]["Position"] = UDim2.new(0.8413890600204468, 0, 0.5, 0);

				G2L["33"].MouseButton1Click:Connect(function()
					selected = Name
					pcall()
				end)
			end
			
            for key, value in pairs(drop) do
                if type(value) ~= "function" then
                    print(key, value)
                    drop:Add(tostring(value))
                end
            end

			G2L["28"].MouseButton1Click:Connect(function()
				--G2L["2a"].Visible = not G2L["2a"].Visible
                tab.content[Name.."_P2"].Visible = not tab.content[Name.."_P2"].Visible
			end)
			
		end
		
		return tab
		
	end

	-- StarterGui.OuxieUI.UI.Top.TopHandler
	local function C_e()
		local script = G2L["e"];
		local mini = script.Parent.Mini
		local close = script.Parent.Close

		close.MouseEnter:Connect(function()
			close.ImageLabel.ImageColor3 = Color3.fromRGB(255, 0, 0)
		end)
		mini.MouseEnter:Connect(function()
			mini.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 0)
		end)
		close.MouseLeave:Connect(function()
			close.ImageLabel.ImageColor3 = Color3.fromRGB(161, 161, 241)
		end)
		mini.MouseLeave:Connect(function()
			mini.ImageLabel.ImageColor3 = Color3.fromRGB(161, 161, 241)
		end)

		close.MouseButton1Down:Connect(function()
			close.ImageLabel.ImageColor3 = Color3.fromRGB(255, 0, 0)
		end)
		mini.MouseButton1Down:Connect(function()
			mini.ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 0)
		end)

		close.MouseButton1Click:Connect(function()
			script:FindFirstAncestor("OuxieUI"):Destroy()
		end)
		mini.MouseButton1Click:Connect(function()
			script:FindFirstAncestor("UI").Visible = false
		end)
	end;
	task.spawn(C_e);
	-- StarterGui.OuxieUI.UI.Dragify
	local function C_f()
		local script = G2L["f"];
		local UserInputService = game:GetService("UserInputService")

		local gui = script.Parent
		local d = script.Parent.Top

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		d.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		d.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end;
	task.spawn(C_f);
	-- StarterGui.OuxieUI.UI.Tabs.Holder.TabHandler
	local function C_42()
		local script = G2L["42"];
		local function switch(name)
			for i,v in pairs(script:FindFirstAncestor("UI").Elements.Pages:GetChildren()) do
				if v.Name == name then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end

		for i,v in pairs(script.Parent:GetChildren()) do
			if v:IsA("ImageButton") then
				v.MouseButton1Click:Connect(function()
					switch(v.Name)
				end)
			end
		end
	end;
	task.spawn(C_42);
	-- StarterGui.OuxieUI.MINI.Function
	local function C_46()
		local script = G2L["46"];
		script.Parent.Trigger.MouseButton1Click:Connect(function()
			script:FindFirstAncestor("OuxieUI").UI.Visible = not script:FindFirstAncestor("OuxieUI").UI.Visible
		end)
	end;
	task.spawn(C_46);
	-- StarterGui.OuxieUI.MINI.Dragify
	local function C_47()
		local script = G2L["47"];
		local UserInputService = game:GetService("UserInputService")

		local gui = script.Parent

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end;
	task.spawn(C_47);
	
	function ui:noti(Title, Desc, Num) -- yes ik this is someone elses, full credit to them
		local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
		local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

		Notification:Notify(
			{Title = Title, Description = Desc},
			{OutlineColor = Color3.fromRGB(26, 26, 39),Time = Num, Type = "default"}
		)
	end
	
	return G2L["1"], require;
end

return ui