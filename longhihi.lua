--[[
  LongHiHi Hub — scoped rebrand + RED theme
  Chỉ trong ScreenGui hub (BEST EGG / TELEGUIADO / LENNON…)
  Text + Image + Discord + màu đỏ | tránh đụng UI game
]]

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local PlayerGui = Players.LocalPlayer:WaitForChild("PlayerGui")

local PAYLOAD_URL = "https://pastefy.app/rxJKm2jA/raw"

local DISCORD = "https://discord.gg/fsea4nu6ca"
local ICON_ID = "rbxassetid://106345650859474"
local HUB = "LongHiHi Hub"
local HUB_U = "LONGHIHI HUB"

local THEME = {
  Background = Color3.fromRGB(22, 8, 10),
  Background2 = Color3.fromRGB(42, 12, 16),
  Accent = Color3.fromRGB(200, 20, 30),
  Text = Color3.fromRGB(255, 242, 242),
  TextDim = Color3.fromRGB(220, 170, 170),
  Stroke = Color3.fromRGB(220, 30, 40),
}

local hubRoots = setmetatable({}, { __mode = "k" })

local function lower(s)
  return type(s) == "string" and string.lower(s) or ""
end

local function hasLennon(s)
  return type(s) == "string" and string.find(lower(s), "lennon", 1, true) ~= nil
end

local function rebrand(s)
  if type(s) ~= "string" then
    return s
  end
  s = string.gsub(s, "LENNON HUB", HUB_U)
  s = string.gsub(s, "Lennon HUB", HUB)
  s = string.gsub(s, "Lennon Hub", HUB)
  s = string.gsub(s, "lennon hub", string.lower(HUB))
  s = string.gsub(s, "LENNON", "LONGHIHI")
  s = string.gsub(s, "Lennon", "LongHiHi")
  s = string.gsub(s, "lennon", "longhihi")
  s = string.gsub(s, "https://discord%.gg/[%w%-]+", DISCORD)
  s = string.gsub(s, "discord%.gg/[%w%-]+", DISCORD)
  return s
end

local function isUnderHub(inst)
  local p = inst
  for _ = 1, 14 do
    if not p then
      return false
    end
    if hubRoots[p] then
      return true
    end
    p = p.Parent
  end
  return false
end

local MARKERS = { "best egg", "teleguiado", "one shot", "lennon hub", "bestegg", "loop" }

local function textLooksLikeHub(s)
  s = lower(s)
  for i = 1, #MARKERS do
    if string.find(s, MARKERS[i], 1, true) then
      return true
    end
  end
  return hasLennon(s)
end

local function markHubRoot(inst)
  local p = inst
  for _ = 1, 16 do
    if not p then
      break
    end
    if p:IsA("ScreenGui") then
      hubRoots[p] = true
      return p
    end
    p = p.Parent
  end
  if inst.Parent then
    hubRoots[inst.Parent] = true
  end
  return inst.Parent
end

local function discoverHub(root)
  if not root then
    return
  end
  pcall(function()
    for _, d in ipairs(root:GetDescendants()) do
      if d:IsA("TextLabel") or d:IsA("TextButton") then
        local ok, t = pcall(function()
          return d.Text
        end)
        if ok and textLooksLikeHub(t) then
          markHubRoot(d)
        end
      end
    end
  end)
end

local function paint(inst)
  if not inst or not isUnderHub(inst) then
    return
  end
  pcall(function()
    if inst:IsA("TextLabel") or inst:IsA("TextButton") or inst:IsA("TextBox") then
      if hasLennon(inst.Text) or string.find(lower(inst.Text), "discord%.gg") then
        inst.Text = rebrand(inst.Text)
      end
      inst.TextColor3 = THEME.Text
      if inst:IsA("TextBox") then
        if hasLennon(inst.PlaceholderText) then
          inst.PlaceholderText = rebrand(inst.PlaceholderText)
        end
      end
      if inst:IsA("TextButton") then
        inst.BackgroundColor3 = THEME.Accent
      end
    elseif inst:IsA("Frame") and inst.BackgroundTransparency < 0.9 then
      if inst.BackgroundTransparency <= 0.25 then
        inst.BackgroundColor3 = THEME.Background
      else
        inst.BackgroundColor3 = THEME.Background2
      end
    elseif inst:IsA("UIStroke") then
      inst.Color = THEME.Stroke
    elseif inst:IsA("ImageLabel") or inst:IsA("ImageButton") then
      if inst.Image ~= "" and inst.Image ~= ICON_ID then
        inst.Image = ICON_ID
      end
    end
    if hasLennon(inst.Name) then
      inst.Name = rebrand(inst.Name)
    end
  end)
