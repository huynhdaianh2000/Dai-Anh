-- This file was generated at discord.gg/syncrypt
-- MoonVeil Deobfuscator Created By Skynex Okinbru

local Players, ReplicatedStorage, RunService, UserInputService, TweenService, HttpService, VirtualInputManager, LocalPlayer, v12, v29, v31, t2, u36, v64, v68, u69, t3, g218, v219, v220, g494, v495, v496

do
	local StarterGui

	do
		local v40

		do
			local u13, u14

			do
				local t1 = {
					[7326934954] = true,
				}

				Players = game:GetService("Players")
				ReplicatedStorage = game:GetService("ReplicatedStorage")
				RunService = game:GetService("RunService")
				StarterGui = game:GetService("StarterGui")
				UserInputService = game:GetService("UserInputService")
				TweenService = game:GetService("TweenService")
				HttpService = game:GetService("HttpService")
				VirtualInputManager = game:GetService("VirtualInputManager")
				LocalPlayer = Players.LocalPlayer

				do
					local GameId = game.GameId

					v12 = "RoninHub/Settings/99Nights_" .. tostring(GameId) .. ".txt"
				end

				g218 = nil
				v219 = nil
				v220 = nil
				g494 = nil
				v495 = nil
				v496 = nil

				if makefolder and isfolder then
					pcall(function()
						if not isfolder("RoninHub") then
							makefolder("RoninHub")
						end

						if not isfolder("RoninHub/Key") then
							makefolder("RoninHub/Key")
						end

						if not isfolder("RoninHub/Settings") then
							makefolder("RoninHub/Settings")
						end
					end)
				end

				u13 = v12
				u14 = HttpService

				if not t1[game.GameId] then
					local ScreenGui, Frame

					do
						ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
						ScreenGui.Name = "RH_NS"
						ScreenGui.ResetOnSpawn = false
						Frame = Instance.new("Frame", ScreenGui)
						Frame.Size = UDim2.new(0, 380, 0, 110)
						Frame.Position = UDim2.new(0.5, -190, 0.5, -55)
						Frame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
						Frame.BorderSizePixel = 0
						Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 12)

						local TextLabel = Instance.new("TextLabel", Frame)

						TextLabel.Size = UDim2.new(1, -20, 0.72, 0)
						TextLabel.Position = UDim2.new(0, 10, 0.05, 0)
						TextLabel.BackgroundTransparency = 1

						local GameId = game.GameId

						TextLabel.Text = "❌ Wrong game (ID "
							.. tostring(GameId)
							.. ")\nThis script is for 99 Nights in the Forest.\nJoin Discord — invite copied!"
						TextLabel.TextColor3 = Color3.new(1, 1, 1)
						TextLabel.Font = Enum.Font.GothamBold
						TextLabel.TextSize = 12
						TextLabel.TextWrapped = true
						TextLabel.TextXAlignment = Enum.TextXAlignment.Center
					end

					local TextButton = Instance.new("TextButton", Frame)

					TextButton.Size = UDim2.new(0.38, 0, 0, 28)
					TextButton.Position = UDim2.new(0.31, 0, 0.76, 0)
					TextButton.BackgroundColor3 = Color3.fromRGB(130, 0, 240)
					TextButton.BorderSizePixel = 0
					TextButton.Text = "Close"
					TextButton.TextColor3 = Color3.new(1, 1, 1)
					TextButton.Font = Enum.Font.GothamBold
					TextButton.TextSize = 12
					Instance.new("UICorner", TextButton).CornerRadius = UDim.new(0, 8)

					if setclipboard then
						pcall(setclipboard, "https://discord.gg/uuaFAm6AdE")
					end

					local MouseButton1Click = TextButton.MouseButton1Click
					local u21 = ScreenGui

					MouseButton1Click:Connect(function()
						u21:Destroy()
					end)

					return
				end

				local u22 = HttpService

				if
					not (function()
						local g547 = nil
						local ok = nil
						local result = nil

						repeat
							if g547 or isfile and (readfile and isfile("RoninHub/Key/Key.txt")) then
								if not g547 then
									ok, result = pcall(readfile, "RoninHub/Key/Key.txt")
								end

								if g547 or ok then
									g547 = false

									if result and result:gsub("%s+", "") ~= "" then
										local v550 = result:gsub("%s+", "")
										local v551 = syn and syn.request or (http and http.request or (http_request or request))

										if v551 then
											local _pcall = pcall
											local u553 = v551
											local u554 = v550
											local v555, v556 = pcall(function()
												return u553({
													Url = "https://api.nebulauth.com/api/v1/keys/verify",
													Method = "POST",
													Headers = {
														["Content-Type"] = "application/json",
														Authorization = "Bearer mk_at_X0j8xxHfwaDwc94js7fnwqxOTlJ_Rr1e01QmiU4Lr2U",
													},
													Body = u22:JSONEncode({
														key = u554,
														requestId = u22:GenerateGUID(false),
													}),
												})
											end)

											if v555 and v556 then
												local u557 = v556.Body or (v556.body or "")
												local ok2, result2 = pcall(function()
													return u22:JSONDecode(u557)
												end)

												return ok2 and (result2 and (result2.valid == true or result2.valid == "true"))
											end

											return false
										end

										return false
									end

									return false
								end
							end

							result = nil
							g547 = true
						until not g547
					end)()
				then
					local ScreenGui, TextButton

					do
						ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
						ScreenGui.Name = "RH_KE"
						ScreenGui.ResetOnSpawn = false

						local Frame = Instance.new("Frame", ScreenGui)

						Frame.Size = UDim2.new(0, 340, 0, 90)
						Frame.Position = UDim2.new(0.5, -170, 0.5, -45)
						Frame.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
						Frame.BorderSizePixel = 0
						Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 12)

						local TextLabel = Instance.new("TextLabel", Frame)

						TextLabel.Size = UDim2.new(1, -20, 0.65, 0)
						TextLabel.Position = UDim2.new(0, 10, 0.05, 0)
						TextLabel.BackgroundTransparency = 1
						TextLabel.Text = "❌ Invalid or missing key!\nRun the Ronin Hub loader to authenticate."
						TextLabel.TextColor3 = Color3.new(1, 1, 1)
						TextLabel.Font = Enum.Font.GothamBold
						TextLabel.TextSize = 12
						TextLabel.TextWrapped = true
						TextLabel.TextXAlignment = Enum.TextXAlignment.Center
						TextButton = Instance.new("TextButton", Frame)
					end

					TextButton.Size = UDim2.new(0.38, 0, 0, 28)
					TextButton.Position = UDim2.new(0.31, 0, 0.72, 0)
					TextButton.BackgroundColor3 = Color3.fromRGB(130, 0, 240)
					TextButton.BorderSizePixel = 0
					TextButton.Text = "Close"
					TextButton.TextColor3 = Color3.new(1, 1, 1)
					TextButton.Font = Enum.Font.GothamBold
					TextButton.TextSize = 12
					Instance.new("UICorner", TextButton).CornerRadius = UDim.new(0, 8)

					local MouseButton1Click = TextButton.MouseButton1Click
					local u28 = ScreenGui

					MouseButton1Click:Connect(function()
						u28:Destroy()
					end)

					return
				end

				print("✅ [RH] Key verified — loading Ronin Hub…")
				v29 = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled

				local v30 = v29 and "https://raw.githubusercontent.com/Ronin-Studios/Ronin-Hub/refs/heads/main/UI/Ronin-Hub-UILib_Mobile.lua"
					or "https://raw.githubusercontent.com/Ronin-Studios/Ronin-Hub/refs/heads/main/UI/Ronin-Hub-UILib.lua"

				v31 = loadstring(game:HttpGet(v30, true))()
			end

			if not v31 then
				warn("[RH] UILib failed to load")

				return
			end

			t2 = {
				V = {
					AutoFarm = 0,
					KillAura = 0,
					BringItems = 0,
					ExploreMap = 0,
					Noclip = 0,
				},
				AutoFarm = false,
				KillAura = false,
				BringItems = false,
				ExploreMap = false,
				Noclip = false,
				FlyEnabled = false,
				ShowNotifs = true,
				ESPPlayers = false,
				ESPEnemies = false,
				ESPDeer = false,
				ESPAnimals = false,
				ESPItems = false,
				ESPChests = false,
				FarmInterval = 0.3,
				FarmHits = 2,
				FarmMultiplier = 50,
				FarmRange = 0,
				FarmSmallTrees = true,
				FarmBigTrees = false,
				FarmMode = "Normal",
				AuraInterval = 0.1,
				AuraHits = 5,
				AuraRange = 0,
				AttackAnimals = false,
				BringCat = "All",
				ExploreSpeed = 450,
				WalkSpeed = 16,
				JumpPower = 50,
				FlySpeed = 60,
				InfJumpConn = nil,
				AntiAfkConn = nil,
			}

			do
				u36 = false
			end

			v40 = (function()
				local v539 = u13
				local g540 = nil
				local ok = nil
				local result = nil

				repeat
					if g540 or isfile and (readfile and isfile(v539)) then
						if not g540 then
							ok, result = pcall(readfile, v539)
						end

						if g540 or ok then
							g540 = false

							if result and result ~= "" then
								local _pcall = pcall
								local u544 = result
								local v545, v546 = pcall(function()
									return u14:JSONDecode(u544)
								end)

								return v545 and (type(v546) == "table" and v546) or {}
							end

							return {}
						end
					end

					result = nil
					g540 = true
				until not g540
			end)()
			local FarmInterval = v40.FarmInterval

			if type(FarmInterval) == "number" then
				t2.FarmInterval = v40.FarmInterval
			end

			local FarmHits = v40.FarmHits

			if type(FarmHits) == "number" then
				t2.FarmHits = v40.FarmHits
			end
		end

		do
			local FarmMultiplier = v40.FarmMultiplier

			if type(FarmMultiplier) == "number" then
				t2.FarmMultiplier = v40.FarmMultiplier
			end

			local FarmRange = v40.FarmRange

			if type(FarmRange) == "number" then
				t2.FarmRange = v40.FarmRange
			end

			local AuraInterval = v40.AuraInterval

			if type(AuraInterval) == "number" then
				t2.AuraInterval = v40.AuraInterval
			end

			local AuraHits = v40.AuraHits

			if type(AuraHits) == "number" then
				t2.AuraHits = v40.AuraHits
			end

			local AuraRange = v40.AuraRange

			if type(AuraRange) == "number" then
				t2.AuraRange = v40.AuraRange
			end

			local ExploreSpeed = v40.ExploreSpeed

			if type(ExploreSpeed) == "number" then
				t2.ExploreSpeed = v40.ExploreSpeed
			end

			local WalkSpeed = v40.WalkSpeed

			if type(WalkSpeed) == "number" then
				t2.WalkSpeed = v40.WalkSpeed
			end

			local JumpPower = v40.JumpPower

			if type(JumpPower) == "number" then
				t2.JumpPower = v40.JumpPower
			end
		end

		local FlySpeed = v40.FlySpeed

		if type(FlySpeed) == "number" then
			t2.FlySpeed = v40.FlySpeed
		end

		local FarmSmallTrees = v40.FarmSmallTrees

		if type(FarmSmallTrees) == "boolean" then
			t2.FarmSmallTrees = v40.FarmSmallTrees
		end

		local FarmBigTrees = v40.FarmBigTrees

		if type(FarmBigTrees) == "boolean" then
			t2.FarmBigTrees = v40.FarmBigTrees
		end

		local AttackAnimals = v40.AttackAnimals

		if type(AttackAnimals) == "boolean" then
			t2.AttackAnimals = v40.AttackAnimals
		end

		local ShowNotifs = v40.ShowNotifs

		if type(ShowNotifs) == "boolean" then
			t2.ShowNotifs = v40.ShowNotifs
		end

		local BringCat = v40.BringCat

		if type(BringCat) == "string" then
			t2.BringCat = v40.BringCat
		end

		if v40.FarmMode == "Normal" or v40.FarmMode == "BETA" then
			t2.FarmMode = v40.FarmMode
		end
	end

	local u63 = t2

	function v64(p1, p2, p3)
		local n1 = 0

		while n1 < p1 do
			if p3 ~= u63.V[p2] then
				return false
			end

			local v571 = p1 - n1
			local v572 = math.min(0.05, v571)

			task.wait(v572)
			n1 = n1 + v572
		end

		return p3 == u63.V[p2]
	end

	local u65 = t2
	local u66 = v31
	local u67 = StarterGui

	function v68(p4, p5, p6, p7)
		if u65.ShowNotifs then
			local _pcall = pcall
			local u579 = p4
			local u580 = p5
			local u581 = p6

			pcall(function()
				u66:Notify({
					Title = u579,
					Body = u580 or "",
					Duration = u581 or 3,
					Kind = p7 or "info",
				})
			end)
			local u583 = p4
			local u584 = p5
			local u585 = p6

			pcall(function()
				u67:SetCore("SendNotification", {
					Title = u583,
					Text = u584 or "",
					Duration = u585 or 3,
				})
			end)

			return
		end
	end
	function u69(p8)
		if p8 then
			local v587 = tonumber(p8) or 0

			if not (v587 >= 1000000000) then
				if not (v587 >= 1000000) then
					if not (v587 >= 1000) then
						local v588 = math.floor(v587)

						return (tostring(v588))
					end

					return ("%.1fK"):format(v587 / 1000)
				end

				return ("%.1fM"):format(v587 / 1000000)
			end

			return ("%.1fB"):format(v587 / 1000000000)
		end

		return "?"
	end

	t3 = {}
end
local v89, v91, t9, u103, v130, u131, u132, u133, u134, u135, u136, u137, u138, u139, u140, u150, v166, v167, u173, v179, u180, n7, v191, v205, v211

