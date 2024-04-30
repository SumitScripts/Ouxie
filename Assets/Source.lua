local G2L = {};

-- StarterGui.OuxieUIv2
G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[OuxieUIv2]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;

-- StarterGui.OuxieUIv2.func
G2L["2"] = Instance.new("LocalScript", G2L["1"]);
G2L["2"]["Name"] = [[func]];

-- StarterGui.OuxieUIv2.func.Page
G2L["3"] = Instance.new("Frame", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(9, 9, 9);
G2L["3"]["BackgroundTransparency"] = 1;
G2L["3"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Name"] = [[Page]];

-- StarterGui.OuxieUIv2.func.Page.elements
G2L["4"] = Instance.new("ScrollingFrame", G2L["3"]);
G2L["4"]["Active"] = true;
G2L["4"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["4"]["BackgroundTransparency"] = 1;
G2L["4"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["ScrollBarThickness"] = 0;
G2L["4"]["Name"] = [[elements]];

-- StarterGui.OuxieUIv2.func.Page.elements.UIPadding
G2L["5"] = Instance.new("UIPadding", G2L["4"]);
G2L["5"]["PaddingTop"] = UDim.new(0, 13);
G2L["5"]["PaddingBottom"] = UDim.new(0, 13);

-- StarterGui.OuxieUIv2.func.Page.elements.UIListLayout
G2L["6"] = Instance.new("UIListLayout", G2L["4"]);
G2L["6"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["6"]["Padding"] = UDim.new(0, 8);
G2L["6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.OuxieUIv2.func.Tab
G2L["7"] = Instance.new("ImageButton", G2L["2"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["AutoButtonColor"] = false;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["7"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["7"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["7"]["Name"] = [[Tab]];
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

-- StarterGui.OuxieUIv2.func.Tab.Icon
G2L["8"] = Instance.new("Frame", G2L["7"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8"]["BackgroundTransparency"] = 1;
G2L["8"]["Size"] = UDim2.new(0, 38, 1, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["8"]["Name"] = [[Icon]];

-- StarterGui.OuxieUIv2.func.Tab.Icon.ImageLabel
G2L["9"] = Instance.new("ImageLabel", G2L["8"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["9"]["Image"] = [[rbxassetid://7072706318]];
G2L["9"]["Size"] = UDim2.new(0.6000000238418579, 0, 0.6000000238418579, 0);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.OuxieUIv2.func.Tab.Header
G2L["a"] = Instance.new("TextLabel", G2L["7"]);
G2L["a"]["TextTruncate"] = Enum.TextTruncate.SplitWord;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["a"]["TextSize"] = 14;
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["a"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["Text"] = [[Home]];
G2L["a"]["Name"] = [[Header]];
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Position"] = UDim2.new(0.09514281898736954, 0, 0, 0);

-- StarterGui.OuxieUIv2.func.Tab.Header.SizeCon
G2L["b"] = Instance.new("UISizeConstraint", G2L["a"]);
G2L["b"]["Name"] = [[SizeCon]];
G2L["b"]["MaxSize"] = Vector2.new(116, 9999);

-- StarterGui.OuxieUIv2.func.Tab.UIStroke
G2L["c"] = Instance.new("UIStroke", G2L["7"]);
G2L["c"]["Color"] = Color3.fromRGB(51, 51, 51);

-- StarterGui.OuxieUIv2.func.Tab.UIListLayout
G2L["d"] = Instance.new("UIListLayout", G2L["7"]);
G2L["d"]["FillDirection"] = Enum.FillDirection.Horizontal;
G2L["d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.OuxieUIv2.func.Tab.UIPadding
G2L["e"] = Instance.new("UIPadding", G2L["7"]);
G2L["e"]["PaddingRight"] = UDim.new(0, 10);

-- StarterGui.OuxieUIv2.func.Elements
G2L["f"] = Instance.new("Folder", G2L["2"]);
G2L["f"]["Name"] = [[Elements]];

-- StarterGui.OuxieUIv2.func.Elements.Button
G2L["10"] = Instance.new("ImageButton", G2L["f"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["AutoButtonColor"] = false;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["10"]["Size"] = UDim2.new(0, 328, 0, 40);
G2L["10"]["Name"] = [[Button]];
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Position"] = UDim2.new(0.03142857179045677, 0, 0, 0);

-- StarterGui.OuxieUIv2.func.Elements.Button.UICorner
G2L["11"] = Instance.new("UICorner", G2L["10"]);


-- StarterGui.OuxieUIv2.func.Elements.Button.UIStroke
G2L["12"] = Instance.new("UIStroke", G2L["10"]);
G2L["12"]["Color"] = Color3.fromRGB(31, 31, 31);

-- StarterGui.OuxieUIv2.func.Elements.Button.Label
G2L["13"] = Instance.new("TextLabel", G2L["10"]);
G2L["13"]["TextTruncate"] = Enum.TextTruncate.SplitWord;
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["13"]["TextSize"] = 14;
G2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["Size"] = UDim2.new(0.8904878497123718, 0, 1, 0);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Text"] = [[Button Name]];
G2L["13"]["Name"] = [[Label]];
G2L["13"]["BackgroundTransparency"] = 1;

-- StarterGui.OuxieUIv2.func.Elements.Button.Label.UIPadding
G2L["14"] = Instance.new("UIPadding", G2L["13"]);
G2L["14"]["PaddingLeft"] = UDim.new(0, 8);

-- StarterGui.OuxieUIv2.func.Elements.Button.Icon
G2L["15"] = Instance.new("Frame", G2L["10"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Size"] = UDim2.new(0.12195122241973877, 0, 1, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Position"] = UDim2.new(0.8600000143051147, 0, 0, 0);
G2L["15"]["Name"] = [[Icon]];

-- StarterGui.OuxieUIv2.func.Elements.Button.Icon.ImageLabel
G2L["16"] = Instance.new("ImageLabel", G2L["15"]);
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["16"]["Image"] = [[rbxassetid://7072706745]];
G2L["16"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["16"]["BackgroundTransparency"] = 1;
G2L["16"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.OuxieUIv2.func.Elements.Toggle
G2L["17"] = Instance.new("ImageButton", G2L["f"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["AutoButtonColor"] = false;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["17"]["Size"] = UDim2.new(0, 328, 0, 40);
G2L["17"]["Name"] = [[Toggle]];
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Position"] = UDim2.new(0.03142857179045677, 0, 0, 0);

-- StarterGui.OuxieUIv2.func.Elements.Toggle.UICorner
G2L["18"] = Instance.new("UICorner", G2L["17"]);


-- StarterGui.OuxieUIv2.func.Elements.Toggle.UIStroke
G2L["19"] = Instance.new("UIStroke", G2L["17"]);
G2L["19"]["Color"] = Color3.fromRGB(31, 31, 31);

-- StarterGui.OuxieUIv2.func.Elements.Toggle.Label
G2L["1a"] = Instance.new("TextLabel", G2L["17"]);
G2L["1a"]["TextTruncate"] = Enum.TextTruncate.SplitWord;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["1a"]["TextSize"] = 14;
G2L["1a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["Size"] = UDim2.new(0.8600000739097595, 0, 1, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Text"] = [[Toggle Name]];
G2L["1a"]["Name"] = [[Label]];
G2L["1a"]["BackgroundTransparency"] = 1;

-- StarterGui.OuxieUIv2.func.Elements.Toggle.Label.UIPadding
G2L["1b"] = Instance.new("UIPadding", G2L["1a"]);
G2L["1b"]["PaddingLeft"] = UDim.new(0, 8);

-- StarterGui.OuxieUIv2.func.Elements.Toggle.switch
G2L["1c"] = Instance.new("Frame", G2L["17"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1c"]["BackgroundTransparency"] = 1;
G2L["1c"]["Size"] = UDim2.new(0.12195122241973877, 0, 1, 0);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Position"] = UDim2.new(0.8600000143051147, 0, 0, 0);
G2L["1c"]["Name"] = [[switch]];

-- StarterGui.OuxieUIv2.func.Elements.Toggle.switch.Frame
G2L["1d"] = Instance.new("Frame", G2L["1c"]);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["1d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1d"]["Size"] = UDim2.new(0.6000000238418579, 0, 0.6000000238418579, 0);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.OuxieUIv2.func.Elements.Toggle.switch.Frame.UICorner
G2L["1e"] = Instance.new("UICorner", G2L["1d"]);


-- StarterGui.OuxieUIv2.func.Elements.Toggle.switch.Frame.UIStroke
G2L["1f"] = Instance.new("UIStroke", G2L["1d"]);
G2L["1f"]["Color"] = Color3.fromRGB(169, 30, 255);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down
G2L["20"] = Instance.new("ImageButton", G2L["f"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["AutoButtonColor"] = false;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["20"]["Size"] = UDim2.new(0, 328, 0, 217);
G2L["20"]["Name"] = [[Dropdown_down]];
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Position"] = UDim2.new(0.03142857179045677, 0, 0.17910447716712952, 0);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.UICorner
G2L["21"] = Instance.new("UICorner", G2L["20"]);


-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.UIStroke
G2L["22"] = Instance.new("UIStroke", G2L["20"]);
G2L["22"]["Color"] = Color3.fromRGB(31, 31, 31);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.Label
G2L["23"] = Instance.new("TextLabel", G2L["20"]);
G2L["23"]["TextTruncate"] = Enum.TextTruncate.SplitWord;
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["23"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["23"]["TextSize"] = 14;
G2L["23"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["23"]["Size"] = UDim2.new(0.8899999856948853, 0, 0, 40);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Text"] = [[Dropdown Name]];
G2L["23"]["Name"] = [[Label]];
G2L["23"]["BackgroundTransparency"] = 1;

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.Label.UIPadding
G2L["24"] = Instance.new("UIPadding", G2L["23"]);
G2L["24"]["PaddingLeft"] = UDim.new(0, 8);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List
G2L["25"] = Instance.new("Frame", G2L["20"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["25"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["25"]["Size"] = UDim2.new(0.9451219439506531, 0, 0.7733979225158691, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Position"] = UDim2.new(0.5, 0, 0.5710307359695435, 0);
G2L["25"]["Name"] = [[List]];

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List.UIStroke
G2L["26"] = Instance.new("UIStroke", G2L["25"]);
G2L["26"]["Color"] = Color3.fromRGB(31, 31, 31);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List.UICorner
G2L["27"] = Instance.new("UICorner", G2L["25"]);


-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List.List
G2L["28"] = Instance.new("ScrollingFrame", G2L["25"]);
G2L["28"]["Active"] = true;
G2L["28"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["28"]["BackgroundTransparency"] = 1;
G2L["28"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["28"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["ScrollBarThickness"] = 0;
G2L["28"]["Name"] = [[List]];

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List.List.Button
G2L["29"] = Instance.new("ImageButton", G2L["28"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["AutoButtonColor"] = false;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["29"]["Size"] = UDim2.new(0, 291, 0, 40);
G2L["29"]["Name"] = [[Button]];
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Visible"] = false;
G2L["29"]["Position"] = UDim2.new(-0.029032258316874504, 0, 0, 0);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List.List.Button.UICorner
G2L["2a"] = Instance.new("UICorner", G2L["29"]);


-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List.List.Button.UIStroke
G2L["2b"] = Instance.new("UIStroke", G2L["29"]);
G2L["2b"]["Color"] = Color3.fromRGB(31, 31, 31);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List.List.Button.Label
G2L["2c"] = Instance.new("TextLabel", G2L["29"]);
G2L["2c"]["TextTruncate"] = Enum.TextTruncate.SplitWord;
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["2c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["2c"]["TextSize"] = 14;
G2L["2c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["Size"] = UDim2.new(0.8904878497123718, 0, 1, 0);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Text"] = [[Button Name]];
G2L["2c"]["Name"] = [[Label]];
G2L["2c"]["BackgroundTransparency"] = 1;

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List.List.Button.Label.UIPadding
G2L["2d"] = Instance.new("UIPadding", G2L["2c"]);
G2L["2d"]["PaddingLeft"] = UDim.new(0, 8);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List.List.Button.Icon
G2L["2e"] = Instance.new("Frame", G2L["29"]);
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["BackgroundTransparency"] = 1;
G2L["2e"]["Size"] = UDim2.new(0.12195122241973877, 0, 1, 0);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Position"] = UDim2.new(0.8600000143051147, 0, 0, 0);
G2L["2e"]["Name"] = [[Icon]];

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List.List.Button.Icon.ImageLabel
G2L["2f"] = Instance.new("ImageLabel", G2L["2e"]);
G2L["2f"]["BorderSizePixel"] = 0;
G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2f"]["Image"] = [[rbxassetid://7072706745]];
G2L["2f"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2f"]["BackgroundTransparency"] = 1;
G2L["2f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List.List.UIListLayout
G2L["30"] = Instance.new("UIListLayout", G2L["28"]);
G2L["30"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["30"]["Padding"] = UDim.new(0, 8);
G2L["30"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.OuxieUIv2.func.Elements.Dropdown_down.List.List.UIPadding
G2L["31"] = Instance.new("UIPadding", G2L["28"]);
G2L["31"]["PaddingTop"] = UDim.new(0, 13);
G2L["31"]["PaddingBottom"] = UDim.new(0, 13);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown
G2L["32"] = Instance.new("ImageButton", G2L["f"]);
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["AutoButtonColor"] = false;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["32"]["Size"] = UDim2.new(0, 328, 0, 40);
G2L["32"]["Name"] = [[Dropdown]];
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Position"] = UDim2.new(0.03142857179045677, 0, 0, 0);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown.UICorner
G2L["33"] = Instance.new("UICorner", G2L["32"]);


-- StarterGui.OuxieUIv2.func.Elements.Dropdown.UIStroke
G2L["34"] = Instance.new("UIStroke", G2L["32"]);
G2L["34"]["Color"] = Color3.fromRGB(31, 31, 31);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown.Label
G2L["35"] = Instance.new("TextLabel", G2L["32"]);
G2L["35"]["TextTruncate"] = Enum.TextTruncate.SplitWord;
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["35"]["TextSize"] = 14;
G2L["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["Size"] = UDim2.new(0.8904878497123718, 0, 1, 0);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Text"] = [[Dropdown Name]];
G2L["35"]["Name"] = [[Label]];
G2L["35"]["BackgroundTransparency"] = 1;

-- StarterGui.OuxieUIv2.func.Elements.Dropdown.Label.UIPadding
G2L["36"] = Instance.new("UIPadding", G2L["35"]);
G2L["36"]["PaddingLeft"] = UDim.new(0, 8);

-- StarterGui.OuxieUIv2.func.Elements.Dropdown.Icon
G2L["37"] = Instance.new("Frame", G2L["32"]);
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["BackgroundTransparency"] = 1;
G2L["37"]["Size"] = UDim2.new(0.12195122241973877, 0, 1, 0);
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Position"] = UDim2.new(0.8600000143051147, 0, 0, 0);
G2L["37"]["Name"] = [[Icon]];

-- StarterGui.OuxieUIv2.func.Elements.Dropdown.Icon.ImageLabel
G2L["38"] = Instance.new("ImageLabel", G2L["37"]);
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["38"]["Image"] = [[rbxassetid://7072718266]];
G2L["38"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["BackgroundTransparency"] = 1;
G2L["38"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.OuxieUIv2.func.Elements.Input
G2L["39"] = Instance.new("ImageButton", G2L["f"]);
G2L["39"]["BorderSizePixel"] = 0;
G2L["39"]["AutoButtonColor"] = false;
G2L["39"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["39"]["Size"] = UDim2.new(0, 328, 0, 40);
G2L["39"]["Name"] = [[Input]];
G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["39"]["Position"] = UDim2.new(0.03142857179045677, 0, 0, 0);

-- StarterGui.OuxieUIv2.func.Elements.Input.UICorner
G2L["3a"] = Instance.new("UICorner", G2L["39"]);


-- StarterGui.OuxieUIv2.func.Elements.Input.UIStroke
G2L["3b"] = Instance.new("UIStroke", G2L["39"]);
G2L["3b"]["Color"] = Color3.fromRGB(31, 31, 31);

-- StarterGui.OuxieUIv2.func.Elements.Input.Label
G2L["3c"] = Instance.new("TextLabel", G2L["39"]);
G2L["3c"]["TextTruncate"] = Enum.TextTruncate.SplitWord;
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3c"]["TextSize"] = 14;
G2L["3c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3c"]["Size"] = UDim2.new(0.69841468334198, 0, 1, 0);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["Text"] = [[Input Name]];
G2L["3c"]["Name"] = [[Label]];
G2L["3c"]["BackgroundTransparency"] = 1;

-- StarterGui.OuxieUIv2.func.Elements.Input.Label.UIPadding
G2L["3d"] = Instance.new("UIPadding", G2L["3c"]);
G2L["3d"]["PaddingLeft"] = UDim.new(0, 8);

-- StarterGui.OuxieUIv2.func.Elements.Input.raw
G2L["3e"] = Instance.new("Frame", G2L["39"]);
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["BackgroundTransparency"] = 1;
G2L["3e"]["Size"] = UDim2.new(0.2835368514060974, 0, 1, 0);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Position"] = UDim2.new(0.69841468334198, 0, 0, 0);
G2L["3e"]["Name"] = [[raw]];

-- StarterGui.OuxieUIv2.func.Elements.Input.raw.TextBox
G2L["3f"] = Instance.new("TextBox", G2L["3e"]);
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["TextSize"] = 14;
G2L["3f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3f"]["TextTruncate"] = Enum.TextTruncate.SplitWord;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["3f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["3f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3f"]["PlaceholderText"] = [[str/num]];
G2L["3f"]["Size"] = UDim2.new(0.8999999761581421, 0, 0.75, 0);
G2L["3f"]["ClipsDescendants"] = true;
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Text"] = [[hey wassupgsdgsdf]];
G2L["3f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.OuxieUIv2.func.Elements.Input.raw.TextBox.UIPadding
G2L["40"] = Instance.new("UIPadding", G2L["3f"]);
G2L["40"]["PaddingLeft"] = UDim.new(0, 9);

-- StarterGui.OuxieUIv2.func.Elements.Input.raw.TextBox.UICorner
G2L["41"] = Instance.new("UICorner", G2L["3f"]);


-- StarterGui.OuxieUIv2.func.Elements.Input.raw.TextBox.UIStroke
G2L["42"] = Instance.new("UIStroke", G2L["3f"]);
G2L["42"]["Color"] = Color3.fromRGB(31, 31, 31);
G2L["42"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

-- StarterGui.OuxieUIv2.Loader
G2L["43"] = Instance.new("Frame", G2L["1"]);
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(9, 9, 9);
G2L["43"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["43"]["Size"] = UDim2.new(0, 250, 0, 250);
G2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["43"]["Visible"] = false;
G2L["43"]["Name"] = [[Loader]];

-- StarterGui.OuxieUIv2.Loader.UICorner
G2L["44"] = Instance.new("UICorner", G2L["43"]);
G2L["44"]["CornerRadius"] = UDim.new(0, 12);

-- StarterGui.OuxieUIv2.Loader.Logo
G2L["45"] = Instance.new("ImageLabel", G2L["43"]);
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["45"]["Image"] = [[rbxassetid://17266521861]];
G2L["45"]["Size"] = UDim2.new(0.4000000059604645, 0, 0.4000000059604645, 0);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Name"] = [[Logo]];
G2L["45"]["BackgroundTransparency"] = 1;
G2L["45"]["Position"] = UDim2.new(0.5, 0, 0.4000000059604645, 0);

-- StarterGui.OuxieUIv2.Loader.UIStroke
G2L["46"] = Instance.new("UIStroke", G2L["43"]);
G2L["46"]["Color"] = Color3.fromRGB(61, 61, 61);

-- StarterGui.OuxieUIv2.Loader.Progressbar
G2L["47"] = Instance.new("Frame", G2L["43"]);
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(12, 12, 12);
G2L["47"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["47"]["Size"] = UDim2.new(0.800000011920929, 0, 0.10999999940395355, 0);
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Position"] = UDim2.new(0.5, 0, 0.828000009059906, 0);
G2L["47"]["Name"] = [[Progressbar]];

-- StarterGui.OuxieUIv2.Loader.Progressbar.UIStroke
G2L["48"] = Instance.new("UIStroke", G2L["47"]);
G2L["48"]["Color"] = Color3.fromRGB(61, 61, 61);

-- StarterGui.OuxieUIv2.Loader.Progressbar.UICorner
G2L["49"] = Instance.new("UICorner", G2L["47"]);
G2L["49"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.OuxieUIv2.Loader.Progressbar.bar
G2L["4a"] = Instance.new("Frame", G2L["47"]);
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["4a"]["Size"] = UDim2.new(0.4000000059604645, 0, 1, 0);
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["Name"] = [[bar]];

-- StarterGui.OuxieUIv2.Loader.Progressbar.bar.UICorner
G2L["4b"] = Instance.new("UICorner", G2L["4a"]);
G2L["4b"]["CornerRadius"] = UDim.new(0, 6);

-- StarterGui.OuxieUIv2.Loader.Progressbar.bar.UISizeConstraint
G2L["4c"] = Instance.new("UISizeConstraint", G2L["4a"]);
G2L["4c"]["MaxSize"] = Vector2.new(200, 9999);

-- StarterGui.OuxieUIv2.Loader.Percent
G2L["4d"] = Instance.new("TextLabel", G2L["43"]);
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["4d"]["TextSize"] = 14;
G2L["4d"]["TextColor3"] = Color3.fromRGB(61, 61, 61);
G2L["4d"]["Size"] = UDim2.new(0, 200, 0, 21);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["Text"] = [[0%]];
G2L["4d"]["Name"] = [[Percent]];
G2L["4d"]["BackgroundTransparency"] = 1;
G2L["4d"]["Position"] = UDim2.new(0.10000000149011612, 0, 0.7440000176429749, 0);

-- StarterGui.OuxieUIv2.UI
G2L["4e"] = Instance.new("Frame", G2L["1"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(9, 9, 9);
G2L["4e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4e"]["Size"] = UDim2.new(0, 350, 0, 370);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["4e"]["Name"] = [[UI]];

-- StarterGui.OuxieUIv2.UI.UICorner
G2L["4f"] = Instance.new("UICorner", G2L["4e"]);
G2L["4f"]["CornerRadius"] = UDim.new(0, 12);

-- StarterGui.OuxieUIv2.UI.UIStroke
G2L["50"] = Instance.new("UIStroke", G2L["4e"]);
G2L["50"]["Color"] = Color3.fromRGB(61, 61, 61);

-- StarterGui.OuxieUIv2.UI.topbar
G2L["51"] = Instance.new("Frame", G2L["4e"]);
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["51"]["Size"] = UDim2.new(1, 0, 0.10000000149011612, 0);
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Name"] = [[topbar]];

-- StarterGui.OuxieUIv2.UI.topbar.UICorner
G2L["52"] = Instance.new("UICorner", G2L["51"]);
G2L["52"]["CornerRadius"] = UDim.new(0, 12);

-- StarterGui.OuxieUIv2.UI.topbar.cover
G2L["53"] = Instance.new("Frame", G2L["51"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["53"]["Size"] = UDim2.new(1, 0, 0.29729729890823364, 0);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Position"] = UDim2.new(0, 0, 0.7027027010917664, 0);
G2L["53"]["Name"] = [[cover]];

-- StarterGui.OuxieUIv2.UI.topbar.cover.Frame
G2L["54"] = Instance.new("Frame", G2L["53"]);
G2L["54"]["ZIndex"] = 999;
G2L["54"]["BorderSizePixel"] = 0;
G2L["54"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["54"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["54"]["Position"] = UDim2.new(0, 0, 1, 0);

-- StarterGui.OuxieUIv2.UI.topbar.OuxieLogo
G2L["55"] = Instance.new("Frame", G2L["51"]);
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["BackgroundTransparency"] = 1;
G2L["55"]["Size"] = UDim2.new(0.10571428388357162, 0, 1, 0);
G2L["55"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["Name"] = [[OuxieLogo]];

-- StarterGui.OuxieUIv2.UI.topbar.OuxieLogo.ImageLabel
G2L["56"] = Instance.new("ImageLabel", G2L["55"]);
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["56"]["Image"] = [[rbxassetid://17266521861]];
G2L["56"]["Size"] = UDim2.new(0.800000011920929, 0, 0.800000011920929, 0);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["BackgroundTransparency"] = 1;
G2L["56"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.OuxieUIv2.UI.topbar.Header
G2L["57"] = Instance.new("TextLabel", G2L["51"]);
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["57"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["57"]["TextSize"] = 14;
G2L["57"]["TextColor3"] = Color3.fromRGB(169, 30, 255);
G2L["57"]["Size"] = UDim2.new(0.7048571705818176, 0, 1, 0);
G2L["57"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["Text"] = [[Ouxie UI v2]];
G2L["57"]["Name"] = [[Header]];
G2L["57"]["BackgroundTransparency"] = 1;
G2L["57"]["Position"] = UDim2.new(0.09514281898736954, 0, 0, 0);

-- StarterGui.OuxieUIv2.UI.topbar.Close
G2L["58"] = Instance.new("Frame", G2L["51"]);
G2L["58"]["ZIndex"] = 2;
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["58"]["Size"] = UDim2.new(0.09428571164608002, 0, 0.8918918967247009, 0);
G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["Position"] = UDim2.new(0.906000018119812, 0, 0, 0);
G2L["58"]["Name"] = [[Close]];

-- StarterGui.OuxieUIv2.UI.topbar.Close.UICorner
G2L["59"] = Instance.new("UICorner", G2L["58"]);
G2L["59"]["CornerRadius"] = UDim.new(0, 12);

-- StarterGui.OuxieUIv2.UI.topbar.Close.cover-bottom
G2L["5a"] = Instance.new("Frame", G2L["58"]);
G2L["5a"]["ZIndex"] = 2;
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["5a"]["Size"] = UDim2.new(1, 0, 0, 12);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["Position"] = UDim2.new(0, 0, 0.75, 0);
G2L["5a"]["Name"] = [[cover-bottom]];

-- StarterGui.OuxieUIv2.UI.topbar.Close.cover-left
G2L["5b"] = Instance.new("Frame", G2L["58"]);
G2L["5b"]["ZIndex"] = 2;
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["5b"]["Size"] = UDim2.new(0, 9, 1, 0);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Name"] = [[cover-left]];

-- StarterGui.OuxieUIv2.UI.topbar.Close.CloseX
G2L["5c"] = Instance.new("ImageLabel", G2L["58"]);
G2L["5c"]["ZIndex"] = 2;
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5c"]["Image"] = [[rbxassetid://7072725342]];
G2L["5c"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Name"] = [[CloseX]];
G2L["5c"]["BackgroundTransparency"] = 1;
G2L["5c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

-- StarterGui.OuxieUIv2.UI.topbar.Close.CloseButton
G2L["5d"] = Instance.new("ImageButton", G2L["58"]);
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["5d"]["Name"] = [[CloseButton]];
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["BackgroundTransparency"] = 1;

-- StarterGui.OuxieUIv2.UI.tabs
G2L["5e"] = Instance.new("Frame", G2L["4e"]);
G2L["5e"]["BorderSizePixel"] = 0;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(13, 13, 13);
G2L["5e"]["Size"] = UDim2.new(1, 0, 0.10000000149011612, 0);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5e"]["Position"] = UDim2.new(0, 0, 0.10270269960165024, 0);
G2L["5e"]["Name"] = [[tabs]];

-- StarterGui.OuxieUIv2.UI.tabs.cover
G2L["5f"] = Instance.new("Frame", G2L["5e"]);
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(15, 15, 15);
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["Size"] = UDim2.new(1, 0, 0.29729729890823364, 0);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Position"] = UDim2.new(0, 0, 0.7027027010917664, 0);
G2L["5f"]["Name"] = [[cover]];

-- StarterGui.OuxieUIv2.UI.tabs.cover.Frame
G2L["60"] = Instance.new("Frame", G2L["5f"]);
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["60"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Position"] = UDim2.new(0, 0, 1, 0);

-- StarterGui.OuxieUIv2.UI.tabs.tabs
G2L["61"] = Instance.new("ScrollingFrame", G2L["5e"]);
G2L["61"]["Active"] = true;
G2L["61"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["AutomaticCanvasSize"] = Enum.AutomaticSize.X;
G2L["61"]["BackgroundTransparency"] = 1;
G2L["61"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["ScrollBarThickness"] = 0;
G2L["61"]["Name"] = [[tabs]];

-- StarterGui.OuxieUIv2.UI.tabs.tabs.UIListLayout
G2L["62"] = Instance.new("UIListLayout", G2L["61"]);
G2L["62"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["62"]["FillDirection"] = Enum.FillDirection.Horizontal;
G2L["62"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.OuxieUIv2.UI.pages
G2L["63"] = Instance.new("Frame", G2L["4e"]);
G2L["63"]["BorderSizePixel"] = 0;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(9, 9, 9);
G2L["63"]["BackgroundTransparency"] = 1;
G2L["63"]["Size"] = UDim2.new(1, 0, 0.7945945858955383, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["63"]["Position"] = UDim2.new(0, 0, 0.20540539920330048, 0);
G2L["63"]["Name"] = [[pages]];

-- StarterGui.OuxieUIv2.func
--hey (from skire)

return G2L["1"];