end

local function passHubTrees()
  for root in pairs(hubRoots) do
    if root and root.Parent then
      pcall(function()
        for _, d in ipairs(root:GetDescendants()) do
          paint(d)
        end
      end)
    end
  end
end

if type(hookfunction) == "function" and type(setclipboard) == "function" then
  pcall(function()
    local old = setclipboard
    local wrap = newcclosure or function(f)
      return f
    end
    hookfunction(
      setclipboard,
      wrap(function(text)
        if type(text) == "string" and (string.find(lower(text), "discord", 1, true) or hasLennon(text)) then
          text = DISCORD
        end
        return old(text)
      end)
    )
  end)
end

if type(hookmetamethod) == "function" and type(newcclosure) == "function" then
  local old
  old = hookmetamethod(
    game,
    "__newindex",
    newcclosure(function(self, key, value)
      if isUnderHub(self) then
        if key == "Text" or key == "PlaceholderText" or key == "Name" then
          if type(value) == "string" and (hasLennon(value) or string.find(lower(value), "discord%.gg")) then
            value = rebrand(value)
          end
        elseif key == "Image" and type(value) == "string" and value ~= "" then
          value = ICON_ID
        elseif key == "BackgroundColor3" and typeof(value) == "Color3" then
          if self:IsA("TextButton") then
            value = THEME.Accent
          else
            local lum = (value.R + value.G + value.B) / 3
            if lum < 0.3 then
              value = THEME.Background
            end
          end
        elseif key == "TextColor3" and typeof(value) == "Color3" then
          value = THEME.Text
        elseif key == "Color" and typeof(value) == "Color3" and self:IsA("UIStroke") then
          value = THEME.Stroke
        end
      else
        if (key == "Text" or key == "PlaceholderText") and type(value) == "string" and textLooksLikeHub(value) then
          markHubRoot(self)
          if hasLennon(value) then
            value = rebrand(value)
          end
        end
      end
      return old(self, key, value)
    end)
  )
  warn("[" .. HUB .. "] scoped RED theme hook ON")
else
  warn("[" .. HUB .. "] no hookmetamethod")
end

local function run()
  local ok, src = pcall(function()
    return game:HttpGet(PAYLOAD_URL)
  end)
  if not ok or type(src) ~= "string" then
    warn("[" .. HUB .. "] fetch fail")
    return
  end
  local fn, err = loadstring(src)
  if not fn then
    warn("[" .. HUB .. "] " .. tostring(err))
    return
  end
  pcall(fn)
  for _, t in ipairs({ 0.4, 1.0, 2.0, 4.0 }) do
    task.delay(t, function()
      discoverHub(CoreGui)
      discoverHub(PlayerGui)
      passHubTrees()
    end)
  end
end

pcall(function()
  CoreGui.DescendantAdded:Connect(function(d)
    task.defer(function()
      if d:IsA("TextLabel") or d:IsA("TextButton") then
        local ok, t = pcall(function()
          return d.Text
        end)
        if ok and textLooksLikeHub(t) then
          markHubRoot(d)
        end
      end
      if isUnderHub(d) then
        paint(d)
      end
    end)
  end)
end)
pcall(function()
  PlayerGui.DescendantAdded:Connect(function(d)
    task.defer(function()
      if isUnderHub(d) then
        paint(d)
      end
    end)
  end)
end)

run()
warn("[" .. HUB .. "] RED | " .. DISCORD .. " | " .. ICON_ID)