do
	local t4, t5, v82

	do
		t4 = {
			"cultist",
			"wolf",
			"bear",
			"bat",
			"wendigo",
			"alien",
			"necromancer",
			"nightcrawler",
			"beastmaster",
			"ram",
			"scarecrow",
			"reaper",
			"zombie",
			"skeleton",
			"ghoul",
			"spider",
			"snake",
			"crossbow",
		}
		t5 = {
			"bunny",
			"rabbit",
			"chick",
			"chicken",
			"horse",
			"cat",
			"frog",
			"owl",
			"deer",
			"cow",
			"pig",
			"sheep",
			"fox",
		}

		function v82(p9, p10)
			local v615 = (p9 or ""):lower()

			for _, v in ipairs(p10) do
				if v615:find(v, 1, true) then
					return true
				end
			end

			return false
		end

		local u83 = LocalPlayer
		local u84 = Players
		local u85 = v82
		local u86 = t4
		local u87 = t5
		local u88 = t2

		function v89()
			local t6 = {}
			local Character = u83.Character
			local HumanoidRootPart

			if Character then
				HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
			else
				HumanoidRootPart = nil
			end

			local u622 = HumanoidRootPart and HumanoidRootPart.Position
			local u623 = t6

			local function v624(p11)
				if p11 then
					for _, child in ipairs(p11:GetChildren()) do
						if child:IsA("Model") and child ~= u83.Character and not u84:GetPlayerFromCharacter(child) then
							local Humanoid = child:FindFirstChildWhichIsA("Humanoid")
							local v991 = child:FindFirstChild("HumanoidRootPart") or child.PrimaryPart

							if
								Humanoid
								and v991
								and Humanoid.Health > 0
								and child:GetAttribute("Dead") == nil
								and child:GetAttribute("Tamed") == nil
								and (child.Name or ""):lower():find("deer", 1, true) == nil
								and (u85(child.Name, u86) or u85(child.Name, u87) and u88.AttackAnimals)
								and (not (u88.AuraRange > 0) or not u622 or not ((v991.Position - u622).Magnitude > u88.AuraRange))
							then
								local t7 = {
									model = child,
									hum = Humanoid,
									hrp = v991,
								}

								table.insert(u623, t7)
							end
						end
					end

					return
				end
			end

			v624(workspace:FindFirstChild("Characters"))
			v624(workspace:FindFirstChild("Enemies"))

			return t6
		end
	end

	do
		local v102, v109, v111, u141

		do
			local t12

			do
				local t8 = {
					"big",
					"giant",
					"ancient",
					"elder",
					"great",
					"large",
					"massive",
					"mega",
					"colossal",
					"old",
				}

				function v91(p12)
					local v626 = p12:GetAttribute("Tier") or (p12:GetAttribute("ResourceTier") or p12:GetAttribute("Level"))

					if not v626 or (not tonumber(v626) or not (tonumber(v626) >= 2)) then
						if p12:GetAttribute("BigTree") == nil then
							local v627 = p12.Name:lower()

							for _, v in ipairs(t8) do
								if v627:find(v, 1, true) then
									return true
								end
							end

							return false
						end

						return true
					end

					return true
				end

				t9 = {
					resources = {},
					chests = {},
				}

				local spawn = task.spawn
				local u94 = t9

				spawn(function()
					while true do
						local t10 = {}
						local t11 = {}
						local _pcall = pcall
						local u633 = t10
						local u634 = t11

						pcall(function()
							for _, descendant in ipairs(workspace:GetDescendants()) do
								if descendant:IsA("Model") then
									if
										descendant:GetAttribute("Resource") ~= nil
										and descendant:GetAttribute("Destroyed") == nil
										and descendant:GetAttribute("NotAttackable") == nil
									then
										u633[#u633 + 1] = descendant
									end

									local v996 = descendant.Name:lower()

									if v996:find("chest", 1, true) or v996:find("supply crate", 1, true) then
										u634[#u634 + 1] = descendant
									end
								end
							end
						end)
						u94.resources = t10
						u94.chests = t11
						task.wait(2)
					end
				end)

				local DescendantAdded = workspace.DescendantAdded
				local u96 = t9

				DescendantAdded:Connect(function(p13)
					local u637 = p13

					pcall(function()
						if u637:IsA("Model") then
							if u637:GetAttribute("Resource") ~= nil and u637:GetAttribute("Destroyed") == nil and u637:GetAttribute("NotAttackable") == nil then
								u96.resources[#u96.resources + 1] = u637
							end

							local v997 = u637.Name:lower()

							if v997:find("chest", 1, true) or v997:find("supply crate", 1, true) then
								u96.chests[#u96.chests + 1] = u637
							end

							return
						end
					end)
				end)

				local DescendantRemoving = workspace.DescendantRemoving
				local u98 = t9

				DescendantRemoving:Connect(function(p14)
					local u640 = p14

					pcall(function()
						for i = #u98.resources, 1, -1 do
							if u98.resources[i] == u640 then
								table.remove(u98.resources, i)
							end
						end
					end)
				end)
				t12 = {
					Wood = {
						"log",
						"wood",
						"plank",
						"stick",
						"branch",
						"bark",
						"lumber",
						"timber",
						"firewood",
					},
					Fuel = {
						"coal",
						"fuel",
						"charcoal",
						"kindling",
						"ember",
						"oil",
						"briquette",
						"chair",
					},
					Food = {
						"berry",
						"carrot",
						"morsel",
						"meat",
						"cooked",
						"cake",
						"apple",
						"mushroom",
						"fish",
						"egg",
						"honey",
						"steak",
						"soup",
						"stew",
						"cookie",
						"candy",
						"bread",
						"pie",
						"jerky",
						"corn",
						"pumpkin",
						"marshmallow",
						"cheese",
						"milk",
						"fruit",
						"sandwich",
						"banana",
					},
					Metal = {
						"scrap",
						"metal",
						"ore",
						"iron",
						"steel",
						"nail",
						"gear",
						"microwave",
						"battery",
						"wire",
						"circuit",
						"tin",
						"can",
						"cog",
						"spring",
						"magnet",
						"bolt",
						"tire",
						"old radio",
						"old car engine",
						"broken fan",
						"radio",
						"engine",
						"fan",
					},
					Sapling = {
						"sapling",
						"seed",
						"acorn",
						"sprout",
						"flower",
						"plant",
						"bulb",
						"pinecone",
						"root",
					},
					Coins = {
						"coin",
						"diamond",
						"gem",
						"cash",
						"money",
					},
					Heal = {
						"bandage",
						"medkit",
						"first aid",
						"health kit",
						"medicine",
						"splint",
						"gauze",
						"antidote",
						"heal",
					},
					Ammo = {
						"ammo",
						"ammunition",
						"bullet",
						"revolver ammo",
						"rifle ammo",
						"shotgun shell",
						"arrow",
						"shell",
						"cartridge",
					},
					Guns = {
						"revolver",
						"rifle",
						"pistol",
						"shotgun",
						"firearm",
						"musket",
						"crossbow",
						"bow",
					},
					Tools = {
						"flashlight",
						"hammer",
						"wrench",
						"rope",
						"tape",
						"glue",
						"screwdriver",
						"knife",
						"lantern",
						"torch",
					},
					Armor = {
						"leather body",
						"iron body",
						"armor",
						"armour",
						"chestplate",
						"chest plate",
						"breastplate",
						"vest",
						"helmet",
						"gauntlet",
						"boots",
						"shield",
						"pauldron",
					},
				}
			end

			function v102(p15)
				if p15:GetAttribute("Interaction") ~= "ItemChest" then
					if not p15:FindFirstChild("ChestLid") then
						local v645 = (p15.Name or ""):lower()

						if not v645:find("crate", 1, true) and not v645:find("supply", 1, true) then
							if not v645:find("chest", 1, true) or v645:find("plate", 1, true) then
								return false
							end

							return true
						end

						return true
					end

					return true
				end

				return true
			end

			u103 = nil
			local u104 = nil

			local v119

			do
				local u107 = t3
				local u108 = ReplicatedStorage

				function v109(p16)
					if not u104 or not u104.Parent then
						local StopDraggingItem = u107.StopDraggingItem

						if not StopDraggingItem or not StopDraggingItem.Parent then
							StopDraggingItem = u108:FindFirstChild("StopDraggingItem", true)
							u107.StopDraggingItem = StopDraggingItem
						end

						u104 = StopDraggingItem
					end

					if u104 and u104:IsA("RemoteEvent") then
						local _pcall = pcall
						local u653 = p16

						pcall(function()
							u104:FireServer(u653)
						end)
					end
				end

				function v111(p17, p18)
					if not p17:IsA("BasePart") then
						if p17:IsA("Model") then
							for _, descendant in ipairs(p17:GetDescendants()) do
								if descendant:IsA("BasePart") then
									local _pcall = pcall
									local u670 = descendant

									pcall(function()
										u670.Anchored = false
										u670.AssemblyLinearVelocity = Vector3.zero
									end)
								end
							end

							if p17.PrimaryPart then
								local _pcall = pcall
								local u672 = p17
								local u673 = p18

								pcall(function()
									u672:PivotTo(u673)
								end)

								return
							end

							for _, descendant in ipairs(p17:GetDescendants()) do
								if descendant:IsA("BasePart") then
									local _pcall = pcall
									local u677 = descendant
									local u678 = p18

									pcall(function()
										u677.CFrame = u678
									end)
								end
							end
						end

						return
					end

					local _pcall = pcall
					local u680 = p17
					local u681 = p18

					pcall(function()
						u680.Anchored = false
						u680.AssemblyLinearVelocity = Vector3.zero
						u680.CFrame = u681
					end)
				end
				local u116 = nil

				local u117 = LocalPlayer
				local u118 = RunService

				function v119(p19)
					if not p19 or u116 then
						if not p19 and u116 then
							u116:Disconnect()
							u116 = nil
						end

						return
					end

					pcall(function()
						u117.ReplicationFocus = workspace
					end)
					u116 = u118.Heartbeat:Connect(function()
						pcall(function()
							sethiddenproperty(u117, "SimulationRadius", 1e999)
						end)
					end)
				end
			end

			local u120 = v68
			local u121 = v119
			local u122 = LocalPlayer
			local u123 = t12
			local u124 = v82
			local u125 = v102
			local u126 = t3
			local u127 = ReplicatedStorage
			local u128 = v111
			local u129 = v109

			function v130(p20)
				local Items = workspace:FindFirstChild("Items")

				if Items then
					u121(true)

					local Character = u122.Character
					local HumanoidRootPart

					if Character then
						HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
					else
						HumanoidRootPart = nil
					end

					if HumanoidRootPart then
						local t13 = {}

						for _, child in ipairs(Items:GetChildren()) do
							local v695 = child:GetAttribute("ItemName") or child.Name
							local v697

							if p20 ~= "All" then
								local v696 = u123[p20]

								v697 = not not v696 and u124(v695, v696)
							else
								v697 = true
							end

							if v697 then
								local Owner = child:GetAttribute("Owner")

								if (Owner == nil or Owner == u122.UserId) and not u125(child) then
									t13[#t13 + 1] = child
								end
							end
						end

						local n2 = 0

						for i, v in ipairs(t13) do
							if v and v.Parent then
								local Character2 = u122.Character
								local HumanoidRootPart2

								if Character2 then
									HumanoidRootPart2 = Character2:FindFirstChild("HumanoidRootPart")
								else
									HumanoidRootPart2 = nil
								end

								if not HumanoidRootPart2 then
									break
								end

								local HumanoidRootPart2CFrame = HumanoidRootPart2.CFrame
								local v705 = i * 2.3999632
								local v706 = 3 + math.sqrt(i) * 2.6
								local v707 = HumanoidRootPart2CFrame * CFrame.new(math.cos(v705) * v706, 3, math.sin(v705) * v706)

								if not u103 or not u103.Parent then
									local RequestStartDraggingItem = u126.RequestStartDraggingItem

									if not RequestStartDraggingItem or not RequestStartDraggingItem.Parent then
										RequestStartDraggingItem = u127:FindFirstChild("RequestStartDraggingItem", true)
										u126.RequestStartDraggingItem = RequestStartDraggingItem
									end

									u103 = RequestStartDraggingItem
								end

								if u103 then
									local _pcall = pcall
									local u710 = v

									pcall(function()
										u103:FireServer(u710)
									end)
								end

								u128(v, v707)
								u129(v)
								n2 = n2 + 1

								if i % 10 == 0 then
									task.wait(0.03)
								end
							end
						end

						u120("🎒 Bring " .. p20, n2 .. " item(s) pulled to you", 3, n2 > 0 and "success" or "info")

						return n2
					end

					return 0
				end

				u120("🎒 Bring Items", "No items on the map yet", 3)

				return 0
			end

			u131 = t2
			u132 = v119
			u133 = LocalPlayer
			u134 = t12
			u135 = v82
			u136 = v102
			u137 = t3
			u138 = ReplicatedStorage
			u139 = v111
			u140 = v64
			u141 = v119
		end

		local u142 = t3
		local u143 = ReplicatedStorage
		local u144 = LocalPlayer
		local u145 = v68
		local u146 = v102
		local u147 = t9
		local u148 = v111
		local u149 = v109

		function u150()
			u141(true)

			local RequestOpenItemChest = u142.RequestOpenItemChest

			if not RequestOpenItemChest or not RequestOpenItemChest.Parent then
				RequestOpenItemChest = u143:FindFirstChild("RequestOpenItemChest", true)
				u142.RequestOpenItemChest = RequestOpenItemChest
			end

			local Character = u144.Character
			local HumanoidRootPart

			if Character then
				HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
			else
				HumanoidRootPart = nil
			end

			local v720 = nil
			local v721 = FindCampfire()

			if v721 then
				local v722 = v721.PrimaryPart or v721:FindFirstChildWhichIsA("BasePart")

				v720 = v722 and v722.Position
			end

			local v723 = v720 or HumanoidRootPart and HumanoidRootPart.Position

			if v723 then
				local t14 = {}
				local t15 = {}

				for _, v in ipairs(u147.chests) do
					if not t15[v] and v and v.Parent and u146(v) then
						t15[v] = true
						t14[#t14 + 1] = v
					end
				end

				for _, descendant in ipairs(workspace:GetDescendants()) do
					if not t15[descendant] and descendant and descendant.Parent and u146(descendant) then
						t15[descendant] = true
						t14[#t14 + 1] = descendant
					end
				end

				if #t14 ~= 0 then
					u145("🎁 Chests", "Looting " .. #t14 .. " chest(s) → camp…", 3, "info")

					local Items = workspace:FindFirstChild("Items")
					local n3 = 0
					local t16 = {}

					for _, v in ipairs(t14) do
						if v and v.Parent then
							local v737 = v.PrimaryPart or (v:IsA("BasePart") and v or v:FindFirstChildWhichIsA("BasePart"))
							local v738 = v737 and v737.Position

							if v738 then
								Items = Items and (Items.Parent and Items) or workspace:FindFirstChild("Items")

								local t17 = {}

								if Items then
									for _, child in ipairs(Items:GetChildren()) do
										t17[child] = true
									end
								end

								local Character3 = u144.Character
								local HumanoidRootPart3

								if Character3 then
									HumanoidRootPart3 = Character3:FindFirstChild("HumanoidRootPart")
								else
									HumanoidRootPart3 = nil
								end

								if HumanoidRootPart3 then
									HumanoidRootPart3.CFrame = CFrame.new(v738) + Vector3.new(0, 3, 0)
								end

								task.wait(0.15)

								local v744 = false

								if RequestOpenItemChest then
									local _pcall = pcall
									local u746 = RequestOpenItemChest
									local u747 = v

									pcall(function()
										u746:FireServer(u747)
									end)
									v744 = true
								end

								if not v744 then
									for _, descendant in ipairs(v:GetDescendants()) do
										if descendant:IsA("ProximityPrompt") then
											local _pcall = pcall
											local u751 = descendant

											pcall(function()
												fireproximityprompt(u751)
											end)
											v744 = true

											break
										end
									end
								end

								if v744 then
									n3 = n3 + 1
									task.wait(0.55)

									if Items and Items.Parent then
										local n4 = 0

										for _, child in ipairs(Items:GetChildren()) do
											if child and child.Parent and not t17[child] and not u146(child) then
												local Owner = child:GetAttribute("Owner")

												if Owner == nil or Owner == u144.UserId then
													local v756 = child.PrimaryPart
														or (child:IsA("BasePart") and child or child:FindFirstChildWhichIsA("BasePart"))

													if v756 and (v756.Position - v738).Magnitude <= 60 then
														t16[#t16 + 1] = child

														if not u103 or not u103.Parent then
															local RequestStartDraggingItem = u142.RequestStartDraggingItem

															if not RequestStartDraggingItem or not RequestStartDraggingItem.Parent then
																RequestStartDraggingItem = u143:FindFirstChild("RequestStartDraggingItem", true)
																u142.RequestStartDraggingItem = RequestStartDraggingItem
															end

															u103 = RequestStartDraggingItem
														end

														if u103 then
															local _pcall = pcall
															local u759 = child

															pcall(function()
																u103:FireServer(u759)
															end)
														end
														local cFrame = CFrame.new(v723)
														local v762 = #t16
														local v763 = v762 * 2.3999632
														local v764 = 3 + math.sqrt(v762) * 2.6

														u148(child, cFrame * CFrame.new(math.cos(v763) * v764, 3, math.sin(v763) * v764))
														n4 = n4 + 1

														if n4 % 8 == 0 then
															task.wait(0.03)
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end

					local Character4 = u144.Character
					local HumanoidRootPart4

					if Character4 then
						HumanoidRootPart4 = Character4:FindFirstChild("HumanoidRootPart")
					else
						HumanoidRootPart4 = nil
					end

					if HumanoidRootPart4 then
						HumanoidRootPart4.CFrame = CFrame.new(v723) + Vector3.new(0, 3, 0)
					end

					task.wait(0.1)

					local n5 = 0

					for i, v in ipairs(t16) do
						if v and v.Parent then
							local cFrame = CFrame.new(v723)
							local v772 = i * 2.3999632
							local v773 = 3 + math.sqrt(i) * 2.6

							u148(v, cFrame * CFrame.new(math.cos(v772) * v773, 3, math.sin(v772) * v773))
							u149(v)
							n5 = n5 + 1

							if i % 10 == 0 then
								task.wait(0.03)
							end
						end
					end

					u145("✅ Chests", n3 .. " opened · " .. n5 .. " item(s) at camp", 5, n3 > 0 and "success" or "error")

					return n3
				end

				u145("⚠\239\184\143 Chests", "No chests found on the map", 3, "error")

				return 0
			end

			u145("⚠\239\184\143 Chests", "No character loaded", 3, "error")

			return 0
		end
	end

	do
		function v166()
			for _, descendant in ipairs(workspace:GetDescendants()) do
				if
					descendant:IsA("Model")
					and (
						descendant:FindFirstChild("OuterTouchZone")
						or descendant:FindFirstChild("CampfireSettings")
						or descendant:FindFirstChild("CampfireEffectModule")
					)
				then
					return descendant
				end
			end

			return nil
		end
		function v167()
			local t18 = {}
			local t19 = {}
			local u784 = t18

			local function v785(p21)
				if p21:IsA("Model") and not t19[p21] then
					t19[p21] = true

					local v1084 = p21.Name:lower()

					if v1084 == "lost child" or v1084:find("lost.*child") or v1084:find("missing.*child") then
						u784[#u784 + 1] = p21
					end

					return
				end
			end

			for _, descendant in ipairs(workspace:GetDescendants()) do
				v785(descendant)
			end

			local Characters = workspace:FindFirstChild("Characters")

			if Characters then
				for _, child in ipairs(Characters:GetChildren()) do
					v785(child)
				end
			end

			return t18
		end

		local u168 = t3
		local u169 = ReplicatedStorage
		local u170 = LocalPlayer
		local u171 = v166
		local u172 = v167

		function u173()
			local RequestBagStoreItem = u168.RequestBagStoreItem

			if not RequestBagStoreItem or not RequestBagStoreItem.Parent then
				RequestBagStoreItem = u169:FindFirstChild("RequestBagStoreItem", true)
				u168.RequestBagStoreItem = RequestBagStoreItem
			end

			if RequestBagStoreItem then
				local u792 = nil
				local Character = u170.Character

				if Character then
					for _, child in ipairs(Character:GetChildren()) do
						if child:IsA("Tool") and (child.Name:lower():find("sack") or child.Name:lower():find("bag")) then
							u792 = child

							break
						end
					end
				end

				if not u792 then
					local Character5 = u170.Character

					if Character5 then
						local ToolHandle = Character5:FindFirstChild("ToolHandle")

						if ToolHandle then
							local OriginalItem = ToolHandle:FindFirstChild("OriginalItem")

							u792 = OriginalItem and OriginalItem.Value or nil
						else
							u792 = nil
						end
					else
						u792 = nil
					end

					if u792 and not u792.Name:lower():find("sack") and not u792.Name:lower():find("bag") then
						u792 = nil
					end
				end

				if u792 then
					local RequestBagDropItem = u168.RequestBagDropItem

					if not RequestBagDropItem or not RequestBagDropItem.Parent then
						RequestBagDropItem = u169:FindFirstChild("RequestBagDropItem", true)
						u168.RequestBagDropItem = RequestBagDropItem
					end

					local n6 = 0
					local v801 = u171()

					for _, v in ipairs((u172())) do
						if v and v.Parent then
							local vParent = v.Parent
							local TempStorage = u169:FindFirstChild("TempStorage")

							if TempStorage then
								local _pcall = pcall
								local u807 = v
								local u808 = TempStorage

								pcall(function()
									u807.Parent = u808
								end)
							end

							local _pcall = pcall
							local u810 = RequestBagStoreItem
							local u811 = v
							local v812, v813 = pcall(function()
								return u810:InvokeServer(u792, u811)
							end)

							if not v812 or type(v813) ~= "table" or not v813.Success then
								local u815 = v
								local u816 = vParent

								pcall(function()
									u815.Parent = u816
								end)
							else
								n6 = n6 + 1
								task.wait(0.3)

								if RequestBagDropItem and v801 then
									local v817 = v801.PrimaryPart or v801:FindFirstChildWhichIsA("BasePart")

									if v817 then
										local Position = v817.Position
										local Character6 = u170.Character
										local HumanoidRootPart

										if Character6 then
											HumanoidRootPart = Character6:FindFirstChild("HumanoidRootPart")
										else
											HumanoidRootPart = nil
										end

										if HumanoidRootPart then
											HumanoidRootPart.CFrame = CFrame.new(Position) + Vector3.new(0, 3, 0)
										end

										task.wait(0.2)
										local u822 = RequestBagDropItem

										pcall(function()
											u822:FireServer()
										end)
									end
								end
							end

							task.wait(0.2)
						end
					end

					return n6
				end

				return 0
			end

			return 0
		end

		function v179()
			for _, descendant in ipairs(workspace:GetDescendants()) do
				if descendant.Name == "RH_ESP" then
					local _pcall = pcall
					local u834 = descendant

					pcall(function()
						u834:Destroy()
					end)
				end
			end
		end

		u180 = nil
		n7 = 0
	end

	local u183 = Players
	local u184 = LocalPlayer

	local function u185(p22, p23, p24)
		if p22 and p22.Parent then
			local RH_ESP = p22:FindFirstChild("RH_ESP")

			if not p24 then
				if RH_ESP then
					RH_ESP:Destroy()
				end

				return
			end

			if not RH_ESP then
				local Highlight = Instance.new("Highlight")

				Highlight.Name = "RH_ESP"
				Highlight.FillColor = p23
				Highlight.OutlineColor = p23
				Highlight.FillTransparency = 0.65
				Highlight.OutlineTransparency = 0
				Highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				Highlight.Parent = p22

				return
			end

			RH_ESP.FillColor = p23
			RH_ESP.OutlineColor = p23

			return
		end
	end

	local u186 = t2
	local u187 = v82
	local u188 = t4
	local u189 = t5
	local u190 = t9

	function v191()
		for _, player in ipairs(u183:GetPlayers()) do
			if player ~= u184 and player.Character then
				u185(player.Character, Color3.fromRGB(40, 130, 255), u186.ESPPlayers)
			end
		end

		local Characters = workspace:FindFirstChild("Characters")

		if Characters then
			for _, child in ipairs(Characters:GetChildren()) do
				if child:IsA("Model") and not u183:GetPlayerFromCharacter(child) and child:FindFirstChildWhichIsA("Humanoid") then
					local childName = child.Name

					if (childName or ""):lower():find("deer", 1, true) == nil then
						if not u187(childName, u188) then
							if u187(childName, u189) then
								u185(child, Color3.fromRGB(120, 230, 120), u186.ESPAnimals)
							end
						else
							u185(child, Color3.fromRGB(255, 50, 50), u186.ESPEnemies)
						end
					else
						u185(child, Color3.fromRGB(170, 60, 255), u186.ESPDeer)
					end
				end
			end
		end

		local Items = workspace:FindFirstChild("Items")

		if Items then
			for _, child in ipairs(Items:GetChildren()) do
				u185(child, Color3.fromRGB(60, 220, 90), u186.ESPItems)
			end
		end

		for _, v in ipairs(u190.chests) do
			u185(v, Color3.fromRGB(255, 210, 0), u186.ESPChests)
		end
	end
	local u202 = nil

	local u203 = t2
	local u204 = LocalPlayer

	function v205()
		u203.FlyEnabled = false

		if u202 then
			u202:Disconnect()
			u202 = nil
		end

		local Character = u204.Character

		if Character then
			local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

			if HumanoidRootPart then
				local RH_FlyBG = HumanoidRootPart:FindFirstChild("RH_FlyBG")

				if RH_FlyBG then
					RH_FlyBG:Destroy()
				end

				local RH_FlyBA = HumanoidRootPart:FindFirstChild("RH_FlyBA")

				if RH_FlyBA then
					RH_FlyBA:Destroy()
				end
			end

			local Humanoid = Character:FindFirstChild("Humanoid")

			if Humanoid then
				Humanoid.PlatformStand = false
			end

			return
		end
	end

	local u206 = v205
	local u207 = t2
	local u208 = LocalPlayer
	local u209 = RunService
	local u210 = UserInputService

	function v211()
		u206()
		u207.FlyEnabled = true

		local Character = u208.Character

		if Character then
			local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

			if HumanoidRootPart then
				local Humanoid = Character:FindFirstChild("Humanoid")

				if Humanoid then
					Humanoid.PlatformStand = true

					local BodyGyro = Instance.new("BodyGyro", HumanoidRootPart)

					BodyGyro.Name = "RH_FlyBG"
					BodyGyro.MaxTorque = Vector3.new(9000000000, 9000000000, 9000000000)
					BodyGyro.P = 90000
					BodyGyro.D = 1000

					local BodyVelocity = Instance.new("BodyVelocity", HumanoidRootPart)

					BodyVelocity.Name = "RH_FlyBA"
					BodyVelocity.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
					BodyVelocity.Velocity = Vector3.zero

					local CurrentCamera = workspace.CurrentCamera
					local Heartbeat = u209.Heartbeat
					local u861 = CurrentCamera
					local u862 = BodyGyro
					local u863 = HumanoidRootPart

					u202 = Heartbeat:Connect(function()
						if u207.FlyEnabled then
							local zero = Vector3.zero

							if u210:IsKeyDown(Enum.KeyCode.W) then
								zero = zero + u861.CFrame.LookVector
							end

							if u210:IsKeyDown(Enum.KeyCode.S) then
								zero = zero - u861.CFrame.LookVector
							end

							if u210:IsKeyDown(Enum.KeyCode.A) then
								zero = zero - u861.CFrame.RightVector
							end

							if u210:IsKeyDown(Enum.KeyCode.D) then
								zero = zero + u861.CFrame.RightVector
							end

							if u210:IsKeyDown(Enum.KeyCode.Space) then
								zero = zero + Vector3.new(0, 1, 0)
							end

							if u210:IsKeyDown(Enum.KeyCode.LeftShift) then
								zero = zero - Vector3.new(0, 1, 0)
							end

							BodyVelocity.Velocity = zero.Magnitude > 0 and zero.Unit * u207.FlySpeed or Vector3.zero

							if zero.Magnitude > 0 then
								u862.CFrame = CFrame.lookAt(u863.Position, u863.Position + u861.CFrame.LookVector)
							end

							return
						end

						u206()
					end)

					return
				end

				return
			end

			return
		end
	end
end

local u212 = t2
local u213 = v205
local u214 = v179
local u215 = LocalPlayer
local u216 = v68
local v217 = v31:Window({
	Title = "Ronin Hub",
	Subtitle = "99 Nights in the Forest",
	Width = 720,
	Height = 480,
	ToggleKey = Enum.KeyCode.RightControl,
})

repeat
	if g218 or isfile and readfile and isfile("RoninHub/Settings/UI.txt") then
		if not g218 then
			v219, v220 = pcall(readfile, "RoninHub/Settings/UI.txt")
		end

		if g218 or v219 then
			local u269, u296, v458

			do
				local v362, t92

				do
					local v366

					do
						do
							do
								local v297

								do
									local t44, t45, t47, t48

									do
										local t39, t40, t41

										do
											do
												local v270

												do
													do
														local v225

														do
															do
																do
																	do
																		local t20

																		do
																			do
																				g218 = false

																				local v221 = v220 and (v220:gsub("%s+", "") ~= "" and v220:gsub("%s+", ""))
																					or "Dark"

																				if v221 ~= "Dark" then
																					local _pcall = pcall
																					local u223 = v31
																					local u224 = v221

																					pcall(function()
																						u223:SetTheme(u224)
																					end)
																				end
																			end

																			v225 = v217:Tab("Farm", "farm")
																			v225:Section("Auto Farm")
																			v225:Label(
																				"Equip your axe → destroys resources map-wide with your tool. New trees are detected instantly.  [J]"
																			)
																			t20 = {
																				Text = "🪓 Auto Farm",
																				Default = false,
																				Tooltip = "Uses equipped axe on all resources across the map",
																			}

																			local u227 = t2
																			local u228 = LocalPlayer
																			local u229 = t9
																			local u230 = v91
																			local u231 = t3
																			local u232 = ReplicatedStorage
																			local u233 = v64
																			local u234 = v68

																			function t20.Callback(p25)
																				u227.AutoFarm = p25
																				u227.V.AutoFarm = u227.V.AutoFarm + 1

																				if not p25 then
																					u234("🪓 Auto Farm", "OFF", 2)

																					return
																				end

																				local AutoFarm = u227.V.AutoFarm
																				local spawn = task.spawn
																				local u872 = AutoFarm

																				spawn(function()
																					local g1139 = nil
																					local g1141 = nil
																					local g1148 = nil
																					local g1150 = nil
																					local v1140 = nil
																					local g1167 = nil

																					while u872 == u227.V.AutoFarm do
																						local Character = u228.Character
																						local v1136

																						if Character then
																							local ToolHandle = Character:FindFirstChild("ToolHandle")

																							if ToolHandle then
																								local OriginalItem = ToolHandle:FindFirstChild("OriginalItem")

																								v1136 = OriginalItem and OriginalItem.Value or nil
																							else
																								v1136 = nil
																							end
																						else
																							v1136 = nil
																						end

																						if not v1136 then
																							u234("🪓 Auto Farm", "Equip your axe / tool first!", 3, "error")

																							if not u233(2, "AutoFarm", u872) then
																								return
																							end
																						else
																							local v1137 = v1136:GetAttribute("WeaponResourceDamage") or 25
																							local v1138 = u227.FarmMode == "BETA"

																							repeat
																								if g1139 or not v1138 then
																									g1139 = false
																									v1140 = v1137
																									g1141 = true
																								end

																								if g1141 then
																									break
																								end

																								local v1142 = v1137 * u227.FarmMultiplier

																								v1140 = math.max(v1142, 1)

																								if not v1140 then
																									g1139 = true
																								end
																							until not g1139

																							g1141 = false

																							local Character7 = u228.Character
																							local HumanoidRootPart

																							if Character7 then
																								HumanoidRootPart = Character7:FindFirstChild("HumanoidRootPart")
																							else
																								HumanoidRootPart = nil
																							end

																							local v1145 = HumanoidRootPart and HumanoidRootPart.Position

																							for _, v in ipairs(u229.resources) do
																								if u872 ~= u227.V.AutoFarm then
																									break
																								end

																								if
																									not v
																									or not v.Parent
																									or v:GetAttribute("Destroyed") ~= nil
																								then
																									g1148 = true
																								end

																								if not g1148 then
																									local v1149 = u230(v)

																									if
																										v1149 and not u227.FarmBigTrees
																										or not v1149 and not u227.FarmSmallTrees
																									then
																										g1148 = true
																									end

																									if not g1148 then
																										repeat
																											if
																												g1150 or (not (u227.FarmRange > 0) or not v1145)
																											then
																												g1150 = false

																												if not v1138 then
																													local v1151 = v:GetAttribute("Health")
																														or 999

																													for _ = 1, u227.FarmHits do
																														v1151 = v1151 - v1140

																														local v1153 = v1151 <= 0
																														local Character8 = u228.Character
																														local HumanoidRootPart5

																														if Character8 then
																															HumanoidRootPart5 =
																																Character8:FindFirstChild(
																																	"HumanoidRootPart"
																																)
																														else
																															HumanoidRootPart5 = nil
																														end

																														if HumanoidRootPart5 then
																															local ToolDamageObject =
																																u231.ToolDamageObject

																															if
																																not ToolDamageObject
																																or not ToolDamageObject.Parent
																															then
																																ToolDamageObject =
																																	u232:FindFirstChild(
																																		"ToolDamageObject",
																																		true
																																	)
																																u231.ToolDamageObject =
																																	ToolDamageObject
																															end

																															if ToolDamageObject then
																																local _pcall = pcall
																																local u1158 = ToolDamageObject
																																local u1159 = v
																																local u1160 = v1136
																																local u1161 = v1140
																																local u1162 = HumanoidRootPart5
																																local u1163 = v1153

																																pcall(function()
																																	u1158:InvokeServer(
																																		u1159,
																																		u1160,
																																		u1161,
																																		u1162.CFrame,
																																		u1163 and true or false
																																	)
																																end)
																															end
																														end

																														if v1153 then
																															break
																														end
																													end
																												else
																													local n8 = 1
																													local FarmHits = u227.FarmHits
																													local n9 = 1

																													if false then
																														if FarmHits <= 1 then
																															g1167 = true
																														end

																														if not g1167 then
																															g1148 = true
																														end
																													end

																													if not g1148 then
																														if not g1167 then
																															if not (n8 <= FarmHits) then
																																g1148 = true
																															end
																														end

																														if not g1148 then
																															repeat
																																g1167 = false

																																repeat
																																	local Character9 =
																																		u228.Character
																																	local HumanoidRootPart6

																																	if Character9 then
																																		HumanoidRootPart6 =
																																			Character9:FindFirstChild(
																																				"HumanoidRootPart"
																																			)
																																	else
																																		HumanoidRootPart6 = nil
																																	end

																																	if HumanoidRootPart6 then
																																		local ToolDamageObject =
																																			u231.ToolDamageObject

																																		if
																																			not ToolDamageObject
																																			or not ToolDamageObject.Parent
																																		then
																																			ToolDamageObject =
																																				u232:FindFirstChild(
																																					"ToolDamageObject",
																																					true
																																				)
																																			u231.ToolDamageObject =
																																				ToolDamageObject
																																		end

																																		if ToolDamageObject then
																																			local _pcall = pcall
																																			local u1172 =
																																				ToolDamageObject
																																			local u1173 = v
																																			local u1174 = v1136
																																			local u1175 = v1140
																																			local u1176 =
																																				HumanoidRootPart6
																																			local u1177 = true

																																			pcall(function()
																																				u1172:InvokeServer(
																																					u1173,
																																					u1174,
																																					u1175,
																																					u1176.CFrame,
																																					u1177
																																							and true
																																						or false
																																				)
																																			end)
																																		end
																																	end

																																	n8 = n8 + n9

																																	if not (n9 > 0) then
																																		if FarmHits <= n8 then
																																			g1167 = true
																																		end

																																		if not g1167 then
																																			break
																																		end
																																	end

																																	if g1167 then
																																		break
																																	end
																																until not (n8 <= FarmHits)
																															until not g1167
																														end
																													end
																												end
																											else
																												local v1178 = v.PrimaryPart
																													or v:FindFirstChildWhichIsA("BasePart")

																												if
																													not v1178
																													or not (
																														(v1178.Position - v1145).Magnitude
																														> u227.FarmRange
																													)
																												then
																													g1150 = true
																												end
																											end
																										until not g1150
																									end
																								end

																								g1148 = false
																							end

																							if not u233(u227.FarmInterval, "AutoFarm", u872) then
																								return
																							end
																						end
																					end
																				end)
																				u234("🪓 Auto Farm", "ON", 2, "success")
																			end
																		end

																		v225:Toggle(t20)
																		v225:Section("Damage Mode")
																		v225:Label(
																			"Normal = your tool's real damage (legit-paced). BETA = old damage × multiplier (faster, less reliable)."
																		)
																		local u235 = nil

																		local t21 = {
																			Text = "🌿 Normal",
																			Default = t2.FarmMode == "Normal",
																			Tooltip = "Send the tool's true resource damage — chops at the game's normal rate",
																		}
																		local u237 = t2
																		local u238 = v12
																		local u239 = HttpService

																		function t21.Callback(p26)
																			if not p26 then
																				if u237.FarmMode == "Normal" then
																					u237.FarmMode = "BETA"

																					if u235 then
																						u235:Set(true, true)
																					end
																				end
																			else
																				u237.FarmMode = "Normal"

																				if u235 then
																					u235:Set(false, true)
																				end
																			end

																			if not u36 then
																				u36 = true
																				task.delay(1.5, function()
																					u36 = false
																					pcall(function()
																						local json = u239:JSONEncode({
																							FarmInterval = u237.FarmInterval,
																							FarmHits = u237.FarmHits,
																							FarmMultiplier = u237.FarmMultiplier,
																							FarmRange = u237.FarmRange,
																							FarmSmallTrees = u237.FarmSmallTrees,
																							FarmBigTrees = u237.FarmBigTrees,
																							FarmMode = u237.FarmMode,
																							AuraInterval = u237.AuraInterval,
																							AuraHits = u237.AuraHits,
																							AuraRange = u237.AuraRange,
																							AttackAnimals = u237.AttackAnimals,
																							BringCat = u237.BringCat,
																							ExploreSpeed = u237.ExploreSpeed,
																							WalkSpeed = u237.WalkSpeed,
																							JumpPower = u237.JumpPower,
																							FlySpeed = u237.FlySpeed,
																							ShowNotifs = u237.ShowNotifs,
																						})

																						if writefile then
																							pcall(writefile, u238, (tostring(json)))
																						end
																					end)
																				end)

																				return
																			end
																		end
																		local u240 = v225:Toggle(t21)

																		local t22 = {
																			Text = "⚡ BETA (multiplier)",
																			Default = t2.FarmMode == "BETA",
																			Tooltip = "Inflate damage by the multiplier below — one-shots resources when the server allows it",
																		}
																		local u242 = t2
																		local u243 = v12
																		local u244 = HttpService

																		function t22.Callback(p27)
																			if not p27 then
																				if u242.FarmMode == "BETA" then
																					u242.FarmMode = "Normal"

																					if u240 then
																						u240:Set(true, true)
																					end
																				end
																			else
																				u242.FarmMode = "BETA"

																				if u240 then
																					u240:Set(false, true)
																				end
																			end

																			if not u36 then
																				u36 = true
																				task.delay(1.5, function()
																					u36 = false
																					pcall(function()
																						local json = u244:JSONEncode({
																							FarmInterval = u242.FarmInterval,
																							FarmHits = u242.FarmHits,
																							FarmMultiplier = u242.FarmMultiplier,
																							FarmRange = u242.FarmRange,
																							FarmSmallTrees = u242.FarmSmallTrees,
																							FarmBigTrees = u242.FarmBigTrees,
																							FarmMode = u242.FarmMode,
																							AuraInterval = u242.AuraInterval,
																							AuraHits = u242.AuraHits,
																							AuraRange = u242.AuraRange,
																							AttackAnimals = u242.AttackAnimals,
																							BringCat = u242.BringCat,
																							ExploreSpeed = u242.ExploreSpeed,
																							WalkSpeed = u242.WalkSpeed,
																							JumpPower = u242.JumpPower,
																							FlySpeed = u242.FlySpeed,
																							ShowNotifs = u242.ShowNotifs,
																						})

																						if writefile then
																							pcall(writefile, u243, (tostring(json)))
																						end
																					end)
																				end)

																				return
																			end
																		end

																		u235 = v225:Toggle(t22)
																	end

																	v225:Section("Tree Categories")

																	local t23 = {
																		Text = "🌲 Small Trees (low tier)",
																		Default = t2.FarmSmallTrees,
																		Tooltip = "Farm normal trees — choppable with basic axe",
																	}
																	local u246 = t2
																	local u247 = v12
																	local u248 = HttpService

																	function t23.Callback(p28)
																		u246.FarmSmallTrees = p28

																		if not u36 then
																			u36 = true
																			task.delay(1.5, function()
																				u36 = false
																				pcall(function()
																					local json = u248:JSONEncode({
																						FarmInterval = u246.FarmInterval,
																						FarmHits = u246.FarmHits,
																						FarmMultiplier = u246.FarmMultiplier,
																						FarmRange = u246.FarmRange,
																						FarmSmallTrees = u246.FarmSmallTrees,
																						FarmBigTrees = u246.FarmBigTrees,
																						FarmMode = u246.FarmMode,
																						AuraInterval = u246.AuraInterval,
																						AuraHits = u246.AuraHits,
																						AuraRange = u246.AuraRange,
																						AttackAnimals = u246.AttackAnimals,
																						BringCat = u246.BringCat,
																						ExploreSpeed = u246.ExploreSpeed,
																						WalkSpeed = u246.WalkSpeed,
																						JumpPower = u246.JumpPower,
																						FlySpeed = u246.FlySpeed,
																						ShowNotifs = u246.ShowNotifs,
																					})

																					if writefile then
																						pcall(writefile, u247, (tostring(json)))
																					end
																				end)
																			end)

																			return
																		end
																	end

																	v225:Toggle(t23)

																	local t24 = {
																		Text = "🌳 Big Trees (high tier)",
																		Default = t2.FarmBigTrees,
																		Tooltip = "Farm large/ancient trees — only enable with a high-tier axe",
																	}
																	local u250 = t2
																	local u251 = v12
																	local u252 = HttpService

																	function t24.Callback(p29)
																		u250.FarmBigTrees = p29

																		if not u36 then
																			u36 = true
																			task.delay(1.5, function()
																				u36 = false
																				pcall(function()
																					local json = u252:JSONEncode({
																						FarmInterval = u250.FarmInterval,
																						FarmHits = u250.FarmHits,
																						FarmMultiplier = u250.FarmMultiplier,
																						FarmRange = u250.FarmRange,
																						FarmSmallTrees = u250.FarmSmallTrees,
																						FarmBigTrees = u250.FarmBigTrees,
																						FarmMode = u250.FarmMode,
																						AuraInterval = u250.AuraInterval,
																						AuraHits = u250.AuraHits,
																						AuraRange = u250.AuraRange,
																						AttackAnimals = u250.AttackAnimals,
																						BringCat = u250.BringCat,
																						ExploreSpeed = u250.ExploreSpeed,
																						WalkSpeed = u250.WalkSpeed,
																						JumpPower = u250.JumpPower,
																						FlySpeed = u250.FlySpeed,
																						ShowNotifs = u250.ShowNotifs,
																					})

																					if writefile then
																						pcall(writefile, u251, (tostring(json)))
																					end
																				end)
																			end)

																			return
																		end
																	end

																	v225:Toggle(t24)
																end

																v225:Divider()
																v225:Section("Settings")

																local t25 = {
																	Text = "Damage Multiplier (BETA only)",
																	Min = 1,
																	Max = 1000,
																	Default = t2.FarmMultiplier,
																	Suffix = "x",
																}
																local u254 = t2
																local u255 = v12
																local u256 = HttpService

																function t25.Callback(p30)
																	u254.FarmMultiplier = p30

																	if not u36 then
																		u36 = true
																		task.delay(1.5, function()
																			u36 = false
																			pcall(function()
																				local json = u256:JSONEncode({
																					FarmInterval = u254.FarmInterval,
																					FarmHits = u254.FarmHits,
																					FarmMultiplier = u254.FarmMultiplier,
																					FarmRange = u254.FarmRange,
																					FarmSmallTrees = u254.FarmSmallTrees,
																					FarmBigTrees = u254.FarmBigTrees,
																					FarmMode = u254.FarmMode,
																					AuraInterval = u254.AuraInterval,
																					AuraHits = u254.AuraHits,
																					AuraRange = u254.AuraRange,
																					AttackAnimals = u254.AttackAnimals,
																					BringCat = u254.BringCat,
																					ExploreSpeed = u254.ExploreSpeed,
																					WalkSpeed = u254.WalkSpeed,
																					JumpPower = u254.JumpPower,
																					FlySpeed = u254.FlySpeed,
																					ShowNotifs = u254.ShowNotifs,
																				})

																				if writefile then
																					pcall(writefile, u255, (tostring(json)))
																				end
																			end)
																		end)

																		return
																	end
																end

																v225:Slider(t25)

																local t26 = {
																	Text = "Hits Per Cycle",
																	Min = 1,
																	Max = 10,
																	Default = t2.FarmHits,
																}
																local u258 = t2
																local u259 = v12
																local u260 = HttpService

																function t26.Callback(p31)
																	u258.FarmHits = p31

																	if not u36 then
																		u36 = true
																		task.delay(1.5, function()
																			u36 = false
																			pcall(function()
																				local json = u260:JSONEncode({
																					FarmInterval = u258.FarmInterval,
																					FarmHits = u258.FarmHits,
																					FarmMultiplier = u258.FarmMultiplier,
																					FarmRange = u258.FarmRange,
																					FarmSmallTrees = u258.FarmSmallTrees,
																					FarmBigTrees = u258.FarmBigTrees,
																					FarmMode = u258.FarmMode,
																					AuraInterval = u258.AuraInterval,
																					AuraHits = u258.AuraHits,
																					AuraRange = u258.AuraRange,
																					AttackAnimals = u258.AttackAnimals,
																					BringCat = u258.BringCat,
																					ExploreSpeed = u258.ExploreSpeed,
																					WalkSpeed = u258.WalkSpeed,
																					JumpPower = u258.JumpPower,
																					FlySpeed = u258.FlySpeed,
																					ShowNotifs = u258.ShowNotifs,
																				})

																				if writefile then
																					pcall(writefile, u259, (tostring(json)))
																				end
																			end)
																		end)

																		return
																	end
																end

																v225:Slider(t26)
															end

															local t27 = {
																Text = "Farm Interval",
																Min = 0.1,
																Max = 2,
																Decimals = 2,
																Default = t2.FarmInterval,
																Suffix = "s",
															}
															local u262 = t2
															local u263 = v12
															local u264 = HttpService

															function t27.Callback(p32)
																u262.FarmInterval = p32

																if not u36 then
																	u36 = true
																	task.delay(1.5, function()
																		u36 = false
																		pcall(function()
																			local json = u264:JSONEncode({
																				FarmInterval = u262.FarmInterval,
																				FarmHits = u262.FarmHits,
																				FarmMultiplier = u262.FarmMultiplier,
																				FarmRange = u262.FarmRange,
																				FarmSmallTrees = u262.FarmSmallTrees,
																				FarmBigTrees = u262.FarmBigTrees,
																				FarmMode = u262.FarmMode,
																				AuraInterval = u262.AuraInterval,
																				AuraHits = u262.AuraHits,
																				AuraRange = u262.AuraRange,
																				AttackAnimals = u262.AttackAnimals,
																				BringCat = u262.BringCat,
																				ExploreSpeed = u262.ExploreSpeed,
																				WalkSpeed = u262.WalkSpeed,
																				JumpPower = u262.JumpPower,
																				FlySpeed = u262.FlySpeed,
																				ShowNotifs = u262.ShowNotifs,
																			})

																			if writefile then
																				pcall(writefile, u263, (tostring(json)))
																			end
																		end)
																	end)

																	return
																end
															end

															v225:Slider(t27)

															local t28 = {
																Text = "Range (0 = whole map)",
																Min = 0,
																Max = 2000,
																Default = t2.FarmRange,
																Suffix = " st",
															}
															local u266 = t2
															local u267 = v12
															local u268 = HttpService

															function t28.Callback(p33)
																u266.FarmRange = p33

																if not u36 then
																	u36 = true
																	task.delay(1.5, function()
																		u36 = false
																		pcall(function()
																			local json = u268:JSONEncode({
																				FarmInterval = u266.FarmInterval,
																				FarmHits = u266.FarmHits,
																				FarmMultiplier = u266.FarmMultiplier,
																				FarmRange = u266.FarmRange,
																				FarmSmallTrees = u266.FarmSmallTrees,
																				FarmBigTrees = u266.FarmBigTrees,
																				FarmMode = u266.FarmMode,
																				AuraInterval = u266.AuraInterval,
																				AuraHits = u266.AuraHits,
																				AuraRange = u266.AuraRange,
																				AttackAnimals = u266.AttackAnimals,
																				BringCat = u266.BringCat,
																				ExploreSpeed = u266.ExploreSpeed,
																				WalkSpeed = u266.WalkSpeed,
																				JumpPower = u266.JumpPower,
																				FlySpeed = u266.FlySpeed,
																				ShowNotifs = u266.ShowNotifs,
																			})

																			if writefile then
																				pcall(writefile, u267, (tostring(json)))
																			end
																		end)
																	end)

																	return
																end
															end

															v225:Slider(t28)
														end

														v225:Divider()
														v225:Section("Stats")
														u269 = v225:Stat({
															Text = "Resources Loaded",
															Value = "0",
														})
														v270 = v217:Tab("Combat", "combat")
														v270:Section("Kill Aura")
														v270:Label(
															"Equip a weapon/axe → attacks all hostile creatures map-wide. Deer & traders are never touched.  [K]"
														)

														local t29 = {
															Text = "⚔\239\184\143 Kill Aura",
															Default = false,
															Tooltip = "Tool-based attack on all hostile enemies",
														}
														local u272 = t2
														local u273 = LocalPlayer
														local u274 = v89
														local u275 = t3
														local u276 = ReplicatedStorage
														local u277 = v64
														local u278 = v68

														function t29.Callback(p34)
															u272.KillAura = p34
															u272.V.KillAura = u272.V.KillAura + 1

															if not p34 then
																u278("⚔\239\184\143 Kill Aura", "OFF", 2)

																return
															end

															local KillAura = u272.V.KillAura
															local spawn = task.spawn
															local u884 = KillAura

															spawn(function()
																while u884 == u272.V.KillAura do
																	local Character = u273.Character
																	local v1182

																	if Character then
																		local ToolHandle = Character:FindFirstChild("ToolHandle")

																		if ToolHandle then
																			local OriginalItem = ToolHandle:FindFirstChild("OriginalItem")

																			v1182 = OriginalItem and OriginalItem.Value or nil
																		else
																			v1182 = nil
																		end
																	else
																		v1182 = nil
																	end

																	if not v1182 then
																		u278("⚔\239\184\143 Kill Aura", "Equip your weapon / axe first!", 3, "error")

																		if not u277(2, "KillAura", u884) then
																			return
																		end
																	else
																		for _, v in ipairs((u274())) do
																			if u884 ~= u272.V.KillAura then
																				break
																			end

																			if v.model and v.model.Parent and v.hum.Health > 0 then
																				for _ = 1, u272.AuraHits do
																					local model = v.model
																					local Character10 = u273.Character
																					local HumanoidRootPart

																					if Character10 then
																						HumanoidRootPart = Character10:FindFirstChild("HumanoidRootPart")
																					else
																						HumanoidRootPart = nil
																					end

																					if HumanoidRootPart then
																						local ToolDamageObject = u275.ToolDamageObject

																						if not ToolDamageObject or not ToolDamageObject.Parent then
																							ToolDamageObject = u276:FindFirstChild("ToolDamageObject", true)
																							u275.ToolDamageObject = ToolDamageObject
																						end

																						if ToolDamageObject then
																							local _pcall = pcall
																							local u1191 = ToolDamageObject
																							local u1192 = model
																							local u1193 = v1182
																							local n10 = 999999
																							local u1195 = HumanoidRootPart
																							local u1196 = true

																							pcall(function()
																								u1191:InvokeServer(
																									u1192,
																									u1193,
																									n10,
																									u1195.CFrame,
																									u1196 and true or false
																								)
																							end)
																						end
																					end
																				end
																			end
																		end

																		if not u277(u272.AuraInterval, "KillAura", u884) then
																			return
																		end
																	end
																end
															end)
															u278("⚔\239\184\143 Kill Aura", "ON", 2, "success")
														end

														v270:Toggle(t29)
													end

													local t30 = {
														Text = "Hits Per Cycle",
														Min = 1,
														Max = 15,
														Default = t2.AuraHits,
														Tooltip = "Hits per enemy per pass",
													}
													local u280 = t2
													local u281 = v12
													local u282 = HttpService

													function t30.Callback(p35)
														u280.AuraHits = p35

														if not u36 then
															u36 = true
															task.delay(1.5, function()
																u36 = false
																pcall(function()
																	local json = u282:JSONEncode({
																		FarmInterval = u280.FarmInterval,
																		FarmHits = u280.FarmHits,
																		FarmMultiplier = u280.FarmMultiplier,
																		FarmRange = u280.FarmRange,
																		FarmSmallTrees = u280.FarmSmallTrees,
																		FarmBigTrees = u280.FarmBigTrees,
																		FarmMode = u280.FarmMode,
																		AuraInterval = u280.AuraInterval,
																		AuraHits = u280.AuraHits,
																		AuraRange = u280.AuraRange,
																		AttackAnimals = u280.AttackAnimals,
																		BringCat = u280.BringCat,
																		ExploreSpeed = u280.ExploreSpeed,
																		WalkSpeed = u280.WalkSpeed,
																		JumpPower = u280.JumpPower,
																		FlySpeed = u280.FlySpeed,
																		ShowNotifs = u280.ShowNotifs,
																	})

																	if writefile then
																		pcall(writefile, u281, (tostring(json)))
																	end
																end)
															end)

															return
														end
													end

													v270:Slider(t30)

													local t31 = {
														Text = "Attack Interval",
														Min = 0.05,
														Max = 2,
														Decimals = 2,
														Default = t2.AuraInterval,
														Suffix = "s",
													}
													local u284 = t2
													local u285 = v12
													local u286 = HttpService

													function t31.Callback(p36)
														u284.AuraInterval = p36

														if not u36 then
															u36 = true
															task.delay(1.5, function()
																u36 = false
																pcall(function()
																	local json = u286:JSONEncode({
																		FarmInterval = u284.FarmInterval,
																		FarmHits = u284.FarmHits,
																		FarmMultiplier = u284.FarmMultiplier,
																		FarmRange = u284.FarmRange,
																		FarmSmallTrees = u284.FarmSmallTrees,
																		FarmBigTrees = u284.FarmBigTrees,
																		FarmMode = u284.FarmMode,
																		AuraInterval = u284.AuraInterval,
																		AuraHits = u284.AuraHits,
																		AuraRange = u284.AuraRange,
																		AttackAnimals = u284.AttackAnimals,
																		BringCat = u284.BringCat,
																		ExploreSpeed = u284.ExploreSpeed,
																		WalkSpeed = u284.WalkSpeed,
																		JumpPower = u284.JumpPower,
																		FlySpeed = u284.FlySpeed,
																		ShowNotifs = u284.ShowNotifs,
																	})

																	if writefile then
																		pcall(writefile, u285, (tostring(json)))
																	end
																end)
															end)

															return
														end
													end

													v270:Slider(t31)
												end

												local t32 = {
													Text = "Range (0 = whole map)",
													Min = 0,
													Max = 2000,
													Default = t2.AuraRange,
													Suffix = " st",
												}
												local u288 = t2
												local u289 = v12
												local u290 = HttpService

												function t32.Callback(p37)
													u288.AuraRange = p37

													if not u36 then
														u36 = true
														task.delay(1.5, function()
															u36 = false
															pcall(function()
																local json = u290:JSONEncode({
																	FarmInterval = u288.FarmInterval,
																	FarmHits = u288.FarmHits,
																	FarmMultiplier = u288.FarmMultiplier,
																	FarmRange = u288.FarmRange,
																	FarmSmallTrees = u288.FarmSmallTrees,
																	FarmBigTrees = u288.FarmBigTrees,
																	FarmMode = u288.FarmMode,
																	AuraInterval = u288.AuraInterval,
																	AuraHits = u288.AuraHits,
																	AuraRange = u288.AuraRange,
																	AttackAnimals = u288.AttackAnimals,
																	BringCat = u288.BringCat,
																	ExploreSpeed = u288.ExploreSpeed,
																	WalkSpeed = u288.WalkSpeed,
																	JumpPower = u288.JumpPower,
																	FlySpeed = u288.FlySpeed,
																	ShowNotifs = u288.ShowNotifs,
																})

																if writefile then
																	pcall(writefile, u289, (tostring(json)))
																end
															end)
														end)

														return
													end
												end

												v270:Slider(t32)
												v270:Divider()
												v270:Section("Target Filters")

												local t33 = {
													Text = "🐰 Attack Animals",
													Default = t2.AttackAnimals,
													Tooltip = "Include passive animals. Deer is always protected.",
												}
												local u292 = t2
												local u293 = v12
												local u294 = HttpService
												local u295 = v68

												function t33.Callback(p38)
													u292.AttackAnimals = p38

													if not u36 then
														u36 = true
														task.delay(1.5, function()
															u36 = false
															pcall(function()
																local json = u294:JSONEncode({
																	FarmInterval = u292.FarmInterval,
																	FarmHits = u292.FarmHits,
																	FarmMultiplier = u292.FarmMultiplier,
																	FarmRange = u292.FarmRange,
																	FarmSmallTrees = u292.FarmSmallTrees,
																	FarmBigTrees = u292.FarmBigTrees,
																	FarmMode = u292.FarmMode,
																	AuraInterval = u292.AuraInterval,
																	AuraHits = u292.AuraHits,
																	AuraRange = u292.AuraRange,
																	AttackAnimals = u292.AttackAnimals,
																	BringCat = u292.BringCat,
																	ExploreSpeed = u292.ExploreSpeed,
																	WalkSpeed = u292.WalkSpeed,
																	JumpPower = u292.JumpPower,
																	FlySpeed = u292.FlySpeed,
																	ShowNotifs = u292.ShowNotifs,
																})

																if writefile then
																	pcall(writefile, u293, (tostring(json)))
																end
															end)
														end)
													end

													u295("🐰 Animals", p38 and "Will be attacked" or "Protected", 2)
												end

												v270:Toggle(t33)
												v270:Divider()
												v270:Section("Stats")
												u296 = v270:Stat({
													Text = "Targets In Reach",
													Value = "0",
												})
												v297 = v217:Tab("Items", "bag")
												v297:Section("Bring Items")
												v297:Label(
													"Claims items (server-side drag) and teleports them to your feet. Chests are never pulled — use Loot All Chests for those."
												)
											end

											local t34 = {}
											local t35 = {}
											local t36 = {
												Text = "🌳 Wood",
												Tooltip = "Logs, planks & firewood",
											}
											local u302 = v130
											local s1 = "Wood"

											function t36.Callback()
												task.spawn(function()
													u302(s1)
												end)
											end

											local t37 = {
												Text = "🔥 Fuel",
												Tooltip = "Coal, charcoal, kindling & chairs",
											}
											local u305 = v130
											local s2 = "Fuel"

											function t37.Callback()
												task.spawn(function()
													u305(s2)
												end)
											end

											local t38 = {
												Text = "🍖 Food",
												Tooltip = "All food items",
											}
											local u308 = v130
											local s3 = "Food"

											function t38.Callback()
												task.spawn(function()
													u308(s3)
												end)
											end

											t35[1] = t36
											t35[2] = t37
											t35[3] = t38
											t34.Buttons = t35
											v297:ButtonGroup(t34)
											t39 = {}
											t40 = {}
											t41 = {
												Text = "⚙\239\184\143 Metal",
												Tooltip = "Scrap, ore, tires, radios & engines",
											}

											local u313 = v130
											local s4 = "Metal"

											function t41.Callback()
												task.spawn(function()
													u313(s4)
												end)
											end
										end

										local t42 = {
											Text = "🌱 Saplings",
											Tooltip = "Seeds, saplings & flowers",
										}
										local u316 = v130
										local s5 = "Sapling"

										function t42.Callback()
											task.spawn(function()
												u316(s5)
											end)
										end

										local t43 = {
											Text = "🪙 Coins",
											Tooltip = "Loose coins, gems & cash",
										}
										local u319 = v130
										local s6 = "Coins"

										function t43.Callback()
											task.spawn(function()
												u319(s6)
											end)
										end

										t40[1] = t41
										t40[2] = t42
										t40[3] = t43
										t39.Buttons = t40
										v297:ButtonGroup(t39)
										t44 = {}
										t45 = {}

										local t46 = {
											Text = "💊 Heal",
											Tooltip = "Bandages, medkits & medicine",
										}
										local u324 = v130
										local s7 = "Heal"

										function t46.Callback()
											task.spawn(function()
												u324(s7)
											end)
										end

										t47 = {
											Text = "🔫 Guns",
											Tooltip = "Revolvers, rifles & firearms",
										}

										local u327 = v130
										local s8 = "Guns"

										function t47.Callback()
											task.spawn(function()
												u327(s8)
											end)
										end

										t48 = {
											Text = "🔧 Tools",
											Tooltip = "Flashlights, hammers & tools",
										}

										local u330 = v130
										local s9 = "Tools"

										function t48.Callback()
											task.spawn(function()
												u330(s9)
											end)
										end

										t45[1] = t46
									end

									t45[2] = t47
									t45[3] = t48
									t44.Buttons = t45
									v297:ButtonGroup(t44)

									local t49 = {}
									local t50 = {}
									local t51 = {
										Text = "🛡\239\184\143 Armor",
										Tooltip = "Leather/iron body, helmets & armor",
									}
									local u335 = v130
									local s10 = "Armor"

									function t51.Callback()
										task.spawn(function()
											u335(s10)
										end)
									end

									local t52 = {
										Text = "🔴 Ammo",
										Tooltip = "Bullets, revolver & rifle ammo",
									}
									local u338 = v130
									local s11 = "Ammo"

									function t52.Callback()
										task.spawn(function()
											u338(s11)
										end)
									end

									local t53 = {
										Text = "📦 ALL",
										Tooltip = "Every item on the map",
									}
									local u341 = v130
									local s12 = "All"

									function t53.Callback()
										task.spawn(function()
											u341(s12)
										end)
									end

									t50[1] = t51
									t50[2] = t52
									t50[3] = t53
									t49.Buttons = t50
									v297:ButtonGroup(t49)
									v297:Divider()
									v297:Section("Chest Loot")
									v297:Label("TPs to each chest, opens it, then gathers the dropped loot into a pile at your campfire.")
									v297:Button({
										Text = "🎁 Loot All Chests → Camp",
										Tooltip = "Open every chest and pile the loot at the campfire",
										Callback = function()
											task.spawn(u150)
										end,
									})
									v297:Divider()
									v297:Section("Auto Bring Loop")

									local t54 = {
										Text = "Auto Category",
										Options = {
											"All",
											"Wood",
											"Fuel",
											"Food",
											"Metal",
											"Sapling",
											"Coins",
											"Heal",
											"Ammo",
											"Guns",
											"Tools",
											"Armor",
										},
										Default = t2.BringCat,
										Tooltip = "Category the auto-loop keeps collecting",
									}
									local u344 = t2
									local u345 = v12
									local u346 = HttpService

									function t54.Callback(p39)
										u344.BringCat = p39

										if not u36 then
											u36 = true
											task.delay(1.5, function()
												u36 = false
												pcall(function()
													local json = u346:JSONEncode({
														FarmInterval = u344.FarmInterval,
														FarmHits = u344.FarmHits,
														FarmMultiplier = u344.FarmMultiplier,
														FarmRange = u344.FarmRange,
														FarmSmallTrees = u344.FarmSmallTrees,
														FarmBigTrees = u344.FarmBigTrees,
														FarmMode = u344.FarmMode,
														AuraInterval = u344.AuraInterval,
														AuraHits = u344.AuraHits,
														AuraRange = u344.AuraRange,
														AttackAnimals = u344.AttackAnimals,
														BringCat = u344.BringCat,
														ExploreSpeed = u344.ExploreSpeed,
														WalkSpeed = u344.WalkSpeed,
														JumpPower = u344.JumpPower,
														FlySpeed = u344.FlySpeed,
														ShowNotifs = u344.ShowNotifs,
													})

													if writefile then
														pcall(writefile, u345, (tostring(json)))
													end
												end)
											end)

											return
										end
									end

									v297:Dropdown(t54)
								end

								local t55 = {
									Text = "🔁 Auto Bring Loop",
									Default = false,
									Tooltip = "Continuously pull selected category to you every second",
								}
								local u348 = t2

								local function u349()
									local BringItems = u131.V.BringItems

									u132(true)

									local t56 = {
										__mode = "k",
									}
									local self = setmetatable({}, t56)
									local spawn = task.spawn
									local u715 = BringItems
									local u716 = self

									spawn(function()
										while u715 == u131.V.BringItems do
											local Items = workspace:FindFirstChild("Items")
											local Character = u133.Character
											local HumanoidRootPart

											if Character then
												HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
											else
												HumanoidRootPart = nil
											end

											if Items and HumanoidRootPart then
												local n11 = 0

												for _, child in ipairs(Items:GetChildren()) do
													if u715 ~= u131.V.BringItems then
														break
													end

													local v1006 = child:GetAttribute("ItemName") or child.Name
													local BringCat = u131.BringCat
													local v1009

													if BringCat ~= "All" then
														local v1008 = u134[BringCat]

														v1009 = not not v1008 and u135(v1006, v1008)
													else
														v1009 = true
													end

													if v1009 then
														local Owner = child:GetAttribute("Owner")

														if (Owner == nil or Owner == u133.UserId) and not u136(child) then
															n11 = n11 + 1

															if not u716[child] then
																u716[child] = true

																if not u103 or not u103.Parent then
																	local RequestStartDraggingItem = u137.RequestStartDraggingItem

																	if not RequestStartDraggingItem or not RequestStartDraggingItem.Parent then
																		RequestStartDraggingItem = u138:FindFirstChild("RequestStartDraggingItem", true)
																		u137.RequestStartDraggingItem = RequestStartDraggingItem
																	end

																	u103 = RequestStartDraggingItem
																end

																if u103 then
																	local _pcall = pcall
																	local u1013 = child

																	pcall(function()
																		u103:FireServer(u1013)
																	end)
																end
															end
															local HumanoidRootPartCFrame = HumanoidRootPart.CFrame
															local v1016 = n11 * 2.3999632
															local v1017 = 3 + math.sqrt(n11) * 2.6

															u139(
																child,
																HumanoidRootPartCFrame * CFrame.new(math.cos(v1016) * v1017, 3, math.sin(v1016) * v1017)
															)

															if n11 % 12 == 0 then
																task.wait(0.03)
															end
														end
													end
												end
											end

											if not u140(0.5, "BringItems", u715) then
												break
											end
										end

										u132(false)
									end)
								end

								local u350 = v68

								function t55.Callback(p40)
									u348.BringItems = p40
									u348.V.BringItems = u348.V.BringItems + 1

									if not p40 then
										u350("🔁 Auto Bring", "OFF", 2)

										return
									end

									u349()
									u350("🔁 Auto Bring", "ON (" .. u348.BringCat .. ")", 2, "success")
								end

								v297:Toggle(t55)

								local v351 = v217:Tab("ESP", "esp")

								v351:Section("Highlights")
								v351:Label("See targets through walls. Toggle off removes highlights within 0.3 s.")

								local u352 = v351
								local u353 = t2
								local u354 = v179
								local u355 = RunService
								local u356 = v191

								local function v357(p41, p42, p43)
									local v898 = u352
									local t57 = {
										Text = p41,
										Tooltip = p43,
										Default = false,
									}
									local u900 = p42

									function t57.Callback(p44)
										u353[u900] = p44

										if
											not u353.ESPPlayers
											and (
												not u353.ESPEnemies
												and (not u353.ESPDeer and (not u353.ESPAnimals and (not u353.ESPItems and not u353.ESPChests)))
											)
										then
											if u180 then
												u180:Disconnect()
												u180 = nil
											end

											u354()

											return
										end

										u354()

										if u180 then
											u180:Disconnect()
											u180 = nil
										end

										u180 = u355.Heartbeat:Connect(function(dt)
											n7 = n7 + dt

											if not (n7 < 0.3) then
												n7 = 0
												pcall(u356)

												return
											end
										end)
									end

									v898:Toggle(t57)
								end

								v357("👤 Players", "ESPPlayers", "Blue — other players")
								v357("👹 Enemies", "ESPEnemies", "Red — cultists, wolves, bears, bats")
								v357("🦌 Deer Boss", "ESPDeer", "Purple — the Deer / Wendigo")
								v357("🐰 Animals", "ESPAnimals", "Light green — passive animals")
								v357("🎒 Items", "ESPItems", "Green — dropped items")
								v357("📦 Chests", "ESPChests", "Yellow — chests & supply crates")
								v351:Divider()

								local t58 = {
									Text = "🗑\239\184\143 Clear All ESP",
									Tooltip = "Disable every category and remove highlights",
								}
								local u359 = t2
								local u360 = v179
								local u361 = v68

								function t58.Callback()
									u359.ESPPlayers = false
									u359.ESPEnemies = false
									u359.ESPDeer = false
									u359.ESPAnimals = false
									u359.ESPItems = false
									u359.ESPChests = false

									if u180 then
										u180:Disconnect()
										u180 = nil
									end

									u360()
									u361("🗑\239\184\143 ESP", "All highlights cleared", 3)
								end

								v351:Button(t58)
								v362 = v217:Tab("TP", "map_pin")
								v362:Section("Map Locations  [instant TP]")

								local u363 = LocalPlayer
								local u364 = v68
								local u365 = v166

								function v366(p45, p46)
									local u903 = p46

									local function v904(p47)
										local v1199 = p47:IsA("BasePart") and p47
											or p47:IsA("Model") and (p47.PrimaryPart or p47:FindFirstChildWhichIsA("BasePart"))

										if not v1199 then
											return false
										end

										local Position = v1199.Position
										local Character = u363.Character
										local HumanoidRootPart

										if Character then
											HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
										else
											HumanoidRootPart = nil
										end

										if HumanoidRootPart then
											HumanoidRootPart.CFrame = CFrame.new(Position) + Vector3.new(0, 3, 0)
										end

										u364("📍", "→ " .. u903, 2)

										return true
									end

									if p46 == "Campfire" then
										local v905 = u365()

										if v905 then
											local v906 = v905.PrimaryPart or v905:FindFirstChildWhichIsA("BasePart")

											if v906 then
												local Position = v906.Position
												local Character = u363.Character
												local HumanoidRootPart

												if Character then
													HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
												else
													HumanoidRootPart = nil
												end

												if HumanoidRootPart then
													HumanoidRootPart.CFrame = CFrame.new(Position) + Vector3.new(0, 3, 0)
												end

												u364("📍", "→ Campfire", 2)

												return true
											end
										end
									end

									for _, child in ipairs(workspace:GetChildren()) do
										local v912 = child.Name:lower()

										for _, v in ipairs(p45) do
											if v912:find(v, 1, true) and v904(child) then
												return true
											end
										end
									end

									for _, descendant in ipairs(workspace:GetDescendants()) do
										local v917 = descendant.Name:lower()

										for _, v in ipairs(p45) do
											if v917:find(v, 1, true) and not v917:find("client", 1, true) and v904(descendant) then
												return true
											end
										end
									end

									u364("⚠\239\184\143", p46 .. " not found on map", 3, "error")

									return false
								end
							end

							local t59 = {}
							local t60 = {}
							local t61 = {
								"campfire",
								"bonfire",
								"firepit",
								"camp fire",
								"main fire",
							}
							local t62 = {
								Text = "\240\159\148\165 Campfire",
								Tooltip = "TP to the main campfire",
							}
							local u372 = v366
							local u373 = t61
							local s13 = "Campfire"

							function t62.Callback()
								task.spawn(function()
									u372(u373, s13)
								end)
							end

							local t63 = {
								"sawmill",
								"saw mill",
								"lumber",
							}
							local t64 = {
								Text = "\226\154\153\239\184\143 Sawmill",
								Tooltip = "TP to the sawmill",
							}
							local u377 = v366
							local u378 = t63
							local s14 = "Sawmill"

							function t64.Callback()
								task.spawn(function()
									u377(u378, s14)
								end)
							end

							t60[1] = t62
							t60[2] = t64
							t59.Buttons = t60
							v362:ButtonGroup(t59)

							local t65 = {}
							local t66 = {}
							local t67 = {
								"volcan",
								"lava",
								"crater",
								"magma",
							}
							local t68 = {
								Text = "\240\159\140\139 Volcano",
								Tooltip = "TP to the volcano biome",
							}
							local u384 = v366
							local u385 = t67
							local s15 = "Volcano"

							function t68.Callback()
								task.spawn(function()
									u384(u385, s15)
								end)
							end

							local t69 = {
								"cave",
								"cavern",
								"underground",
								"mine",
								"tunnel",
								"lair",
							}
							local t70 = {
								Text = "\240\159\149\179\239\184\143 Cave",
								Tooltip = "TP to the cave entrance",
							}
							local u389 = v366
							local u390 = t69
							local s16 = "Cave"

							function t70.Callback()
								task.spawn(function()
									u389(u390, s16)
								end)
							end

							t66[1] = t68
							t66[2] = t70
							t65.Buttons = t66
							v362:ButtonGroup(t65)
						end

						local t71 = {}
						local t72 = {}
						local t73 = {
							"crafting bench",
							"crafting table",
							"workbench",
							"workshop",
							"craftingbench",
						}
						local t74 = {
							Text = "\240\159\148\168 Workbench",
							Tooltip = "TP to the crafting bench",
						}
						local u396 = v366
						local u397 = t73
						local s17 = "Workbench"

						function t74.Callback()
							task.spawn(function()
								u396(u397, s17)
							end)
						end

						local t75 = {
							"forge",
							"anvil",
							"blacksmith",
							"furnace",
							"smelter",
							"foundry",
						}
						local t76 = {
							Text = "\226\154\146\239\184\143 Forge",
							Tooltip = "TP to the forge/anvil",
						}
						local u401 = v366
						local u402 = t75
						local s18 = "Forge"

						function t76.Callback()
							task.spawn(function()
								u401(u402, s18)
							end)
						end

						t72[1] = t74
						t72[2] = t76
						t71.Buttons = t72
						v362:ButtonGroup(t71)

						local t77 = {}
						local t78 = {}
						local t79 = {
							"trader",
							"trading post",
							"shop",
							"merchant",
							"vendor",
							"store",
						}
						local t80 = {
							Text = "\240\159\167\145\226\128\141\240\159\146\188 Trader",
							Tooltip = "TP to the trader / shop",
						}
						local u408 = v366
						local u409 = t79
						local s19 = "Trader"

						function t80.Callback()
							task.spawn(function()
								u408(u409, s19)
							end)
						end

						local t81 = {
							"farm",
							"garden",
							"plot",
							"crop",
							"field",
							"farmland",
						}
						local t82 = {
							Text = "\240\159\140\190 Farm",
							Tooltip = "TP to the farm/garden",
						}
						local u413 = v366
						local u414 = t81
						local s20 = "Farm"

						function t82.Callback()
							task.spawn(function()
								u413(u414, s20)
							end)
						end

						t78[1] = t80
						t78[2] = t82
						t77.Buttons = t78
						v362:ButtonGroup(t77)
					end

					local t83 = {}
					local t84 = {}
					local t85 = {
						"beach",
						"shore",
						"coast",
						"ocean",
						"lake",
						"pond",
						"water",
						"river",
					}
					local t86 = {
						Text = "\240\159\143\150\239\184\143 Beach",
						Tooltip = "TP to a water body",
					}
					local u420 = v366
					local u421 = t85
					local s21 = "Beach"

					function t86.Callback()
						task.spawn(function()
							u420(u421, s21)
						end)
					end

					local t87 = {
						"cabin",
						"house",
						"cottage",
						"shelter",
						"hut",
						"lodge",
						"home",
					}
					local t88 = {
						Text = "\240\159\143\160 Cabin",
						Tooltip = "TP to a cabin/shelter",
					}
					local u425 = v366
					local u426 = t87
					local s22 = "Cabin"

					function t88.Callback()
						task.spawn(function()
							u425(u426, s22)
						end)
					end

					t84[1] = t86
					t84[2] = t88
					t83.Buttons = t84
					v362:ButtonGroup(t83)
					v362:Divider()
					v362:Section("Lost Children")
					v362:Label("Finds all 4 missing children across the map.")

					local t89 = {
						Text = "🧒 TP to Nearest Child",
						Tooltip = "Teleport to the closest Lost Child",
					}
					local u429 = v167
					local u430 = v68
					local u431 = LocalPlayer

					function t89.Callback()
						task.spawn(function()
							local v1203 = u429()

							if #v1203 ~= 0 then
								local Character = u431.Character
								local HumanoidRootPart

								if Character then
									HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
								else
									HumanoidRootPart = nil
								end

								local v1206 = nil
								local n12 = 1e999

								for _, v in ipairs(v1203) do
									local v1210 = v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart")

									if v1210 then
										local v1211 = HumanoidRootPart and (v1210.Position - HumanoidRootPart.Position).Magnitude or 0

										if v1211 < n12 then
											n12 = v1211
											v1206 = v1210
										end
									end
								end

								if not v1206 then
									u430("⚠\239\184\143 Children", "Child has no BasePart", 3, "error")

									return
								end

								local Position = v1206.Position
								local Character11 = u431.Character
								local HumanoidRootPart7

								if Character11 then
									HumanoidRootPart7 = Character11:FindFirstChild("HumanoidRootPart")
								else
									HumanoidRootPart7 = nil
								end

								if HumanoidRootPart7 then
									HumanoidRootPart7.CFrame = CFrame.new(Position) + Vector3.new(0, 3, 0)
								end

								u430("📍", "→ Lost Child", 2)

								return
							end

							u430("⚠\239\184\143 Children", "No Lost Children found yet", 3, "error")
						end)
					end

					v362:Button(t89)

					local t90 = {
						Text = "🧒 TP Through All Children (" .. #{
							{},
						} .. "/4)",
						Tooltip = "Visit all Lost Child locations — waits 2 s at each so you can see them",
					}
					local u433 = v167
					local u434 = v68
					local u435 = LocalPlayer

					function t90.Callback()
						task.spawn(function()
							local v1215 = u433()

							if #v1215 ~= 0 then
								u434("🧒 Children", "Found " .. #v1215 .. " — visiting each", 3, "info")

								for i, v in ipairs(v1215) do
									local v1218 = v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart")

									if v1218 then
										local Position = v1218.Position
										local Character = u435.Character
										local HumanoidRootPart

										if Character then
											HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
										else
											HumanoidRootPart = nil
										end

										if HumanoidRootPart then
											HumanoidRootPart.CFrame = CFrame.new(Position) + Vector3.new(0, 3, 0)
										end

										u434("📍", "Child " .. i .. "/" .. #v1215 .. " — " .. v.Name, 2)
									end

									task.wait(2)
								end

								u434("✅ Children", "Visited " .. #v1215 .. " child location(s)", 3, "success")

								return
							end

							u434("⚠\239\184\143 Children", "None found — they may not be loaded yet", 3, "error")
						end)
					end

					v362:Button(t90)

					local t91 = {
						Text = "🎒 Rescue All Children (Sack)",
						Tooltip = "Equip your Sack first — picks up each child and releases at campfire",
					}
					local u437 = v68

					function t91.Callback()
						task.spawn(function()
							local v1222 = u173()

							if not (v1222 > 0) then
								u437("⚠\239\184\143 Rescue", "No children found or no sack equipped", 4, "error")

								return
							end

							u437("✅ Rescue", v1222 .. " child(ren) rescued!", 4, "success")
						end)
					end

					v362:Button(t91)
					v362:Divider()
					v362:Section("Explore Map")
					v362:Label("Tweens above the whole map at high altitude (above all trees). Toggle off to stop mid-flight.")
					t92 = {
						Text = "🗺\239\184\143 Explore the Whole Map",
						Default = false,
						Tooltip = "Snakes over the entire populated map, 90 studs up, at set speed",
					}

					local u439 = t2
					local u440 = LocalPlayer
					local u441 = t9
					local u442 = v68
					local u443 = TweenService

					function t92.Callback(p48)
						u439.ExploreMap = p48
						u439.V.ExploreMap = u439.V.ExploreMap + 1

						if not p48 then
							u442("🗺\239\184\143 Explore", "Stopped", 2)

							return
						end

						local ExploreMap = u439.V.ExploreMap
						local spawn = task.spawn
						local u930 = ExploreMap

						spawn(function()
							local Character = u440.Character
							local g1247 = nil
							local g1248 = nil
							local HumanoidRootPart

							if Character then
								HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
							else
								HumanoidRootPart = nil
							end

							if HumanoidRootPart then
								local v1225 = HumanoidRootPart.Position.Y + 90
								local n13 = 1e999
								local n14 = -1e999
								local n15 = 1e999
								local n16 = -1e999

								for _, v in ipairs(u441.resources) do
									local v1232 = v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart")

									if v1232 then
										local Position = v1232.Position

										if Position.X < n13 then
											n13 = Position.X
										end

										if n14 < Position.X then
											n14 = Position.X
										end

										if Position.Z < n15 then
											n15 = Position.Z
										end

										if n16 < Position.Z then
											n16 = Position.Z
										end
									end
								end

								for _, v in ipairs(u441.chests) do
									local v1236 = v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart")

									if v1236 then
										local Position = v1236.Position

										if Position.X < n13 then
											n13 = Position.X
										end

										if n14 < Position.X then
											n14 = Position.X
										end

										if Position.Z < n15 then
											n15 = Position.Z
										end

										if n16 < Position.Z then
											n16 = Position.Z
										end
									end
								end

								if n13 ~= 1e999 then
									n13 = n13 - 250
									n14 = n14 + 250
									n15 = n15 - 250
									n16 = n16 + 250
								else
									local HumanoidRootPartPosition = HumanoidRootPart.Position

									n13 = HumanoidRootPartPosition.X - 1000
									n14 = HumanoidRootPartPosition.X + 1000
									n15 = HumanoidRootPartPosition.Z - 1000
									n16 = HumanoidRootPartPosition.Z + 1000
								end

								local t93 = {}
								local n17 = 0

								for i = n13, n14, 130 do
									local v1242 = i

									n17 = n17 + 1

									if n17 % 2 ~= 1 then
										for j = n16, n15, -130 do
											t93[#t93 + 1] = Vector3.new(v1242, v1225, j)
										end
									else
										local v1244 = n15
										local v1245 = n16
										local n18 = 130

										repeat
											if not g1247 and not (n18 > 0) then
												if v1245 <= v1244 then
													g1247 = true
												end
											else
												if not g1247 then
													if not (v1244 <= v1245) then
														g1248 = true
													end
												end

												if not g1248 then
													repeat
														g1247 = false

														repeat
															t93[#t93 + 1] = Vector3.new(v1242, v1225, v1244)
															v1244 = v1244 + n18

															if not (n18 > 0) then
																if v1245 <= v1244 then
																	g1247 = true
																end

																if not g1247 then
																	break
																end
															end

															if g1247 then
																break
															end
														until not (v1244 <= v1245)
													until not g1247
												end
											end

											if g1248 then
												break
											end
										until not g1247
									end

									g1248 = false
								end

								local Character12 = u440.Character
								local v1250 = Character12 and Character12:FindFirstChild("Humanoid")

								if v1250 then
									v1250.PlatformStand = true
								end

								u442("🗺\239\184\143 Explore", #t93 .. " waypoints… toggle off to stop", 4, "info")

								for _, v in ipairs(t93) do
									if u930 ~= u439.V.ExploreMap then
										break
									end

									local Character13 = u440.Character
									local HumanoidRootPart8

									if Character13 then
										HumanoidRootPart8 = Character13:FindFirstChild("HumanoidRootPart")
									else
										HumanoidRootPart8 = nil
									end

									if not HumanoidRootPart8 then
										break
									end

									local Magnitude = (v - HumanoidRootPart8.Position).Magnitude
									local ExploreSpeed = u439.ExploreSpeed
									local v1257 = Magnitude / math.max(ExploreSpeed, 10)
									local v1258 = math.max(v1257, 0.03)
									local v1259 = u443:Create(HumanoidRootPart8, TweenInfo.new(v1258, Enum.EasingStyle.Linear), {
										CFrame = CFrame.new(v),
									})

									v1259:Play()

									local u1260 = false
									local connection = v1259.Completed:Connect(function()
										u1260 = true
									end)

									while not u1260 and u930 == u439.V.ExploreMap do
										task.wait()
									end

									connection:Disconnect()

									if u930 ~= u439.V.ExploreMap then
										v1259:Cancel()
									end
								end

								if v1250 then
									v1250.PlatformStand = false
								end

								u439.ExploreMap = false
								u442("🗺\239\184\143 Explore", "Exploration finished", 3, "success")

								return
							end
						end)
						u442("🗺\239\184\143 Explore", "Exploration started", 2, "success")
					end
				end

				v362:Toggle(t92)

				local t94 = {
					Text = "Explore Speed",
					Min = 50,
					Max = 2000,
					Default = t2.ExploreSpeed,
					Suffix = " st/s",
					Tooltip = "How fast the exploration tween moves (crank it up to blitz the map)",
				}
				local u445 = t2
				local u446 = v12
				local u447 = HttpService

				function t94.Callback(p49)
					u445.ExploreSpeed = p49

					if not u36 then
						u36 = true
						task.delay(1.5, function()
							u36 = false
							pcall(function()
								local json = u447:JSONEncode({
									FarmInterval = u445.FarmInterval,
									FarmHits = u445.FarmHits,
									FarmMultiplier = u445.FarmMultiplier,
									FarmRange = u445.FarmRange,
									FarmSmallTrees = u445.FarmSmallTrees,
									FarmBigTrees = u445.FarmBigTrees,
									FarmMode = u445.FarmMode,
									AuraInterval = u445.AuraInterval,
									AuraHits = u445.AuraHits,
									AuraRange = u445.AuraRange,
									AttackAnimals = u445.AttackAnimals,
									BringCat = u445.BringCat,
									ExploreSpeed = u445.ExploreSpeed,
									WalkSpeed = u445.WalkSpeed,
									JumpPower = u445.JumpPower,
									FlySpeed = u445.FlySpeed,
									ShowNotifs = u445.ShowNotifs,
								})

								if writefile then
									pcall(writefile, u446, (tostring(json)))
								end
							end)
						end)

						return
					end
				end

				v362:Slider(t94)
				v362:Divider()
				v362:Section("Player Teleport")
				local s23 = ""

				local v449 = v362:Dropdown({
					Text = "Select Player",
					Options = {
						"(no other players)",
					},
					Default = "(no other players)",
					Tooltip = "Pick a player then press Teleport",
					Callback = function(p50)
						s23 = p50
					end,
				})
				local t95 = {
					Text = "📍 Teleport to Player",
					Tooltip = "Instantly move to the selected player",
				}
				local u451 = v68
				local u452 = Players
				local u453 = LocalPlayer

				function t95.Callback()
					task.spawn(function()
						if s23 ~= "" and s23 ~= "(no other players)" then
							local s23_2 = u452:FindFirstChild(s23)
							local v1263 = s23_2 and (s23_2.Character and s23_2.Character:FindFirstChild("HumanoidRootPart"))

							if not v1263 then
								u451("⚠\239\184\143 TP", s23 .. " has no character", 3, "error")

								return
							end

							local Position = v1263.Position
							local Character = u453.Character
							local HumanoidRootPart

							if Character then
								HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
							else
								HumanoidRootPart = nil
							end

							if HumanoidRootPart then
								HumanoidRootPart.CFrame = CFrame.new(Position) + Vector3.new(0, 3, 0)
							end

							u451("📍", "→ " .. s23, 2)

							return
						end

						u451("⚠\239\184\143 TP", "Select a player first!", 3, "error")
					end)
				end

				v362:Button(t95)

				local spawn = task.spawn
				local u455 = Players
				local u456 = LocalPlayer
				local u457 = v449

				spawn(function()
					while task.wait(5) do
						local t96 = {}

						for _, player in ipairs(u455:GetPlayers()) do
							if player ~= u456 then
								local playerName = player.Name

								table.insert(t96, playerName)
							end
						end

						if #t96 == 0 then
							t96 = {
								"(no other players)",
							}
						end

						pcall(function()
							u457:Refresh(t96)
						end)
					end
				end)
				v458 = v217:Tab("Movement", "speed")
				v458:Section("Character Stats")

				local t97 = {
					Text = "Walk Speed",
					Min = 8,
					Max = 200,
					Default = t2.WalkSpeed,
					Suffix = " st/s",
				}
				local u460 = t2
				local u461 = LocalPlayer
				local u462 = v12
				local u463 = HttpService

				function t97.Callback(p51)
					u460.WalkSpeed = p51

					local v939 = u461.Character and u461.Character:FindFirstChild("Humanoid")

					if v939 then
						v939.WalkSpeed = p51
					end

					if not u36 then
						u36 = true
						task.delay(1.5, function()
							u36 = false
							pcall(function()
								local json = u463:JSONEncode({
									FarmInterval = u460.FarmInterval,
									FarmHits = u460.FarmHits,
									FarmMultiplier = u460.FarmMultiplier,
									FarmRange = u460.FarmRange,
									FarmSmallTrees = u460.FarmSmallTrees,
									FarmBigTrees = u460.FarmBigTrees,
									FarmMode = u460.FarmMode,
									AuraInterval = u460.AuraInterval,
									AuraHits = u460.AuraHits,
									AuraRange = u460.AuraRange,
									AttackAnimals = u460.AttackAnimals,
									BringCat = u460.BringCat,
									ExploreSpeed = u460.ExploreSpeed,
									WalkSpeed = u460.WalkSpeed,
									JumpPower = u460.JumpPower,
									FlySpeed = u460.FlySpeed,
									ShowNotifs = u460.ShowNotifs,
								})

								if writefile then
									pcall(writefile, u462, (tostring(json)))
								end
							end)
						end)

						return
					end
				end

				v458:Slider(t97)

				local t98 = {
					Text = "Jump Power",
					Min = 25,
					Max = 250,
					Default = t2.JumpPower,
				}
				local u465 = t2
				local u466 = LocalPlayer
				local u467 = v12
				local u468 = HttpService

				function t98.Callback(p52)
					u465.JumpPower = p52

					local v941 = u466.Character and u466.Character:FindFirstChild("Humanoid")

					if v941 then
						v941.JumpPower = p52
					end

					if not u36 then
						u36 = true
						task.delay(1.5, function()
							u36 = false
							pcall(function()
								local json = u468:JSONEncode({
									FarmInterval = u465.FarmInterval,
									FarmHits = u465.FarmHits,
									FarmMultiplier = u465.FarmMultiplier,
									FarmRange = u465.FarmRange,
									FarmSmallTrees = u465.FarmSmallTrees,
									FarmBigTrees = u465.FarmBigTrees,
									FarmMode = u465.FarmMode,
									AuraInterval = u465.AuraInterval,
									AuraHits = u465.AuraHits,
									AuraRange = u465.AuraRange,
									AttackAnimals = u465.AttackAnimals,
									BringCat = u465.BringCat,
									ExploreSpeed = u465.ExploreSpeed,
									WalkSpeed = u465.WalkSpeed,
									JumpPower = u465.JumpPower,
									FlySpeed = u465.FlySpeed,
									ShowNotifs = u465.ShowNotifs,
								})

								if writefile then
									pcall(writefile, u467, (tostring(json)))
								end
							end)
						end)

						return
					end
				end

				v458:Slider(t98)
				v458:Divider()
				v458:Section("Extras")

				local t99 = {
					Text = "👻 Noclip",
					Default = false,
					Tooltip = "Walk through walls",
				}
				local u470 = t2
				local u471 = LocalPlayer
				local u472 = v64
				local u473 = v68

				function t99.Callback(p53)
					u470.Noclip = p53
					u470.V.Noclip = u470.V.Noclip + 1

					if not p53 then
						u473("👻 Noclip", "OFF", 2)

						return
					end

					local Noclip = u470.V.Noclip
					local spawn2 = task.spawn
					local u945 = Noclip

					spawn2(function()
						while u945 == u470.V.Noclip do
							local Character = u471.Character

							if Character then
								for _, descendant in ipairs(Character:GetDescendants()) do
									if descendant:IsA("BasePart") then
										descendant.CanCollide = false
									end
								end
							end

							if not u472(0.1, "Noclip", u945) then
								break
							end
						end

						local Character = u471.Character

						if Character then
							for _, descendant in ipairs(Character:GetDescendants()) do
								if descendant:IsA("BasePart") then
									descendant.CanCollide = true
								end
							end
						end
					end)
					u473("👻 Noclip", "ON", 2, "success")
				end

				v458:Toggle(t99)
			end

			local t100 = {
				Text = "♾\239\184\143 Infinite Jump",
				Default = false,
				Tooltip = "Re-jump mid-air",
			}
			local u475 = t2
			local u476 = UserInputService
			local u477 = LocalPlayer
			local u478 = v68

			function t100.Callback(p54)
				if u475.InfJumpConn then
					u475.InfJumpConn:Disconnect()
					u475.InfJumpConn = nil
				end

				if not p54 then
					u478("♾\239\184\143 Inf Jump", "OFF", 2)

					return
				end

				u475.InfJumpConn = u476.JumpRequest:Connect(function()
					local v1273 = u477.Character and u477.Character:FindFirstChild("Humanoid")

					if v1273 then
						v1273:ChangeState(Enum.HumanoidStateType.Jumping)
					end
				end)
				u478("♾\239\184\143 Inf Jump", "ON", 2, "success")
			end

			v458:Toggle(t100)

			local t101 = {
				Text = "🛡\239\184\143 Anti-AFK",
				Default = false,
				Tooltip = "Prevents idle kick",
			}
			local u480 = t2
			local u481 = RunService
			local u482 = VirtualInputManager
			local u483 = v68

			function t101.Callback(p55)
				if u480.AntiAfkConn then
					u480.AntiAfkConn:Disconnect()
					u480.AntiAfkConn = nil
				end

				if not p55 then
					u483("🛡\239\184\143 Anti-AFK", "OFF", 2)

					return
				end

				local n19 = 0

				u480.AntiAfkConn = u481.Stepped:Connect(function()
					local timestamp = tick()

					if timestamp - n19 >= 60 then
						n19 = timestamp
						pcall(function()
							u482:SendKeyEvent(true, "W", false, game)
							u482:SendKeyEvent(false, "W", false, game)
						end)
					end
				end)
				u483("🛡\239\184\143 Anti-AFK", "ON", 2, "success")
			end

			v458:Toggle(t101)
			v458:Divider()
			v458:Section("Flight  [F]")

			local t102 = {
				Text = "✈\239\184\143 Fly",
				Default = false,
				Tooltip = "WASD + Space/Shift  |  F to toggle",
			}
			local u485 = v211
			local u486 = v68
			local u487 = v205

			function t102.Callback(p56)
				if not p56 then
					u487()
					u486("✈\239\184\143 Fly", "OFF", 2)

					return
				end

				u485()
				u486("✈\239\184\143 Fly", "ON — WASD + Space/Shift", 3, "success")
			end

			v458:Toggle(t102)

			local t103 = {
				Text = "Fly Speed",
				Min = 20,
				Max = 300,
				Default = t2.FlySpeed,
				Suffix = " st/s",
			}
			local u489 = t2
			local u490 = v12
			local u491 = HttpService

			function t103.Callback(p57)
				u489.FlySpeed = p57

				if not u36 then
					u36 = true
					task.delay(1.5, function()
						u36 = false
						pcall(function()
							local json = u491:JSONEncode({
								FarmInterval = u489.FarmInterval,
								FarmHits = u489.FarmHits,
								FarmMultiplier = u489.FarmMultiplier,
								FarmRange = u489.FarmRange,
								FarmSmallTrees = u489.FarmSmallTrees,
								FarmBigTrees = u489.FarmBigTrees,
								FarmMode = u489.FarmMode,
								AuraInterval = u489.AuraInterval,
								AuraHits = u489.AuraHits,
								AuraRange = u489.AuraRange,
								AttackAnimals = u489.AttackAnimals,
								BringCat = u489.BringCat,
								ExploreSpeed = u489.ExploreSpeed,
								WalkSpeed = u489.WalkSpeed,
								JumpPower = u489.JumpPower,
								FlySpeed = u489.FlySpeed,
								ShowNotifs = u489.ShowNotifs,
							})

							if writefile then
								pcall(writefile, u490, (tostring(json)))
							end
						end)
					end)

					return
				end
			end

			v458:Slider(t103)

			local v492 = v217:Tab("Settings", "settings")

			v492:Section("Appearance")

			local t104 = {
				Text = "Theme",
				Options = {
					"Dark",
					"Light",
					"Rosewood",
					"Ultraviolet",
					"Seafoam",
					"SolarFlare",
					"Abyss",
				},
			}

			repeat
				if g494 or isfile and readfile and isfile("RoninHub/Settings/UI.txt") then
					if not g494 then
						v495, v496 = pcall(readfile, "RoninHub/Settings/UI.txt")
					end

					if g494 or v495 then
						do
							do
								local t107

								do
									do
										local t105

										do
											do
												g494 = false
												t104.Default = v496 and (v496:gsub("%s+", "") ~= "" and v496:gsub("%s+", "")) or "Dark"

												local u497 = v31

												function t104.Callback(p58)
													local _pcall = pcall
													local u953 = p58

													pcall(function()
														u497:SetTheme(u953)
													end)

													if writefile then
														pcall(writefile, "RoninHub/Settings/UI.txt", (tostring(p58)))
													end
												end
											end

											v492:Dropdown(t104)
											v492:Divider()
											v492:Section("Preferences")
											t105 = {
												Text = "🔔 Notifications",
												Default = t2.ShowNotifs,
											}

											local u499 = t2
											local u500 = v12
											local u501 = HttpService

											function t105.Callback(p59)
												u499.ShowNotifs = p59

												if not u36 then
													u36 = true
													task.delay(1.5, function()
														u36 = false
														pcall(function()
															local json = u501:JSONEncode({
																FarmInterval = u499.FarmInterval,
																FarmHits = u499.FarmHits,
																FarmMultiplier = u499.FarmMultiplier,
																FarmRange = u499.FarmRange,
																FarmSmallTrees = u499.FarmSmallTrees,
																FarmBigTrees = u499.FarmBigTrees,
																FarmMode = u499.FarmMode,
																AuraInterval = u499.AuraInterval,
																AuraHits = u499.AuraHits,
																AuraRange = u499.AuraRange,
																AttackAnimals = u499.AttackAnimals,
																BringCat = u499.BringCat,
																ExploreSpeed = u499.ExploreSpeed,
																WalkSpeed = u499.WalkSpeed,
																JumpPower = u499.JumpPower,
																FlySpeed = u499.FlySpeed,
																ShowNotifs = u499.ShowNotifs,
															})

															if writefile then
																pcall(writefile, u500, (tostring(json)))
															end
														end)
													end)

													return
												end
											end
										end

										v492:Toggle(t105)
										v492:Divider()
										v492:Section("Info")
										v492:Stat({
											Text = "Player",
											Value = LocalPlayer.Name,
										})

										local t106 = {
											Text = "Game ID",
										}
										local GameId = game.GameId

										t106.Value = tostring(GameId)
										v492:Stat(t106)
									end

									v492:Stat({
										Text = "Platform",
										Value = v29 and "Mobile" or "Desktop",
									})
									v492:Stat({
										Text = "Toggle UI",
										Value = "RightCtrl",
									})
									v492:Stat({
										Text = "Keys",
										Value = "J Farm · K Aura · F Fly",
									})
									v492:Divider()
									v492:Section("Actions")
									t107 = {
										Text = "📊 Print Status",
										Tooltip = "Dump state to console (F9)",
									}

									local u505 = LocalPlayer
									local u506 = t2
									local u507 = t9
									local u508 = v68

									function t107.Callback()
										print(
											"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
										)
										print("✅  Ronin Hub — 99 Nights in the Forest  v1")
										print("👤  " .. u505.Name)

										local _print = print
										local AutoFarm = u506.AutoFarm

										print("🪓  Farm:    " .. tostring(AutoFarm) .. " [" .. #u507.resources .. " resources]")
										local KillAura = u506.KillAura

										print("⚔\239\184\143   Aura:   " .. tostring(KillAura) .. " [" .. u506.AuraHits .. " hits/cycle]")
										local BringItems = u506.BringItems

										print("🔁  Bring:   " .. tostring(BringItems) .. " (" .. u506.BringCat .. ")")
										print("🪓  FarmMode: " .. u506.FarmMode)
										local ExploreMap = u506.ExploreMap

										print("🗺\239\184\143   Explore: " .. tostring(ExploreMap) .. " [" .. u506.ExploreSpeed .. " st/s]")
										local FlyEnabled = u506.FlyEnabled

										print("✈\239\184\143   Fly:     " .. tostring(FlyEnabled))

										local _print6 = print
										local Character = u505.Character
										local g970 = nil
										local Name = nil
										local v969

										if Character then
											local ToolHandle = Character:FindFirstChild("ToolHandle")

											if ToolHandle then
												local OriginalItem = ToolHandle:FindFirstChild("OriginalItem")

												v969 = OriginalItem and OriginalItem.Value or nil
											else
												v969 = nil
											end
										else
											v969 = nil
										end

										repeat
											if g970 or v969 then
												if not g970 then
													local Character14 = u505.Character
													local v974

													if Character14 then
														local ToolHandle = Character14:FindFirstChild("ToolHandle")

														if ToolHandle then
															local OriginalItem = ToolHandle:FindFirstChild("OriginalItem")

															v974 = OriginalItem and OriginalItem.Value or nil
														else
															v974 = nil
														end
													else
														v974 = nil
													end

													Name = v974.Name
												end

												if g970 or Name then
													g970 = false
													_print6("🔧  Equipped: " .. Name)
													print(
														"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
													)
													u508("📊 Status", "Printed to F9 console", 3)

													return
												end
											end

											Name = "none"
											g970 = true
										until not g970
									end
								end

								v492:Button(t107)

								local t108 = {
									Text = "💬 Discord",
									Tooltip = "Copy the Ronin Hub Discord invite",
								}
								local u510 = v68

								function t108.Callback()
									if setclipboard then
										pcall(setclipboard, "https://discord.gg/uuaFAm6AdE")
									end

									u510("📋 Discord", "Invite copied!", 3, "success")
								end

								v492:Button(t108)

								local t109 = {
									Text = "🛑 Stop Everything",
									Tooltip = "Kill all loops and reset",
								}

								local function u512()
									for k in pairs(u212.V) do
										u212.V[k] = u212.V[k] + 1
									end

									u212.AutoFarm = false
									u212.KillAura = false
									u212.BringItems = false
									u212.ExploreMap = false
									u212.Noclip = false
									u212.ESPPlayers = false
									u212.ESPEnemies = false
									u212.ESPDeer = false
									u212.ESPAnimals = false
									u212.ESPItems = false
									u212.ESPChests = false
									u213()

									if u180 then
										u180:Disconnect()
										u180 = nil
									end

									u214()

									if u212.InfJumpConn then
										u212.InfJumpConn:Disconnect()
										u212.InfJumpConn = nil
									end

									if u212.AntiAfkConn then
										u212.AntiAfkConn:Disconnect()
										u212.AntiAfkConn = nil
									end

									local Character = u215.Character

									if Character then
										local Humanoid = Character:FindFirstChild("Humanoid")

										if Humanoid then
											Humanoid.WalkSpeed = 16
											Humanoid.JumpPower = 50
											Humanoid.PlatformStand = false
										end

										for _, descendant in ipairs(Character:GetDescendants()) do
											if descendant:IsA("BasePart") then
												descendant.CanCollide = true
											end
										end
									end

									u216("🛑 Ronin Hub", "All features stopped", 3)
								end

								function t109.Callback()
									u512()
								end

								v492:Button(t109)
							end

							local InputBegan = UserInputService.InputBegan
							local u514 = t2
							local u515 = LocalPlayer
							local u516 = t9
							local u517 = v91
							local u518 = t3
							local u519 = ReplicatedStorage
							local u520 = v64
							local u521 = v68
							local u522 = v89
							local u523 = v205
							local u524 = v211

							InputBegan:Connect(function(p60, p61)
								if not p61 then
									local KeyCode = p60.KeyCode

									if KeyCode ~= Enum.KeyCode.J then
										if KeyCode ~= Enum.KeyCode.K then
											if KeyCode == Enum.KeyCode.F then
												if u514.FlyEnabled then
													u523()

													return
												end

												u524()
											end

											return
										end

										u514.KillAura = not u514.KillAura
										u514.V.KillAura = u514.V.KillAura + 1

										if not u514.KillAura then
											u521("⚔\239\184\143 Kill Aura", "OFF [K]", 2)

											return
										end

										local KillAura = u514.V.KillAura
										local spawn = task.spawn
										local u981 = KillAura

										spawn(function()
											while u981 == u514.V.KillAura do
												local Character = u515.Character
												local v1324

												if Character then
													local ToolHandle = Character:FindFirstChild("ToolHandle")

													if ToolHandle then
														local OriginalItem = ToolHandle:FindFirstChild("OriginalItem")

														v1324 = OriginalItem and OriginalItem.Value or nil
													else
														v1324 = nil
													end
												else
													v1324 = nil
												end

												if not v1324 then
													u521("⚔\239\184\143 Kill Aura", "Equip your weapon / axe first!", 3, "error")

													if not u520(2, "KillAura", u981) then
														return
													end
												else
													for _, v in ipairs((u522())) do
														if u981 ~= u514.V.KillAura then
															break
														end

														if v.model and v.model.Parent and v.hum.Health > 0 then
															for _ = 1, u514.AuraHits do
																local model = v.model
																local Character15 = u515.Character
																local HumanoidRootPart

																if Character15 then
																	HumanoidRootPart = Character15:FindFirstChild("HumanoidRootPart")
																else
																	HumanoidRootPart = nil
																end

																if HumanoidRootPart then
																	local ToolDamageObject = u518.ToolDamageObject

																	if not ToolDamageObject or not ToolDamageObject.Parent then
																		ToolDamageObject = u519:FindFirstChild("ToolDamageObject", true)
																		u518.ToolDamageObject = ToolDamageObject
																	end

																	if ToolDamageObject then
																		local _pcall = pcall
																		local u1333 = ToolDamageObject
																		local u1334 = model
																		local u1335 = v1324
																		local n20 = 999999
																		local u1337 = HumanoidRootPart
																		local u1338 = true

																		pcall(function()
																			u1333:InvokeServer(u1334, u1335, n20, u1337.CFrame, u1338 and true or false)
																		end)
																	end
																end
															end
														end
													end

													if not u520(u514.AuraInterval, "KillAura", u981) then
														return
													end
												end
											end
										end)
										u521("⚔\239\184\143 Kill Aura", "ON [K]", 2, "success")

										return
									end

									u514.AutoFarm = not u514.AutoFarm
									u514.V.AutoFarm = u514.V.AutoFarm + 1

									if not u514.AutoFarm then
										u521("🪓 Auto Farm", "OFF [J]", 2)

										return
									end

									local AutoFarm = u514.V.AutoFarm
									local spawn = task.spawn
									local u984 = AutoFarm

									spawn(function()
										local g1281 = nil
										local g1283 = nil
										local g1290 = nil
										local g1292 = nil
										local v1282 = nil
										local g1309 = nil

										while u984 == u514.V.AutoFarm do
											local Character = u515.Character
											local v1278

											if Character then
												local ToolHandle = Character:FindFirstChild("ToolHandle")

												if ToolHandle then
													local OriginalItem = ToolHandle:FindFirstChild("OriginalItem")

													v1278 = OriginalItem and OriginalItem.Value or nil
												else
													v1278 = nil
												end
											else
												v1278 = nil
											end

											if not v1278 then
												u521("🪓 Auto Farm", "Equip your axe / tool first!", 3, "error")

												if not u520(2, "AutoFarm", u984) then
													return
												end
											else
												local v1279 = v1278:GetAttribute("WeaponResourceDamage") or 25
												local v1280 = u514.FarmMode == "BETA"

												repeat
													if g1281 or not v1280 then
														g1281 = false
														v1282 = v1279
														g1283 = true
													end

													if g1283 then
														break
													end

													local v1284 = v1279 * u514.FarmMultiplier

													v1282 = math.max(v1284, 1)

													if not v1282 then
														g1281 = true
													end
												until not g1281

												g1283 = false

												local Character16 = u515.Character
												local HumanoidRootPart

												if Character16 then
													HumanoidRootPart = Character16:FindFirstChild("HumanoidRootPart")
												else
													HumanoidRootPart = nil
												end

												local v1287 = HumanoidRootPart and HumanoidRootPart.Position

												for _, v in ipairs(u516.resources) do
													if u984 ~= u514.V.AutoFarm then
														break
													end

													if not v or not v.Parent or v:GetAttribute("Destroyed") ~= nil then
														g1290 = true
													end

													if not g1290 then
														local v1291 = u517(v)

														if v1291 and not u514.FarmBigTrees or not v1291 and not u514.FarmSmallTrees then
															g1290 = true
														end

														if not g1290 then
															repeat
																if g1292 or (not (u514.FarmRange > 0) or not v1287) then
																	g1292 = false

																	if not v1280 then
																		local v1293 = v:GetAttribute("Health") or 999

																		for _ = 1, u514.FarmHits do
																			v1293 = v1293 - v1282

																			local v1295 = v1293 <= 0
																			local Character17 = u515.Character
																			local HumanoidRootPart9

																			if Character17 then
																				HumanoidRootPart9 = Character17:FindFirstChild("HumanoidRootPart")
																			else
																				HumanoidRootPart9 = nil
																			end

																			if HumanoidRootPart9 then
																				local ToolDamageObject = u518.ToolDamageObject

																				if not ToolDamageObject or not ToolDamageObject.Parent then
																					ToolDamageObject = u519:FindFirstChild("ToolDamageObject", true)
																					u518.ToolDamageObject = ToolDamageObject
																				end

																				if ToolDamageObject then
																					local _pcall = pcall
																					local u1300 = ToolDamageObject
																					local u1301 = v
																					local u1302 = v1278
																					local u1303 = v1282
																					local u1304 = HumanoidRootPart9
																					local u1305 = v1295

																					pcall(function()
																						u1300:InvokeServer(
																							u1301,
																							u1302,
																							u1303,
																							u1304.CFrame,
																							u1305 and true or false
																						)
																					end)
																				end
																			end

																			if v1295 then
																				break
																			end
																		end
																	else
																		local n21 = 1
																		local FarmHits = u514.FarmHits
																		local n22 = 1

																		if false then
																			if FarmHits <= 1 then
																				g1309 = true
																			end

																			if not g1309 then
																				g1290 = true
																			end
																		end

																		if not g1290 then
																			if not g1309 then
																				if not (n21 <= FarmHits) then
																					g1290 = true
																				end
																			end

																			if not g1290 then
																				repeat
																					g1309 = false

																					repeat
																						local Character18 = u515.Character
																						local HumanoidRootPart10

																						if Character18 then
																							HumanoidRootPart10 = Character18:FindFirstChild("HumanoidRootPart")
																						else
																							HumanoidRootPart10 = nil
																						end

																						if HumanoidRootPart10 then
																							local ToolDamageObject = u518.ToolDamageObject

																							if not ToolDamageObject or not ToolDamageObject.Parent then
																								ToolDamageObject = u519:FindFirstChild("ToolDamageObject", true)
																								u518.ToolDamageObject = ToolDamageObject
																							end

																							if ToolDamageObject then
																								local _pcall = pcall
																								local u1314 = ToolDamageObject
																								local u1315 = v
																								local u1316 = v1278
																								local u1317 = v1282
																								local u1318 = HumanoidRootPart10
																								local u1319 = true

																								pcall(function()
																									u1314:InvokeServer(
																										u1315,
																										u1316,
																										u1317,
																										u1318.CFrame,
																										u1319 and true or false
																									)
																								end)
																							end
																						end

																						n21 = n21 + n22

																						if not (n22 > 0) then
																							if FarmHits <= n21 then
																								g1309 = true
																							end

																							if not g1309 then
																								break
																							end
																						end

																						if g1309 then
																							break
																						end
																					until not (n21 <= FarmHits)
																				until not g1309
																			end
																		end
																	end
																else
																	local v1320 = v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart")

																	if not v1320 or not ((v1320.Position - v1287).Magnitude > u514.FarmRange) then
																		g1292 = true
																	end
																end
															until not g1292
														end
													end

													g1290 = false
												end

												if not u520(u514.FarmInterval, "AutoFarm", u984) then
													return
												end
											end
										end
									end)
									u521("🪓 Auto Farm", "ON [J]", 2, "success")

									return
								end
							end)
						end

						local spawn = task.spawn
						local u526 = t9
						local u527 = v89

						spawn(function()
							while task.wait(1) do
								pcall(function()
									local v1340 = (function(...)
										local t110 = { ... }

										t110.n = select("#", ...)

										return t110
									end)(u69(#u526.resources))

									u269:Set(unpack(v1340, 1, v1340.n))
								end)
								pcall(function()
									local v1346 = #u527()

									u296:Set((tostring(v1346)))
								end)
							end
						end)
						print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
						print("✅  Ronin Hub — 99 Nights in the Forest  v1")

						local _print = print
						local LocalPlayerName = LocalPlayer.Name
						local GameId = game.GameId

						print("👤  " .. LocalPlayerName .. "  |  GameId: " .. tostring(GameId))
						print("📱  Mobile: " .. tostring(v29))
						print("🔑  RightControl → UI  |  J Farm · K Aura · F Fly")
						print("ℹ\239\184\143   Equip axe/weapon for Auto Farm & Kill Aura!")
						print("━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━")
						v68("✅ Ronin Hub", "99 Nights v1 loaded!", 5, "success")

						return
					end
				end

				v496 = nil
				g494 = true
			until not g494
		end
	end

	v220 = nil
	g218 = true
until not g218
