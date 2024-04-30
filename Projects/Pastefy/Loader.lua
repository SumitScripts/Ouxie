local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

if CoreGui:FindFirstChild("Pastefy") then
    CoreGui.Pastefy:Destroy()
end

local ui = {}

function ui:load()
    local G2L = {};

    -- StarterGui.Pastefy
    G2L["1"] = Instance.new("ScreenGui", CoreGui);
    G2L["1"]["IgnoreGuiInset"] = true;
    G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
    G2L["1"]["Name"] = [[Pastefy]];
    G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
    G2L["1"]["ResetOnSpawn"] = false;

    -- StarterGui.Pastefy.Frame
    G2L["2"] = Instance.new("Frame", G2L["1"]);
    G2L["2"]["BorderSizePixel"] = 0;
    G2L["2"]["BackgroundColor3"] = Color3.fromRGB(27, 31, 40);
    G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L["2"]["Size"] = UDim2.new(0, 490, 0, 284);
    G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

    -- StarterGui.Pastefy.Frame.UICorner
    G2L["3"] = Instance.new("UICorner", G2L["2"]);
    G2L["3"]["CornerRadius"] = UDim.new(0, 12);

    -- StarterGui.Pastefy.Frame.Topbar
    G2L["4"] = Instance.new("Frame", G2L["2"]);
    G2L["4"]["BorderSizePixel"] = 0;
    G2L["4"]["BackgroundColor3"] = Color3.fromRGB(34, 38, 50);
    G2L["4"]["Size"] = UDim2.new(0, 490, 0, 48);
    G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["4"]["Name"] = [[Topbar]];

    -- StarterGui.Pastefy.Frame.Topbar.UICorner
    G2L["5"] = Instance.new("UICorner", G2L["4"]);
    G2L["5"]["CornerRadius"] = UDim.new(0, 12);

    -- StarterGui.Pastefy.Frame.Topbar.cover
    G2L["6"] = Instance.new("Frame", G2L["4"]);
    G2L["6"]["BorderSizePixel"] = 0;
    G2L["6"]["BackgroundColor3"] = Color3.fromRGB(34, 38, 50);
    G2L["6"]["Size"] = UDim2.new(0, 490, 0, 12);
    G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["6"]["Position"] = UDim2.new(0, 0, 0.75, 0);
    G2L["6"]["Name"] = [[cover]];

    -- StarterGui.Pastefy.Frame.Topbar.Banner
    G2L["7"] = Instance.new("ImageLabel", G2L["2"]);
    G2L["7"]["ZIndex"] = 2;
    G2L["7"]["BorderSizePixel"] = 0;
    G2L["7"]["BackgroundColor3"] = Color3.fromRGB(34, 38, 50);
    G2L["7"]["Size"] = UDim2.new(0, 144, 0, 50);
    G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["7"]["Name"] = [[Banner]];
    G2L["7"]["Position"] = UDim2.new(0, 34, 0, 18);

    -- StarterGui.Pastefy.Frame.Topbar.Banner.UICorner
    G2L["8"] = Instance.new("UICorner", G2L["7"]);
    G2L["8"]["CornerRadius"] = UDim.new(0, 12);

    -- StarterGui.Pastefy.Frame.Topbar.Close
    G2L["9"] = Instance.new("Frame", G2L["4"]);
    G2L["9"]["ZIndex"] = 2;
    G2L["9"]["BorderSizePixel"] = 0;
    G2L["9"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
    G2L["9"]["Size"] = UDim2.new(0, 48, 0, 48);
    G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["9"]["Position"] = UDim2.new(0.9020408391952515, 0, 0, 0);
    G2L["9"]["Name"] = [[Close]];

    -- StarterGui.Pastefy.Frame.Topbar.Close.UICorner
    G2L["a"] = Instance.new("UICorner", G2L["9"]);
    G2L["a"]["CornerRadius"] = UDim.new(0, 12);

    -- StarterGui.Pastefy.Frame.Topbar.Close.cover-bottom
    G2L["b"] = Instance.new("Frame", G2L["9"]);
    G2L["b"]["ZIndex"] = 2;
    G2L["b"]["BorderSizePixel"] = 0;
    G2L["b"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
    G2L["b"]["Size"] = UDim2.new(0, 48, 0, 12);
    G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["b"]["Position"] = UDim2.new(0, 0, 0.75, 0);
    G2L["b"]["Name"] = [[cover-bottom]];

    -- StarterGui.Pastefy.Frame.Topbar.Close.cover-left
    G2L["c"] = Instance.new("Frame", G2L["9"]);
    G2L["c"]["ZIndex"] = 2;
    G2L["c"]["BorderSizePixel"] = 0;
    G2L["c"]["BackgroundColor3"] = Color3.fromRGB(39, 43, 57);
    G2L["c"]["Size"] = UDim2.new(0, 9, 0, 48);
    G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["c"]["Name"] = [[cover-left]];

    -- StarterGui.Pastefy.Frame.Topbar.Close.CloseX
    G2L["d"] = Instance.new("ImageLabel", G2L["9"]);
    G2L["d"]["ZIndex"] = 2;
    G2L["d"]["BorderSizePixel"] = 0;
    G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    G2L["d"]["Image"] = [[rbxassetid://7072725342]];
    G2L["d"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
    G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["d"]["Name"] = [[CloseX]];
    G2L["d"]["BackgroundTransparency"] = 1;
    G2L["d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

    -- StarterGui.Pastefy.Frame.Topbar.Close.CloseButton
    G2L["e"] = Instance.new("ImageButton", G2L["9"]);
    G2L["e"]["BorderSizePixel"] = 0;
    G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["e"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["e"]["Name"] = [[CloseButton]];
    G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["e"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.Topbar.Close.Function
    G2L["f"] = Instance.new("LocalScript", G2L["9"]);
    G2L["f"]["Name"] = [[Function]];

    -- StarterGui.Pastefy.Frame.Topbar.UserIcon
    G2L["10"] = Instance.new("ImageLabel", G2L["4"]);
    G2L["10"]["ZIndex"] = 2;
    G2L["10"]["BorderSizePixel"] = 0;
    G2L["10"]["BackgroundColor3"] = Color3.fromRGB(34, 38, 50);
    G2L["10"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
    G2L["10"]["Size"] = UDim2.new(0, 39, 0, 39);
    G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["10"]["Name"] = [[UserIcon]];
    G2L["10"]["Position"] = UDim2.new(0.3183673322200775, 0, 0.4583333432674408, 0);

    -- StarterGui.Pastefy.Frame.Topbar.UserIcon.UICorner
    G2L["11"] = Instance.new("UICorner", G2L["10"]);
    G2L["11"]["CornerRadius"] = UDim.new(1, 0);

    -- StarterGui.Pastefy.Frame.Topbar.UserIcon.UIStroke
    G2L["12"] = Instance.new("UIStroke", G2L["10"]);
    G2L["12"]["Color"] = Color3.fromRGB(255, 52, 52);
    G2L["12"]["Thickness"] = 1.2999999523162842;
    G2L["12"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    -- StarterGui.Pastefy.Frame.Dragify
    G2L["13"] = Instance.new("LocalScript", G2L["2"]);
    G2L["13"]["Name"] = [[Dragify]];

    -- StarterGui.Pastefy.Frame.Sidebar
    G2L["14"] = Instance.new("Frame", G2L["2"]);
    G2L["14"]["BorderSizePixel"] = 0;
    G2L["14"]["BackgroundColor3"] = Color3.fromRGB(34, 38, 50);
    G2L["14"]["Size"] = UDim2.new(0, 207, 0, 284);
    G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["14"]["Name"] = [[Sidebar]];

    -- StarterGui.Pastefy.Frame.Sidebar.UICorner
    G2L["15"] = Instance.new("UICorner", G2L["14"]);
    G2L["15"]["CornerRadius"] = UDim.new(0, 12);

    -- StarterGui.Pastefy.Frame.Sidebar.cover-right
    G2L["16"] = Instance.new("Frame", G2L["14"]);
    G2L["16"]["BorderSizePixel"] = 0;
    G2L["16"]["BackgroundColor3"] = Color3.fromRGB(34, 38, 50);
    G2L["16"]["Size"] = UDim2.new(0, 12, 0, 236);
    G2L["16"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["16"]["Position"] = UDim2.new(0.9420289993286133, 0, 0.1690140813589096, 0);
    G2L["16"]["Name"] = [[cover-right]];

    -- StarterGui.Pastefy.Frame.Sidebar.cover-top
    G2L["17"] = Instance.new("Frame", G2L["14"]);
    G2L["17"]["BorderSizePixel"] = 0;
    G2L["17"]["BackgroundColor3"] = Color3.fromRGB(34, 38, 50);
    G2L["17"]["Size"] = UDim2.new(0, 207, 0, 19);
    G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["17"]["Position"] = UDim2.new(0, 0, 0.1267605572938919, 0);
    G2L["17"]["Name"] = [[cover-top]];

    -- StarterGui.Pastefy.Frame.Sidebar.Content
    G2L["18"] = Instance.new("Frame", G2L["14"]);
    G2L["18"]["BorderSizePixel"] = 0;
    G2L["18"]["BackgroundColor3"] = Color3.fromRGB(39, 44, 58);
    G2L["18"]["Size"] = UDim2.new(0.8260869383811951, 0, 0.47887325286865234, -20);
    G2L["18"]["ClipsDescendants"] = true;
    G2L["18"]["Position"] = UDim2.new(0, 18, 0, 126);
    G2L["18"]["Name"] = [[Content]];

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder
    G2L["19"] = Instance.new("ScrollingFrame", G2L["18"]);
    G2L["19"]["Active"] = true;
    G2L["19"]["ZIndex"] = 999999999;
    G2L["19"]["BorderSizePixel"] = 0;
    G2L["19"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
    G2L["19"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
    G2L["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["19"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
    G2L["19"]["BackgroundTransparency"] = 1;
    G2L["19"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["19"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["19"]["ScrollBarThickness"] = 7;
    G2L["19"]["Name"] = [[Holder]];
    G2L["19"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.UIListLayout
    G2L["1a"] = Instance.new("UIListLayout", G2L["19"]);
    G2L["1a"]["FillDirection"] = Enum.FillDirection.Horizontal;
    G2L["1a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.padding
    G2L["1b"] = Instance.new("UIPadding", G2L["19"]);
    G2L["1b"]["Name"] = [[padding]];
    G2L["1b"]["PaddingRight"] = UDim.new(0, 10);

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.Lines
    G2L["1c"] = Instance.new("TextLabel", G2L["19"]);
    G2L["1c"]["ZIndex"] = 4;
    G2L["1c"]["TextYAlignment"] = Enum.TextYAlignment.Top;
    G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["1c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L["1c"]["TextSize"] = 15;
    G2L["1c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["1c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
    G2L["1c"]["Size"] = UDim2.new(0, 30, 1, 0);
    G2L["1c"]["Text"] = [[1]];
    G2L["1c"]["Name"] = [[Lines]];
    G2L["1c"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.Lines.padding
    G2L["1d"] = Instance.new("UIPadding", G2L["1c"]);
    G2L["1d"]["PaddingTop"] = UDim.new(0, 6);
    G2L["1d"]["Name"] = [[padding]];

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.EditorFrame
    G2L["1e"] = Instance.new("ImageButton", G2L["19"]);
    G2L["1e"]["ZIndex"] = 10;
    G2L["1e"]["BorderSizePixel"] = 0;
    G2L["1e"]["SliceCenter"] = Rect.new(512, 512, 512, 512);
    G2L["1e"]["ScaleType"] = Enum.ScaleType.Crop;
    G2L["1e"]["AutoButtonColor"] = false;
    G2L["1e"]["SliceScale"] = 4;
    G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 39);
    G2L["1e"]["AutomaticSize"] = Enum.AutomaticSize.XY;
    G2L["1e"]["ImageColor3"] = Color3.fromRGB(26, 26, 39);
    G2L["1e"]["Selectable"] = false;
    G2L["1e"]["AnchorPoint"] = Vector2.new(0.5, 0);
    G2L["1e"]["Name"] = [[EditorFrame]];
    G2L["1e"]["ClipsDescendants"] = true;
    G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["1e"]["Position"] = UDim2.new(2.124176263809204, 0, -0.9952167272567749, 30);
    G2L["1e"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.EditorFrame.UIPadding
    G2L["1f"] = Instance.new("UIPadding", G2L["1e"]);


    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.EditorFrame.Source
    G2L["20"] = Instance.new("TextBox", G2L["1e"]);
    G2L["20"]["CursorPosition"] = -1;
    G2L["20"]["Active"] = true;
    G2L["20"]["ZIndex"] = 4;
    G2L["20"]["BorderSizePixel"] = 0;
    G2L["20"]["TextSize"] = 13;
    G2L["20"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["20"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L["20"]["BackgroundTransparency"] = 1;
    G2L["20"]["PlaceholderText"] = [[ Paste in here ]];
    G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["20"]["Text"] = [[]];
    G2L["20"]["AutomaticSize"] = Enum.AutomaticSize.XY;
    G2L["20"]["Name"] = [[Source]];
    G2L["20"]["ClearTextOnFocus"] = true;

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.EditorFrame.Source.padding
    G2L["21"] = Instance.new("UIPadding", G2L["20"]);
    G2L["21"]["PaddingTop"] = UDim.new(0, 8);
    G2L["21"]["Name"] = [[padding]];

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.EditorFrame.Source.Comments_
    G2L["22"] = Instance.new("TextLabel", G2L["20"]);
    G2L["22"]["ZIndex"] = 5;
    G2L["22"]["TextYAlignment"] = Enum.TextYAlignment.Top;
    G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L["22"]["TextSize"] = 13;
    G2L["22"]["TextColor3"] = Color3.fromRGB(154, 154, 154);
    G2L["22"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["22"]["Text"] = [[]];
    G2L["22"]["Name"] = [[Comments_]];
    G2L["22"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.EditorFrame.Source.Globals_
    G2L["23"] = Instance.new("TextLabel", G2L["20"]);
    G2L["23"]["ZIndex"] = 5;
    G2L["23"]["TextYAlignment"] = Enum.TextYAlignment.Top;
    G2L["23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["23"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["23"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L["23"]["TextSize"] = 13;
    G2L["23"]["TextColor3"] = Color3.fromRGB(103, 205, 205);
    G2L["23"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["23"]["Text"] = [[]];
    G2L["23"]["Name"] = [[Globals_]];
    G2L["23"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.EditorFrame.Source.Keywords_
    G2L["24"] = Instance.new("TextLabel", G2L["20"]);
    G2L["24"]["ZIndex"] = 5;
    G2L["24"]["TextYAlignment"] = Enum.TextYAlignment.Top;
    G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["24"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L["24"]["TextSize"] = 13;
    G2L["24"]["TextColor3"] = Color3.fromRGB(243, 120, 123);
    G2L["24"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["24"]["Text"] = [[]];
    G2L["24"]["Name"] = [[Keywords_]];
    G2L["24"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.EditorFrame.Source.Numbers_
    G2L["25"] = Instance.new("TextLabel", G2L["20"]);
    G2L["25"]["ZIndex"] = 4;
    G2L["25"]["TextYAlignment"] = Enum.TextYAlignment.Top;
    G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["25"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L["25"]["TextSize"] = 13;
    G2L["25"]["TextColor3"] = Color3.fromRGB(255, 205, 103);
    G2L["25"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["25"]["Text"] = [[]];
    G2L["25"]["Name"] = [[Numbers_]];
    G2L["25"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.EditorFrame.Source.RemoteHighlight_
    G2L["26"] = Instance.new("TextLabel", G2L["20"]);
    G2L["26"]["ZIndex"] = 5;
    G2L["26"]["TextYAlignment"] = Enum.TextYAlignment.Top;
    G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["26"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L["26"]["TextSize"] = 13;
    G2L["26"]["TextColor3"] = Color3.fromRGB(103, 154, 205);
    G2L["26"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["26"]["Text"] = [[]];
    G2L["26"]["Name"] = [[RemoteHighlight_]];
    G2L["26"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.EditorFrame.Source.Strings_
    G2L["27"] = Instance.new("TextLabel", G2L["20"]);
    G2L["27"]["ZIndex"] = 5;
    G2L["27"]["TextYAlignment"] = Enum.TextYAlignment.Top;
    G2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["27"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["27"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L["27"]["TextSize"] = 13;
    G2L["27"]["TextColor3"] = Color3.fromRGB(154, 205, 154);
    G2L["27"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["27"]["Text"] = [[]];
    G2L["27"]["Name"] = [[Strings_]];
    G2L["27"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.EditorFrame.Source.Tokens_
    G2L["28"] = Instance.new("TextLabel", G2L["20"]);
    G2L["28"]["ZIndex"] = 5;
    G2L["28"]["TextYAlignment"] = Enum.TextYAlignment.Top;
    G2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["28"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L["28"]["TextSize"] = 13;
    G2L["28"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["28"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["28"]["Text"] = [[]];
    G2L["28"]["Name"] = [[Tokens_]];
    G2L["28"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.LocalScript
    G2L["29"] = Instance.new("LocalScript", G2L["19"]);


    -- StarterGui.Pastefy.Frame.Sidebar.Content.UICorner
    G2L["2a"] = Instance.new("UICorner", G2L["18"]);
    G2L["2a"]["CornerRadius"] = UDim.new(0, 12);

    -- StarterGui.Pastefy.Frame.Sidebar.TItle
    G2L["2b"] = Instance.new("Frame", G2L["14"]);
    G2L["2b"]["BorderSizePixel"] = 0;
    G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(39, 44, 58);
    G2L["2b"]["Size"] = UDim2.new(0.8260869383811951, 0, 0.19014084339141846, -20);
    G2L["2b"]["ClipsDescendants"] = true;
    G2L["2b"]["Position"] = UDim2.new(0, 18, 0, 85);
    G2L["2b"]["Name"] = [[TItle]];

    -- StarterGui.Pastefy.Frame.Sidebar.TItle.UICorner
    G2L["2c"] = Instance.new("UICorner", G2L["2b"]);
    G2L["2c"]["CornerRadius"] = UDim.new(0, 12);

    -- StarterGui.Pastefy.Frame.Sidebar.TItle.TitleBox
    G2L["2d"] = Instance.new("TextBox", G2L["2b"]);
    G2L["2d"]["CursorPosition"] = -1;
    G2L["2d"]["Active"] = true;
    G2L["2d"]["ZIndex"] = 999999999;
    G2L["2d"]["BorderSizePixel"] = 0;
    G2L["2d"]["TextSize"] = 13;
    G2L["2d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
    G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["2d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    G2L["2d"]["BackgroundTransparency"] = 1;
    G2L["2d"]["PlaceholderText"] = [[Title]];
    G2L["2d"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["2d"]["Text"] = [[]];
    G2L["2d"]["Name"] = [[TitleBox]];
    G2L["2d"]["ClearTextOnFocus"] = false;

    -- StarterGui.Pastefy.Frame.Sidebar.TItle.TitleBox.padding
    G2L["2e"] = Instance.new("UIPadding", G2L["2d"]);
    G2L["2e"]["Name"] = [[padding]];
    G2L["2e"]["PaddingLeft"] = UDim.new(0, 10);

    -- StarterGui.Pastefy.Frame.Sidebar.Submit
    G2L["2f"] = Instance.new("Frame", G2L["14"]);
    G2L["2f"]["BorderSizePixel"] = 0;
    G2L["2f"]["BackgroundColor3"] = Color3.fromRGB(53, 106, 255);
    G2L["2f"]["Size"] = UDim2.new(0.8260869383811951, 0, 0.1619718372821808, -20);
    G2L["2f"]["ClipsDescendants"] = true;
    G2L["2f"]["Position"] = UDim2.new(0, 18, 0, 250);
    G2L["2f"]["Name"] = [[Submit]];

    -- StarterGui.Pastefy.Frame.Sidebar.Submit.UICorner
    G2L["30"] = Instance.new("UICorner", G2L["2f"]);
    G2L["30"]["CornerRadius"] = UDim.new(0, 12);

    -- StarterGui.Pastefy.Frame.Sidebar.Submit.TitleLabel
    G2L["31"] = Instance.new("TextLabel", G2L["2f"]);
    G2L["31"]["BorderSizePixel"] = 0;
    G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["31"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
    G2L["31"]["TextSize"] = 16;
    G2L["31"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["31"]["AutomaticSize"] = Enum.AutomaticSize.Y;
    G2L["31"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["31"]["ClipsDescendants"] = true;
    G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["31"]["Text"] = [[Create Paste]];
    G2L["31"]["Name"] = [[TitleLabel]];
    G2L["31"]["BackgroundTransparency"] = 1;

    G2L["create"] = Instance.new("ImageButton", G2L["31"]);
    G2L["create"]["ZIndex"] = 3;
    G2L["create"]["BorderSizePixel"] = 0;
    G2L["create"]["AutoButtonColor"] = false;
    G2L["create"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["create"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.pn]];
    G2L["create"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["create"]["Name"] = [[SelectButton]];
    G2L["create"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["create"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.PastesHolder
    G2L["32"] = Instance.new("ScrollingFrame", G2L["2"]);
    G2L["32"]["Active"] = true;
    G2L["32"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
    G2L["32"]["BorderSizePixel"] = 0;
    G2L["32"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
    G2L["32"]["TopImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];
    G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["32"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
    G2L["32"]["BackgroundTransparency"] = 1;
    G2L["32"]["Size"] = UDim2.new(0, 283, 0, 201);
    G2L["32"]["ScrollBarImageColor3"] = Color3.fromRGB(53, 59, 78);
    G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["32"]["Position"] = UDim2.new(0.422448992729187, 0, 0.1690140813589096, 0);
    G2L["32"]["Name"] = [[PastesHolder]];
    G2L["32"]["BottomImage"] = [[rbxasset://textures/ui/Scroll/scroll-middle.png]];

    -- StarterGui.Pastefy.Frame.PastesHolder.UIListLayout
    G2L["33"] = Instance.new("UIListLayout", G2L["32"]);
    G2L["33"]["Padding"] = UDim.new(0, 10);
    G2L["33"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    -- StarterGui.Pastefy.Frame.PastesHolder.UIPadding
    G2L["46"] = Instance.new("UIPadding", G2L["32"]);
    G2L["46"]["PaddingTop"] = UDim.new(0, 7);
    G2L["46"]["PaddingRight"] = UDim.new(0, 7);
    G2L["46"]["PaddingBottom"] = UDim.new(0, 7);
    G2L["46"]["PaddingLeft"] = UDim.new(0, 7);

    -- StarterGui.Pastefy.Frame.PageControls
    G2L["47"] = Instance.new("Frame", G2L["2"]);
    G2L["47"]["BorderSizePixel"] = 0;
    G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["47"]["BackgroundTransparency"] = 1;
    G2L["47"]["Size"] = UDim2.new(0, 276, 0, 34);
    G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["47"]["Position"] = UDim2.new(0.43673470616340637, 0, 0.8802816867828369, 0);
    G2L["47"]["Name"] = [[PageControls]];

    -- StarterGui.Pastefy.Frame.PageControls.UIListLayout
    G2L["48"] = Instance.new("UIListLayout", G2L["47"]);
    G2L["48"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
    G2L["48"]["FillDirection"] = Enum.FillDirection.Horizontal;
    G2L["48"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
    G2L["48"]["Padding"] = UDim.new(0, 8);
    G2L["48"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

    -- StarterGui.Pastefy.Frame.PageControls.UIPadding
    G2L["49"] = Instance.new("UIPadding", G2L["47"]);
    G2L["49"]["PaddingBottom"] = UDim.new(0, 5);

    -- StarterGui.Pastefy.Frame.PageControls.LastPage
    G2L["4a"] = Instance.new("Frame", G2L["47"]);
    G2L["4a"]["ZIndex"] = 3;
    G2L["4a"]["BorderSizePixel"] = 0;
    G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(53, 106, 255);
    G2L["4a"]["Size"] = UDim2.new(0.2137681096792221, 0, 0.7647058963775635, 0);
    G2L["4a"]["ClipsDescendants"] = true;
    G2L["4a"]["Position"] = UDim2.new(0, 408, 0, 250);
    G2L["4a"]["AutomaticSize"] = Enum.AutomaticSize.X;
    G2L["4a"]["Name"] = [[LastPage]];

    -- StarterGui.Pastefy.Frame.PageControls.LastPage.UICorner
    G2L["4b"] = Instance.new("UICorner", G2L["4a"]);
    G2L["4b"]["CornerRadius"] = UDim.new(1, 0);

    -- StarterGui.Pastefy.Frame.PageControls.LastPage.LastLabel
    G2L["4c"] = Instance.new("TextLabel", G2L["4a"]);
    G2L["4c"]["ZIndex"] = 3;
    G2L["4c"]["BorderSizePixel"] = 0;
    G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["4c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
    G2L["4c"]["TextSize"] = 16;
    G2L["4c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["4c"]["AutomaticSize"] = Enum.AutomaticSize.X;
    G2L["4c"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["4c"]["ClipsDescendants"] = true;
    G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["4c"]["Text"] = [[PREVIOUS ]];
    G2L["4c"]["Name"] = [[LastLabel]];
    G2L["4c"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.PageControls.LastPage.LastLabel.UIPadding
    G2L["4d"] = Instance.new("UIPadding", G2L["4c"]);
    G2L["4d"]["PaddingTop"] = UDim.new(0, 3);
    G2L["4d"]["PaddingBottom"] = UDim.new(0, 3);
    G2L["4d"]["PaddingLeft"] = UDim.new(0, 7);

    -- StarterGui.Pastefy.Frame.PageControls.LastPage.SelectButton
    G2L["4e"] = Instance.new("ImageButton", G2L["4a"]);
    G2L["4e"]["ZIndex"] = 3;
    G2L["4e"]["BorderSizePixel"] = 0;
    G2L["4e"]["AutoButtonColor"] = false;
    G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["4e"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.pn]];
    G2L["4e"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["4e"]["Name"] = [[SelectButton]];
    G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["4e"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.PageControls.CurrentPage
    G2L["4f"] = Instance.new("Frame", G2L["47"]);
    G2L["4f"]["ZIndex"] = 3;
    G2L["4f"]["BorderSizePixel"] = 0;
    G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(53, 106, 255);
    G2L["4f"]["Size"] = UDim2.new(0, 0, 0.7647058963775635, 0);
    G2L["4f"]["ClipsDescendants"] = true;
    G2L["4f"]["Position"] = UDim2.new(0, 408, 0, 250);
    G2L["4f"]["AutomaticSize"] = Enum.AutomaticSize.X;
    G2L["4f"]["Name"] = [[CurrentPage]];

    -- StarterGui.Pastefy.Frame.PageControls.CurrentPage.UICorner
    G2L["50"] = Instance.new("UICorner", G2L["4f"]);
    G2L["50"]["CornerRadius"] = UDim.new(1, 0);

    -- StarterGui.Pastefy.Frame.PageControls.CurrentPage.CurrentLabel
    G2L["51"] = Instance.new("TextLabel", G2L["4f"]);
    G2L["51"]["ZIndex"] = 3;
    G2L["51"]["BorderSizePixel"] = 0;
    G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["51"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
    G2L["51"]["TextSize"] = 16;
    G2L["51"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["51"]["AutomaticSize"] = Enum.AutomaticSize.X;
    G2L["51"]["Size"] = UDim2.new(0, 0, 1, 0);
    G2L["51"]["ClipsDescendants"] = true;
    G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["51"]["Text"] = [[1]];
    G2L["51"]["Name"] = [[CurrentLabel]];
    G2L["51"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.PageControls.CurrentPage.CurrentLabel.UIPadding
    G2L["52"] = Instance.new("UIPadding", G2L["51"]);
    G2L["52"]["PaddingTop"] = UDim.new(0, 3);
    G2L["52"]["PaddingRight"] = UDim.new(0, 9);
    G2L["52"]["PaddingBottom"] = UDim.new(0, 3);
    G2L["52"]["PaddingLeft"] = UDim.new(0, 10);

    -- StarterGui.Pastefy.Frame.PageControls.CurrentPage.SelectButton
    G2L["53"] = Instance.new("ImageButton", G2L["4f"]);
    G2L["53"]["ZIndex"] = 3;
    G2L["53"]["BorderSizePixel"] = 0;
    G2L["53"]["AutoButtonColor"] = false;
    G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["53"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.pn]];
    G2L["53"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["53"]["Name"] = [[SelectButton]];
    G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["53"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.PageControls.NextPage
    G2L["54"] = Instance.new("Frame", G2L["47"]);
    G2L["54"]["ZIndex"] = 3;
    G2L["54"]["BorderSizePixel"] = 0;
    G2L["54"]["BackgroundColor3"] = Color3.fromRGB(53, 106, 255);
    G2L["54"]["Size"] = UDim2.new(0, 0, 0.7647058963775635, 0);
    G2L["54"]["ClipsDescendants"] = true;
    G2L["54"]["Position"] = UDim2.new(0, 408, 0, 250);
    G2L["54"]["AutomaticSize"] = Enum.AutomaticSize.X;
    G2L["54"]["Name"] = [[NextPage]];

    -- StarterGui.Pastefy.Frame.PageControls.NextPage.UICorner
    G2L["55"] = Instance.new("UICorner", G2L["54"]);
    G2L["55"]["CornerRadius"] = UDim.new(1, 0);

    -- StarterGui.Pastefy.Frame.PageControls.NextPage.NextLabel
    G2L["56"] = Instance.new("TextLabel", G2L["54"]);
    G2L["56"]["ZIndex"] = 3;
    G2L["56"]["BorderSizePixel"] = 0;
    G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
    G2L["56"]["TextSize"] = 16;
    G2L["56"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["56"]["AutomaticSize"] = Enum.AutomaticSize.X;
    G2L["56"]["Size"] = UDim2.new(0, 0, 1, 0);
    G2L["56"]["ClipsDescendants"] = true;
    G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["56"]["Text"] = [[NEXT]];
    G2L["56"]["Name"] = [[NextLabel]];
    G2L["56"]["BackgroundTransparency"] = 1;

    -- StarterGui.Pastefy.Frame.PageControls.NextPage.NextLabel.UIPadding
    G2L["57"] = Instance.new("UIPadding", G2L["56"]);
    G2L["57"]["PaddingTop"] = UDim.new(0, 3);
    G2L["57"]["PaddingRight"] = UDim.new(0, 16);
    G2L["57"]["PaddingBottom"] = UDim.new(0, 3);
    G2L["57"]["PaddingLeft"] = UDim.new(0, 16);

    -- StarterGui.Pastefy.Frame.PageControls.NextPage.SelectButton
    G2L["58"] = Instance.new("ImageButton", G2L["54"]);
    G2L["58"]["ZIndex"] = 3;
    G2L["58"]["BorderSizePixel"] = 0;
    G2L["58"]["AutoButtonColor"] = false;
    G2L["58"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
    G2L["58"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.pn]];
    G2L["58"]["Size"] = UDim2.new(1, 0, 1, 0);
    G2L["58"]["Name"] = [[SelectButton]];
    G2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
    G2L["58"]["BackgroundTransparency"] = 1;

    -- FUNCTION:

    local pastey = loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Projects/Pastefy/Assets/Pastefy%20API.lua"))()

    local settings = {
        scripts = {
            page = "1",
            page_size = "2"
        },
        ui = {
            banner = "https://pastefy.app/img/logo.46fa1e78.png"
        }
    }

    if not isfolder("pastefy") then
        makefolder("pastefly")
    end
    local success, imageData = pcall(function()
        return game:HttpGet(tostring(settings.ui.banner))
    end)

    if success then
        writefile("pastefly/Banner.png", imageData)
        G2L["7"]["Image"] = getcustomasset("pastefly/Banner.png")
    end

    local function add_script(info)
        local trending = info
        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate
        G2L["34"] = Instance.new("Frame", G2L["32"]);
        G2L["34"]["BorderSizePixel"] = 0;
        G2L["34"]["BackgroundColor3"] = Color3.fromRGB(34, 38, 50);
        G2L["34"]["Size"] = UDim2.new(0, 254, 0, 106);
        G2L["34"]["ClipsDescendants"] = true;
        G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        G2L["34"]["Name"] = trending.title;

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.UICorner
        G2L["35"] = Instance.new("UICorner", G2L["34"]);
        G2L["35"]["CornerRadius"] = UDim.new(0, 12);

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.TitleLabel
        G2L["36"] = Instance.new("TextLabel", G2L["34"]);
        G2L["36"]["BorderSizePixel"] = 0;
        G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        G2L["36"]["TextXAlignment"] = Enum.TextXAlignment.Left;
        G2L["36"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
        G2L["36"]["TextSize"] = 16;
        G2L["36"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
        G2L["36"]["AutomaticSize"] = Enum.AutomaticSize.Y;
        G2L["36"]["Size"] = UDim2.new(1, 0, 0.4207547605037689, 0);
        G2L["36"]["ClipsDescendants"] = true;
        G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        if trending.title == "" or trending.title == " " then
            G2L["36"]["Text"] = "NO PASTE NAME*";
        else
            G2L["36"]["Text"] = trending.title;
        end
        G2L["36"]["Name"] = [[TitleLabel]];
        G2L["36"]["BackgroundTransparency"] = 1;

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.TitleLabel.UIPadding
        G2L["37"] = Instance.new("UIPadding", G2L["36"]);
        G2L["37"]["PaddingRight"] = UDim.new(0, 5);
        G2L["37"]["PaddingLeft"] = UDim.new(0, 13);

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.TitleLabel.UITextSizeConstraint
        G2L["38"] = Instance.new("UITextSizeConstraint", G2L["36"]);
        G2L["38"]["MaxTextSize"] = 16;

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.EditorFrame
        G2L["39"] = Instance.new("ImageButton", G2L["34"]);
        G2L["39"]["ZIndex"] = 10;
        G2L["39"]["BorderSizePixel"] = 0;
        G2L["39"]["SliceCenter"] = Rect.new(512, 512, 512, 512);
        G2L["39"]["ScaleType"] = Enum.ScaleType.Crop;
        G2L["39"]["AutoButtonColor"] = false;
        G2L["39"]["SliceScale"] = 4;
        G2L["39"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 39);
        G2L["39"]["ImageColor3"] = Color3.fromRGB(26, 26, 39);
        G2L["39"]["Selectable"] = false;
        G2L["39"]["AnchorPoint"] = Vector2.new(0.5, 0);
        G2L["39"]["Size"] = UDim2.new(1, 0, -0.08863312005996704, 70);
        G2L["39"]["Name"] = [[EditorFrame]];
        G2L["39"]["ClipsDescendants"] = true;
        G2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        G2L["39"]["Position"] = UDim2.new(0.5, 0, 0.4207547605037689, 0);
        G2L["39"]["BackgroundTransparency"] = 1;

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.EditorFrame.Source
        G2L["3a"] = Instance.new("TextLabel", G2L["39"]);
        G2L["3a"]["ZIndex"] = 10;
        G2L["3a"]["BorderSizePixel"] = 0;
        G2L["3a"]["TextYAlignment"] = Enum.TextYAlignment.Top;
        G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
        G2L["3a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
        G2L["3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
        G2L["3a"]["TextTransparency"] = 0.20000000298023224;
        G2L["3a"]["TextSize"] = 13;
        G2L["3a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
        G2L["3a"]["AutomaticSize"] = Enum.AutomaticSize.XY;
        G2L["3a"]["ClipsDescendants"] = true;
        G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        G2L["3a"]["Text"] = trending.content;
        G2L["3a"]["Name"] = [[Source]];
        G2L["3a"]["BackgroundTransparency"] = 1;

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.EditorFrame.Source.padding
        G2L["3b"] = Instance.new("UIPadding", G2L["3a"]);
        G2L["3b"]["Name"] = [[padding]];
        G2L["3b"]["PaddingLeft"] = UDim.new(0, 10);

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.EditorFrame.Source.Globals_
        G2L["3c"] = Instance.new("TextLabel", G2L["3a"]);
        G2L["3c"]["ZIndex"] = 5;
        G2L["3c"]["TextYAlignment"] = Enum.TextYAlignment.Top;
        G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        G2L["3c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
        G2L["3c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
        G2L["3c"]["TextSize"] = 13;
        G2L["3c"]["TextColor3"] = Color3.fromRGB(103, 205, 205);
        G2L["3c"]["Size"] = UDim2.new(1, 0, 1, 0);
        G2L["3c"]["Text"] = [[]];
        G2L["3c"]["Name"] = [[Globals_]];
        G2L["3c"]["BackgroundTransparency"] = 1;

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.EditorFrame.Source.Keywords_
        G2L["3d"] = Instance.new("TextLabel", G2L["3a"]);
        G2L["3d"]["ZIndex"] = 5;
        G2L["3d"]["TextYAlignment"] = Enum.TextYAlignment.Top;
        G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        G2L["3d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
        G2L["3d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
        G2L["3d"]["TextSize"] = 13;
        G2L["3d"]["TextColor3"] = Color3.fromRGB(243, 120, 123);
        G2L["3d"]["Size"] = UDim2.new(1, 0, 1, 0);
        G2L["3d"]["Text"] = [[]];
        G2L["3d"]["Name"] = [[Keywords_]];
        G2L["3d"]["BackgroundTransparency"] = 1;

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.EditorFrame.Source.Numbers_
        G2L["3e"] = Instance.new("TextLabel", G2L["3a"]);
        G2L["3e"]["ZIndex"] = 4;
        G2L["3e"]["TextYAlignment"] = Enum.TextYAlignment.Top;
        G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        G2L["3e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
        G2L["3e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
        G2L["3e"]["TextSize"] = 13;
        G2L["3e"]["TextColor3"] = Color3.fromRGB(255, 205, 103);
        G2L["3e"]["Size"] = UDim2.new(1, 0, 1, 0);
        G2L["3e"]["Text"] = [[]];
        G2L["3e"]["Name"] = [[Numbers_]];
        G2L["3e"]["BackgroundTransparency"] = 1;

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.EditorFrame.Source.RemoteHighlight_
        G2L["3f"] = Instance.new("TextLabel", G2L["3a"]);
        G2L["3f"]["ZIndex"] = 5;
        G2L["3f"]["TextYAlignment"] = Enum.TextYAlignment.Top;
        G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        G2L["3f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
        G2L["3f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
        G2L["3f"]["TextSize"] = 13;
        G2L["3f"]["TextColor3"] = Color3.fromRGB(103, 154, 205);
        G2L["3f"]["Size"] = UDim2.new(1, 0, 1, 0);
        G2L["3f"]["Text"] = [[]];
        G2L["3f"]["Name"] = [[RemoteHighlight_]];
        G2L["3f"]["BackgroundTransparency"] = 1;

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.EditorFrame.Source.Strings_
        G2L["40"] = Instance.new("TextLabel", G2L["3a"]);
        G2L["40"]["ZIndex"] = 5;
        G2L["40"]["TextYAlignment"] = Enum.TextYAlignment.Top;
        G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        G2L["40"]["TextXAlignment"] = Enum.TextXAlignment.Left;
        G2L["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
        G2L["40"]["TextSize"] = 13;
        G2L["40"]["TextColor3"] = Color3.fromRGB(154, 205, 154);
        G2L["40"]["Size"] = UDim2.new(1, 0, 1, 0);
        G2L["40"]["Text"] = [[]];
        G2L["40"]["Name"] = [[Strings_]];
        G2L["40"]["BackgroundTransparency"] = 1;

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.EditorFrame.Source.Tokens_
        G2L["41"] = Instance.new("TextLabel", G2L["3a"]);
        G2L["41"]["ZIndex"] = 5;
        G2L["41"]["TextYAlignment"] = Enum.TextYAlignment.Top;
        G2L["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        G2L["41"]["TextXAlignment"] = Enum.TextXAlignment.Left;
        G2L["41"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
        G2L["41"]["TextSize"] = 13;
        G2L["41"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
        G2L["41"]["Size"] = UDim2.new(1, 0, 1, 0);
        G2L["41"]["Text"] = [[]];
        G2L["41"]["Name"] = [[Tokens_]];
        G2L["41"]["BackgroundTransparency"] = 1;

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.EditorFrame.Source.Comments_
        G2L["42"] = Instance.new("TextLabel", G2L["3a"]);
        G2L["42"]["ZIndex"] = 5;
        G2L["42"]["TextYAlignment"] = Enum.TextYAlignment.Top;
        G2L["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        G2L["42"]["TextXAlignment"] = Enum.TextXAlignment.Left;
        G2L["42"]["FontFace"] = Font.new([[rbxasset://fonts/families/Inconsolata.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
        G2L["42"]["TextSize"] = 13;
        G2L["42"]["TextColor3"] = Color3.fromRGB(154, 154, 154);
        G2L["42"]["Size"] = UDim2.new(1, 0, 1, 0);
        G2L["42"]["Text"] = [[]];
        G2L["42"]["Name"] = [[Comments_]];
        G2L["42"]["BackgroundTransparency"] = 1;

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.EditorFrame.UIPadding
        G2L["43"] = Instance.new("UIPadding", G2L["39"]);
        G2L["43"]["PaddingLeft"] = UDim.new(0, 4);

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.Syntax
        G2L["44"] = Instance.new("LocalScript", G2L["34"]);
        G2L["44"]["Name"] = [[Syntax]];

        -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.SelectButton
        G2L["45"] = Instance.new("ImageButton", G2L["34"]);
        G2L["45"]["BorderSizePixel"] = 0;
        G2L["45"]["AutoButtonColor"] = false;
        G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
        G2L["45"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.pn]];
        G2L["45"]["Size"] = UDim2.new(1, 0, 1, 0);
        G2L["45"]["Name"] = [[SelectButton]];
        G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
        G2L["45"]["BackgroundTransparency"] = 1;

        local function C_44()
            local script = G2L["44"];
                local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while", "is_synapse_function","is_protosmasher_caller", "execute","foreach","foreachi","insert","syn","HttpGet","HttpPost","__index","__namecall","__add","__call","__tostring","__tonumber","__div"}
                local global_env = {"getrawmetatable", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16","run_secure_function","create_secure_function","hookfunc","hookfunction","newcclosure","replaceclosure","islclosure","getgc","gcinfo","rconsolewarn","rconsoleprint","rconsoleinfo","rconsoleinput","rconsoleinputasync","rconsoleclear","rconsoleerr",}
                
                local src = script.Parent.EditorFrame.Source
                
                local Highlight = function(string, keywords)
                    local K = {}
                    local S = string
                    local Token =
                        {
                        ["="] = true,
                        ["."] = true,
                        [","] = true,
                        ["("] = true,
                        [")"] = true,
                        ["["] = true,
                        ["]"] = true,
                        ["{"] = true,
                        ["}"] = true,
                        [":"] = true,
                        ["*"] = true,
                        ["/"] = true,
                        ["+"] = true,
                        ["-"] = true,
                        ["%"] = true,
                        [";"] = true,
                        ["~"] = true
                    }
                    for i, v in pairs(keywords) do
                        K[v] = true
                    end
                    S = S:gsub(".", function(c)
                        if Token[c] ~= nil then
                            return "\32"
                        else
                            return c
                        end
                    end)
                    S = S:gsub("%S+", function(c)
                        if K[c] ~= nil then
                            return c
                        else
                            return (" "):rep(#c)
                        end
                    end)
                
                    return S
                end
                
                local hTokens = function(string)
                    local Token =
                        {
                        ["="] = true,
                        ["."] = true,
                        [","] = true,
                        ["("] = true,
                        [")"] = true,
                        ["["] = true,
                        ["]"] = true,
                        ["{"] = true,
                        ["}"] = true,
                        [":"] = true,
                        ["*"] = true,
                        ["/"] = true,
                        ["+"] = true,
                        ["-"] = true,
                        ["%"] = true,
                        [";"] = true,
                        ["~"] = true
                    }
                    local A = ""
                    local B = [[]]
                    string:gsub(".", function(c)
                        if Token[c] ~= nil then
                            A = A .. c
                        elseif c == "\n" then
                            A = A .. "\n"
                        elseif c == "\t" then
                            A = A .. "\t"
                        else
                            A = A .. "\32"
                        end
                    end)
                    return A
                end
                
                
                local strings = function(string)
                    local highlight = ""
                    local quote = false
                    string:gsub(".", function(c)
                        if quote == false and c == "\"" then
                            quote = true
                        elseif quote == true and c == "\"" then
                            quote = false
                        end
                        if quote == false and c == "\"" then
                            highlight = highlight .. "\""
                        elseif c == "\n" then
                            highlight = highlight .. "\n"
                        elseif c == "\t" then
                            highlight = highlight .. "\t"
                        elseif quote == true then
                            highlight = highlight .. c
                        elseif quote == false then
                            highlight = highlight .. "\32"
                        end
                    end)
                
                    return highlight
                end
                
                local comments = function(string)
                    local ret = ""
                    string:gsub("[^\r\n]+", function(c)
                        local comm = false
                        local i = 0
                        c:gsub(".", function(n)
                            i = i + 1
                            if c:sub(i, i + 1) == "--" then
                                comm = true
                            end
                            if comm == true then
                                ret = ret .. n
                            else
                                ret = ret .. "\32"
                            end
                        end)
                        ret = ret
                    end)
                
                    return ret
                end
                
                local numbers = function(string)
                    local A = ""
                    string:gsub(".", function(c)
                        if tonumber(c) ~= nil then
                            A = A .. c
                        elseif c == "\n" then
                            A = A .. "\n"
                        elseif c == "\t" then
                            A = A .. "\t"
                        else
                            A = A .. "\32"
                        end
                    end)
                
                    return A
                end
                
                local highlight_source = function(type)
                    if type == "Text" then
                        src.Text = script.Parent.EditorFrame.Source.Text:gsub("\13", "")
                        src.Text = script.Parent.EditorFrame.Source.Text:gsub("\t", "      ")
                        local s = src.Text
                        src.Keywords_.Text = Highlight(s, lua_keywords)
                        src.Globals_.Text = Highlight(s, global_env)
                        src.RemoteHighlight_.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
                        src.Tokens_.Text = hTokens(s)
                        src.Numbers_.Text = numbers(s)
                        src.Strings_.Text = strings(s)
                        local lin = 1
                        s:gsub("\n", function()
                            lin = lin + 1
                        end)
                    end
                end
                
                highlight_source("Text")
                
                src.Changed:Connect(highlight_source)
            end;
            task.spawn(C_44);

        local output_link = "https://pastefy.app/"..tostring(trending.id).."/raw"
        G2L["45"].MouseButton1Click:Connect(function()
            setclipboard(output_link)
        end)
    end

    local function change_page(page)

        local trending = pastey:Trending(page, "4")

        -- clear children:
        for i,v in pairs(G2L["32"]:GetChildren()) do
            if v:IsA("Frame") then
                v:Destroy()
            end
        end

        for key,value in pairs(trending) do
            if trending[key].type == "PASTE" and trending[key].content then
                add_script(trending[key])
            end 
        end

    end

    G2L["create"].MouseButton1Click:Connect(function()
        local new_paste = pastey:Paste(tostring(G2L["2d"].Text), tostring(G2L["20"].Text))
        local link = tostring(new_paste)
        setclipboard(link)
    end)

    local page = 1
    G2L["58"].MouseButton1Click:Connect(function()
        page=page+1
        page=tostring(page)
        change_page(tostring(page), tostring(page))
        G2L["51"]["Text"] = page;
    end)
    G2L["4e"].MouseButton1Click:Connect(function()
        if page == 1 then else
            page=page-1
        end
        page=tostring(page)
        change_page(tostring(page), tostring(page))
        G2L["51"]["Text"] = page;
    end)
    change_page(tostring(page), "4")

    -- StarterGui.Pastefy.Frame.Topbar.Close.Function
    local function C_f()
    local script = G2L["f"];
        local function light()
            local color = Color3.fromRGB(59, 67, 88)
            script.Parent.BackgroundColor3 = color
            script.Parent["cover-left"].BackgroundColor3 = color
            script.Parent["cover-bottom"].BackgroundColor3 = color
        end
        local function dark()
            local color = Color3.fromRGB(38, 42, 56)
            script.Parent.BackgroundColor3 = color
            script.Parent["cover-left"].BackgroundColor3 = color
            script.Parent["cover-bottom"].BackgroundColor3 = color
        end
        script.Parent.MouseEnter:Connect(light)
        script.Parent.MouseLeave:Connect(dark)
        script.Parent.CloseButton.MouseButton1Down:Connect(light)
        script.Parent.CloseButton.MouseButton1Up:Connect(dark)
        script.Parent.CloseButton.MouseButton1Click:Connect(function()
            light()
            script:FindFirstAncestor("Pastefy"):Destroy()
        end)
    end;
    task.spawn(C_f);
    -- StarterGui.Pastefy.Frame.Dragify
    local function C_13()
    local script = G2L["13"];
        local UserInputService = game:GetService("UserInputService")
        
        local gui = script.Parent
        local ui = gui.Topbar
        
        local dragging
        local dragInput
        local dragStart
        local startPos
        
        local function update(input)
            local delta = input.Position - dragStart
            gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
        
        ui.InputBegan:Connect(function(input)
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
        
        ui.InputChanged:Connect(function(input)
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
    task.spawn(C_13);
    -- StarterGui.Pastefy.Frame.Sidebar.Content.Holder.LocalScript
    local function C_29()
    local script = G2L["29"];
        local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while", "is_synapse_function","is_protosmasher_caller", "execute","foreach","foreachi","insert","syn","HttpGet","HttpPost","__index","__namecall","__add","__call","__tostring","__tonumber","__div"}
        local global_env = {"getrawmetatable", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16","run_secure_function","create_secure_function","hookfunc","hookfunction","newcclosure","replaceclosure","islclosure","getgc","gcinfo","rconsolewarn","rconsoleprint","rconsoleinfo","rconsoleinput","rconsoleinputasync","rconsoleclear","rconsoleerr",}
        
        local src = script.Parent.EditorFrame.Source
        local lin = script.Parent.Lines
        
        local Highlight = function(string, keywords)
            local K = {}
            local S = string
            local Token =
                {
                ["="] = true,
                ["."] = true,
                [","] = true,
                ["("] = true,
                [")"] = true,
                ["["] = true,
                ["]"] = true,
                ["{"] = true,
                ["}"] = true,
                [":"] = true,
                ["*"] = true,
                ["/"] = true,
                ["+"] = true,
                ["-"] = true,
                ["%"] = true,
                [";"] = true,
                ["~"] = true
            }
            for i, v in pairs(keywords) do
                K[v] = true
            end
            S = S:gsub(".", function(c)
                if Token[c] ~= nil then
                    return "\32"
                else
                    return c
                end
            end)
            S = S:gsub("%S+", function(c)
                if K[c] ~= nil then
                    return c
                else
                    return (" "):rep(#c)
                end
            end)
        
            return S
        end
        
        local hTokens = function(string)
            local Token =
                {
                ["="] = true,
                ["."] = true,
                [","] = true,
                ["("] = true,
                [")"] = true,
                ["["] = true,
                ["]"] = true,
                ["{"] = true,
                ["}"] = true,
                [":"] = true,
                ["*"] = true,
                ["/"] = true,
                ["+"] = true,
                ["-"] = true,
                ["%"] = true,
                [";"] = true,
                ["~"] = true
            }
            local A = ""
            local B = [[]]
            string:gsub(".", function(c)
                if Token[c] ~= nil then
                    A = A .. c
                elseif c == "\n" then
                    A = A .. "\n"
                elseif c == "\t" then
                    A = A .. "\t"
                else
                    A = A .. "\32"
                end
            end)
            return A
        end
        
        
        local strings = function(string)
            local highlight = ""
            local quote = false
            string:gsub(".", function(c)
                if quote == false and c == "\"" then
                    quote = true
                elseif quote == true and c == "\"" then
                    quote = false
                end
                if quote == false and c == "\"" then
                    highlight = highlight .. "\""
                elseif c == "\n" then
                    highlight = highlight .. "\n"
                elseif c == "\t" then
                    highlight = highlight .. "\t"
                elseif quote == true then
                    highlight = highlight .. c
                elseif quote == false then
                    highlight = highlight .. "\32"
                end
            end)
        
            return highlight
        end
        
        local comments = function(string)
            local ret = ""
            string:gsub("[^\r\n]+", function(c)
                local comm = false
                local i = 0
                c:gsub(".", function(n)
                    i = i + 1
                    if c:sub(i, i + 1) == "--" then
                        comm = true
                    end
                    if comm == true then
                        ret = ret .. n
                    else
                        ret = ret .. "\32"
                    end
                end)
                ret = ret
            end)
        
            return ret
        end
        
        local numbers = function(string)
            local A = ""
            string:gsub(".", function(c)
                if tonumber(c) ~= nil then
                    A = A .. c
                elseif c == "\n" then
                    A = A .. "\n"
                elseif c == "\t" then
                    A = A .. "\t"
                else
                    A = A .. "\32"
                end
            end)
        
            return A
        end
        
        local highlight_source = function(type)
            if type == "Text" then
                src.Text = script.Parent.EditorFrame.Source.Text:gsub("\13", "")
                src.Text = script.Parent.EditorFrame.Source.Text:gsub("\t", "      ")
                local s = src.Text
                src.Keywords_.Text = Highlight(s, lua_keywords)
                src.Globals_.Text = Highlight(s, global_env)
                src.RemoteHighlight_.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
                src.Tokens_.Text = hTokens(s)
                src.Numbers_.Text = numbers(s)
                src.Strings_.Text = strings(s)
                local lin = 1
                s:gsub("\n", function()
                    lin = lin + 1
                end)
                script.Parent.Lines.Text = ""
                for i = 1, lin do
                    script.Parent.Lines.Text = script.Parent.Lines.Text .. i .. "\n"
                end
            end
        end
        
        highlight_source("Text")
        
        src.Changed:Connect(highlight_source)
    end;
    task.spawn(C_29);
    -- StarterGui.Pastefy.Frame.PastesHolder.ScriptTemplate.Syntax
    local function C_44()
    local script = G2L["44"];
        local lua_keywords = {"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while", "is_synapse_function","is_protosmasher_caller", "execute","foreach","foreachi","insert","syn","HttpGet","HttpPost","__index","__namecall","__add","__call","__tostring","__tonumber","__div"}
        local global_env = {"getrawmetatable", "game", "workspace", "script", "math", "string", "table", "print", "wait", "BrickColor", "Color3", "next", "pairs", "ipairs", "select", "unpack", "Instance", "Vector2", "Vector3", "CFrame", "Ray", "UDim2", "Enum", "assert", "error", "warn", "tick", "loadstring", "_G", "shared", "getfenv", "setfenv", "newproxy", "setmetatable", "getmetatable", "os", "debug", "pcall", "ypcall", "xpcall", "rawequal", "rawset", "rawget", "tonumber", "tostring", "type", "typeof", "_VERSION", "coroutine", "delay", "require", "spawn", "LoadLibrary", "settings", "stats", "time", "UserSettings", "version", "Axes", "ColorSequence", "Faces", "ColorSequenceKeypoint", "NumberRange", "NumberSequence", "NumberSequenceKeypoint", "gcinfo", "elapsedTime", "collectgarbage", "PhysicalProperties", "Rect", "Region3", "Region3int16", "UDim", "Vector2int16", "Vector3int16","run_secure_function","create_secure_function","hookfunc","hookfunction","newcclosure","replaceclosure","islclosure","getgc","gcinfo","rconsolewarn","rconsoleprint","rconsoleinfo","rconsoleinput","rconsoleinputasync","rconsoleclear","rconsoleerr",}
        
        local src = script.Parent.EditorFrame.Source
        
        local Highlight = function(string, keywords)
            local K = {}
            local S = string
            local Token =
                {
                ["="] = true,
                ["."] = true,
                [","] = true,
                ["("] = true,
                [")"] = true,
                ["["] = true,
                ["]"] = true,
                ["{"] = true,
                ["}"] = true,
                [":"] = true,
                ["*"] = true,
                ["/"] = true,
                ["+"] = true,
                ["-"] = true,
                ["%"] = true,
                [";"] = true,
                ["~"] = true
            }
            for i, v in pairs(keywords) do
                K[v] = true
            end
            S = S:gsub(".", function(c)
                if Token[c] ~= nil then
                    return "\32"
                else
                    return c
                end
            end)
            S = S:gsub("%S+", function(c)
                if K[c] ~= nil then
                    return c
                else
                    return (" "):rep(#c)
                end
            end)
        
            return S
        end
        
        local hTokens = function(string)
            local Token =
                {
                ["="] = true,
                ["."] = true,
                [","] = true,
                ["("] = true,
                [")"] = true,
                ["["] = true,
                ["]"] = true,
                ["{"] = true,
                ["}"] = true,
                [":"] = true,
                ["*"] = true,
                ["/"] = true,
                ["+"] = true,
                ["-"] = true,
                ["%"] = true,
                [";"] = true,
                ["~"] = true
            }
            local A = ""
            local B = [[]]
            string:gsub(".", function(c)
                if Token[c] ~= nil then
                    A = A .. c
                elseif c == "\n" then
                    A = A .. "\n"
                elseif c == "\t" then
                    A = A .. "\t"
                else
                    A = A .. "\32"
                end
            end)
            return A
        end
        
        
        local strings = function(string)
            local highlight = ""
            local quote = false
            string:gsub(".", function(c)
                if quote == false and c == "\"" then
                    quote = true
                elseif quote == true and c == "\"" then
                    quote = false
                end
                if quote == false and c == "\"" then
                    highlight = highlight .. "\""
                elseif c == "\n" then
                    highlight = highlight .. "\n"
                elseif c == "\t" then
                    highlight = highlight .. "\t"
                elseif quote == true then
                    highlight = highlight .. c
                elseif quote == false then
                    highlight = highlight .. "\32"
                end
            end)
        
            return highlight
        end
        
        local comments = function(string)
            local ret = ""
            string:gsub("[^\r\n]+", function(c)
                local comm = false
                local i = 0
                c:gsub(".", function(n)
                    i = i + 1
                    if c:sub(i, i + 1) == "--" then
                        comm = true
                    end
                    if comm == true then
                        ret = ret .. n
                    else
                        ret = ret .. "\32"
                    end
                end)
                ret = ret
            end)
        
            return ret
        end
        
        local numbers = function(string)
            local A = ""
            string:gsub(".", function(c)
                if tonumber(c) ~= nil then
                    A = A .. c
                elseif c == "\n" then
                    A = A .. "\n"
                elseif c == "\t" then
                    A = A .. "\t"
                else
                    A = A .. "\32"
                end
            end)
        
            return A
        end
        
        local highlight_source = function(type)
            if type == "Text" then
                src.Text = script.Parent.EditorFrame.Source.Text:gsub("\13", "")
                src.Text = script.Parent.EditorFrame.Source.Text:gsub("\t", "      ")
                local s = src.Text
                src.Keywords_.Text = Highlight(s, lua_keywords)
                src.Globals_.Text = Highlight(s, global_env)
                src.RemoteHighlight_.Text = Highlight(s, {"FireServer", "fireServer", "InvokeServer", "invokeServer"})
                src.Tokens_.Text = hTokens(s)
                src.Numbers_.Text = numbers(s)
                src.Strings_.Text = strings(s)
                local lin = 1
                s:gsub("\n", function()
                    lin = lin + 1
                end)
            end
        end
        
        highlight_source("Text")
        
        src.Changed:Connect(highlight_source)
    end;
    task.spawn(C_44);

    return G2L["1"], require;
end

return ui
