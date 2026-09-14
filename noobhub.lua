-- [[ NOOB HUB - FIX TRIET DE LOI 772 + ANTI SPAM + FULL CODE ]] --

local NoobHub_Code = [=====[
if not game:IsLoaded() then game.Loaded:Wait() end

local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local lp = Players.LocalPlayer

-- ANTI-KICK AN TOAN
pcall(function()
    if hookfunction and lp and lp.Kick then
        hookfunction(lp.Kick, function() return end)
    elseif lp then
        lp.Kick = function() return end
    end
end)

-- ANTI-CHEAT: Dat ten ngau nhien cho UI
local guiName = "NoobHub_" .. tostring(math.random(10000, 99999))
local userGui = (gethui and gethui()) or game:GetService("CoreGui") or lp:WaitForChild("PlayerGui")

-- Don dep UI cu
for _, v in ipairs(userGui:GetChildren()) do
    if v.Name:match("^NoobHub_") or v.Name == "NoobHubV3" or v.Name:match("^ThuyHui_") then
        v:Destroy()
    end
end

local Gui = Instance.new("ScreenGui")
Gui.Name = guiName
Gui.ResetOnSpawn = false 

if syn and syn.protect_gui then syn.protect_gui(Gui) end
Gui.Parent = userGui

-- ==========================================
-- 1. GIAO DIEN CHINH (TRANG TIEN NGHIEP, KHONG VIEN, NO ICON)
-- ==========================================
local MainFrame = Instance.new("Frame", Gui)
MainFrame.Size = UDim2.new(0, 205, 0, 130)
MainFrame.Position = UDim2.new(0.02, 0, 0.35, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true 
MainFrame.ClipsDescendants = true 

local Corner = Instance.new("UICorner", MainFrame)
Corner.CornerRadius = UDim.new(0, 10)

local ToggleBtn = Instance.new("TextButton", MainFrame)
ToggleBtn.Size = UDim2.new(0, 20, 0, 20)
ToggleBtn.Position = UDim2.new(1, -24, 0, 4)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(240, 242, 245)
ToggleBtn.Text = "-"
ToggleBtn.TextColor3 = Color3.fromRGB(80, 90, 105)
ToggleBtn.TextSize = 14
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.BorderSizePixel = 0

local ToggleCorner = Instance.new("UICorner", ToggleBtn)
ToggleCorner.CornerRadius = UDim.new(0, 5)

local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, -30, 0, 20)
Title.Position = UDim2.new(0, 8, 0, 2)
Title.BackgroundTransparency = 1
Title.Text = "NOOB HUB"
Title.TextColor3 = Color3.fromRGB(15, 23, 42)
Title.TextSize = 11
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left

local SubTitle = Instance.new("TextLabel", MainFrame)
SubTitle.Size = UDim2.new(1, 0, 0, 12)
SubTitle.Position = UDim2.new(0, 8, 0, 20)
SubTitle.BackgroundTransparency = 1
SubTitle.Text = "devnvios.io.vn"
SubTitle.TextColor3 = Color3.fromRGB(140, 145, 155)
SubTitle.TextSize = 8
SubTitle.Font = Enum.Font.Code
SubTitle.TextXAlignment = Enum.TextXAlignment.Left

-- PHAN INFO THIET KE GON GANG
local ContactHeader = Instance.new("TextLabel", MainFrame)
ContactHeader.Size = UDim2.new(1, -16, 0, 10)
ContactHeader.Position = UDim2.new(0, 8, 0, 36)
ContactHeader.BackgroundTransparency = 1
ContactHeader.Text = "#INFO"
ContactHeader.TextColor3 = Color3.fromRGB(130, 138, 150)
ContactHeader.TextSize = 8
ContactHeader.Font = Enum.Font.Code
ContactHeader.TextXAlignment = Enum.TextXAlignment.Left

local ContactTele = Instance.new("TextLabel", MainFrame)
ContactTele.Size = UDim2.new(1, -16, 0, 12)
ContactTele.Position = UDim2.new(0, 8, 0, 47)
ContactTele.BackgroundTransparency = 1
ContactTele.Text = "Tele : @iosnea"
ContactTele.TextColor3 = Color3.fromRGB(30, 41, 59)
ContactTele.TextSize = 9
ContactTele.Font = Enum.Font.Code
ContactTele.TextXAlignment = Enum.TextXAlignment.Left

local ContactTik = Instance.new("TextLabel", MainFrame)
ContactTik.Size = UDim2.new(1, -16, 0, 12)
ContactTik.Position = UDim2.new(0, 8, 0, 59)
ContactTik.BackgroundTransparency = 1
ContactTik.Text = "Tik  : @kekekskjs1"
ContactTik.TextColor3 = Color3.fromRGB(30, 41, 59)
ContactTik.TextSize = 9
ContactTik.Font = Enum.Font.Code
ContactTik.TextXAlignment = Enum.TextXAlignment.Left

-- NUT HOP
local HopBtn = Instance.new("TextButton", MainFrame)
HopBtn.Size = UDim2.new(0.92, 0, 0, 34)
HopBtn.Position = UDim2.new(0.04, 0, 0, 78)
HopBtn.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
HopBtn.Text = "HOP"
HopBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
HopBtn.TextSize = 10
HopBtn.Font = Enum.Font.GothamBold
HopBtn.AutoButtonColor = false

local BtnCorner = Instance.new("UICorner", HopBtn)
BtnCorner.CornerRadius = UDim.new(0, 6)

-- CO RUT MENU
local isMinimized = false
ToggleBtn.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        Title.Text = "NOOB HUB"
        MainFrame:TweenSize(UDim2.new(0, 100, 0, 24), "Out", "Quad", 0.2, true)
        ToggleBtn.Text = "+"
    else
        Title.Text = "NOOB HUB"
        MainFrame:TweenSize(UDim2.new(0, 205, 0, 130), "Out", "Quad", 0.2, true)
        ToggleBtn.Text = "-"
    end
end)

-- ==========================================
-- 2. THUAT TOAN HOP THONG MINH - CHONG DUNG HANG & FIX LOI 772
-- ==========================================
local triedServers = {}
local isHopping = false 

local function ResetState()
    task.wait(2.5) -- Thoi gian cho an toan truoc khi cho phep bam lai
    isHopping = false
    HopBtn.Text = "HOP"
    HopBtn.BackgroundColor3 = Color3.fromRGB(15, 23, 42)
end

local function HopLowestServer()
    if isHopping then return end
    isHopping = true
    HopBtn.Text = "Đang vào phòng"

    local placeId = game.PlaceId
    local currentJob = game.JobId
    local candidates = {}

    -- Nhay ngau nhien trang API de tranh dung hang voi nguoi choi khac
    local pageCursor = ""
    for i = 1, math.random(1, 2) do
        local fetchUrl = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100" .. (pageCursor ~= "" and ("&cursor=" .. pageCursor) or "")
        local reqOk, reqRes = pcall(function() return game:HttpGet(fetchUrl) end)
        if reqOk and reqRes then
            local data = pcall(function() return HttpService:JSONDecode(reqRes) end) and HttpService:JSONDecode(reqRes)
            if data and data.nextPageCursor then
                pageCursor = data.nextPageCursor
            end
        end
    end

    local url = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100" .. (pageCursor ~= "" and ("&cursor=" .. pageCursor) or "")
    local success, result = pcall(function() return game:HttpGet(url) end)

    if success and result then
        local decoded = pcall(function() return HttpService:JSONDecode(result) end) and HttpService:JSONDecode(result)
        if decoded and decoded.data then
            for _, server in ipairs(decoded.data) do
                if type(server) == "table" and server.id ~= currentJob and not triedServers[server.id] then
                    local playing = server.playing or 0
                    local maxP = server.maxPlayers or 10
                    -- Chi lay phong co it nhat 1 nguoi va con trong toi thieu 2 cho
                    if playing > 0 and playing <= (maxP - 2) then
                        table.insert(candidates, server)
                    end
                end
            end
        end
    end

    if #candidates > 0 then
        -- Sap xep tang dan theo so nguoi trong phong
        table.sort(candidates, function(a, b) return a.playing < b.playing end)

        -- CHON NGAU NHIEN 1 TRONG 5 PHONG VANG NHAT (Fix triet de race condition gay loi 772)
        local pickRange = math.min(5, #candidates)
        local target = candidates[math.random(1, pickRange)]

        triedServers[target.id] = true 

        -- LUU AUTOMATION CHO MAP MOI
        local queue = queue_on_teleport or (getgenv and getgenv().queue_on_teleport)
        if queue then
            local next_code = [[
                repeat task.wait() until game:IsLoaded()
                pcall(function()
                    if isfile and readfile and isfile("NoobHub_AutoHop.txt") then
                        loadstring(readfile("NoobHub_AutoHop.txt"))()
                    end
                end)
            ]]
            pcall(function() queue(next_code) end)
        end

        task.wait(0.2)
        local tpSuccess = pcall(function()
            TeleportService:TeleportToPlaceInstance(placeId, target.id, lp)
        end)

        if not tpSuccess then
            ResetState()
        end
    else
        triedServers = {}
        ResetState()
    end
end

-- BAT LOI DICH CHUYEN AN TOAN (KHONG SPAM RE-TRY)
TeleportService.TeleportInitFailed:Connect(function(player)
    if player == lp then
        ResetState()
    end
end)

HopBtn.MouseButton1Click:Connect(HopLowestServer)
]=====]

-- GHI FILE LƯU TỰ ĐỘNG
if writefile then
    pcall(function()
        writefile("NoobHub_AutoHop.txt", NoobHub_Code)
    end)
end

-- CHẠY SCRIPT
loadstring(NoobHub_Code)()
