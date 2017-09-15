 --Selfmade weaponshop! :)
include( 'shared.lua' )
include( 'init.lua' )
function WeaponSelectorDerma()

local WeaponFrame = vgui.Create("DFrame")
WeaponFrame:SetSize(520, 400) 
WeaponFrame:Center()
WeaponFrame:SetTitle("Shop") 
WeaponFrame:SetDraggable(true)
WeaponFrame:SetSizable(false)
WeaponFrame:ShowCloseButton(true)
WeaponFrame:MakePopup()

--WeaponFrame:AddSheet( "Guns", WeaponFrame, "gui/silkicons/user", false, false, "Guns/Ammo" )

local sheet = vgui.Create( "DPropertySheet", WeaponFrame )
sheet:Dock( FILL )

local weaponsTab = vgui.Create( "DPanel", sheet )
weaponsTab.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 128, 255 ) ) end
sheet:AddSheet( "Weapons", weaponsTab, "icon16/lightning.png" )

local ammoTab = vgui.Create( "DPanel", sheet )
ammoTab.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 255, 128, 0 ) ) end
sheet:AddSheet( "Ammo", ammoTab, "icon16/package_add.png" )

local SpecialsTab = vgui.Create( "DPanel", sheet )
SpecialsTab.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 0, 255, 128 ) ) end
sheet:AddSheet( "Abilities", SpecialsTab, "icon16/star.png" )

local ModelTab = vgui.Create( "DPanel", sheet )
ModelTab.Paint = function( self, w, h ) draw.RoundedBox( 4, 0, 0, w, h, Color( 231, 66, 35 ) ) end
sheet:AddSheet( "Player Model", ModelTab, "icon16/user_orange.png" )

local PistolButton = vgui.Create("DButton", weaponsTab)
PistolButton:SetSize(100, 30)
PistolButton:SetPos(10, 35)
PistolButton:SetText("Pistol (800)")
PistolButton.DoClick = function() RunConsoleCommand("weapon_take", "pistol") WeaponFrame:Close() end --make it run our "weapon_take" console command with "pistol" as the 1st argument and then close the menu
 
local SMGButton = vgui.Create("DButton", weaponsTab)
SMGButton:SetSize(100, 30)
SMGButton:SetPos(140, 35)
SMGButton:SetText("SMG (1.000)")
SMGButton.DoClick = function() RunConsoleCommand("weapon_take", "smg") WeaponFrame:Close() end

local CRSBButton = vgui.Create("DButton", weaponsTab)
CRSBButton:SetSize(100, 30)
CRSBButton:SetPos(270, 35)
CRSBButton:SetText("Crossbow (1.000)")
CRSBButton.DoClick = function() RunConsoleCommand("weapon_take", "crossbow") WeaponFrame:Close() end

local ShotButton = vgui.Create("DButton", weaponsTab)
ShotButton:SetSize(100, 30)
ShotButton:SetPos(400, 35)

ShotButton:SetText("Shotgun (1.000)")
ShotButton.DoClick = function() RunConsoleCommand("weapon_take", "shotgun") WeaponFrame:Close() end

local ARButton = vgui.Create("DButton", weaponsTab)
ARButton:SetSize(100, 30)
ARButton:SetPos(10, 70)
ARButton:SetText("AR2(1.000)")
ARButton.DoClick = function() RunConsoleCommand("weapon_take", "ar2") WeaponFrame:Close() end

local FragButton = vgui.Create("DButton", weaponsTab)
FragButton:SetSize(100, 30)
FragButton:SetPos(140, 70)
FragButton:SetText("Frag(500)")
FragButton.DoClick = function() RunConsoleCommand("weapon_take", "frag") WeaponFrame:Close() end

local AlyxButton = vgui.Create("DButton", weaponsTab)
AlyxButton:SetSize(100, 30)
AlyxButton:SetPos(270, 70)
AlyxButton:SetText("Alyxgun(1200)")
AlyxButton.DoClick = function() RunConsoleCommand("weapon_take", "Alyxgun") WeaponFrame:Close() end

-------------------------------------------------------------------
local PistolAmmoButton = vgui.Create("DButton", ammoTab)
PistolAmmoButton:SetSize(100, 30)
PistolAmmoButton:SetPos(10, 35)
PistolAmmoButton:SetText("Pistol Ammo (200)")
PistolAmmoButton:SetTextColor( Color( 255, 0, 0, 255 ) )
PistolAmmoButton.DoClick = function() RunConsoleCommand("weapon_take", "pistolammo") WeaponFrame:Close() end

local PistolAmmoButton2 = vgui.Create("DButton", ammoTab)
PistolAmmoButton2:SetSize(100, 30)
PistolAmmoButton2:SetPos(140, 35)
PistolAmmoButton2:SetText("SMG Ammo (400)")
PistolAmmoButton2:SetTextColor( Color( 255, 0, 0, 255 ) )
PistolAmmoButton2.DoClick = function() RunConsoleCommand("weapon_take", "smgammo") WeaponFrame:Close() end

local PistolAmmoButton3 = vgui.Create("DButton", ammoTab)
PistolAmmoButton3:SetSize(100, 30)
PistolAmmoButton3:SetPos(270, 35)
PistolAmmoButton3:SetText("Crossbow Ammo (400)")
PistolAmmoButton3:SetTextColor( Color( 255, 0, 0, 255 ) )
PistolAmmoButton3.DoClick = function() RunConsoleCommand("weapon_take", "blotammo") WeaponFrame:Close() end

local PistolAmmoButton4 = vgui.Create("DButton", ammoTab)
PistolAmmoButton4:SetSize(100, 30)
PistolAmmoButton4:SetPos(400, 35)
PistolAmmoButton4:SetText("Shotgun Ammo (400)")
PistolAmmoButton4:SetTextColor( Color( 255, 0, 0, 255 ) )
PistolAmmoButton4.DoClick = function() RunConsoleCommand("weapon_take", "shotgunammo") WeaponFrame:Close() end

local PistolAmmoButton5 = vgui.Create("DButton", ammoTab)
PistolAmmoButton5:SetSize(100, 30)
PistolAmmoButton5:SetPos(10, 70)
PistolAmmoButton5:SetText("AR2 Ammo (400)")
PistolAmmoButton5:SetTextColor( Color( 255, 0, 0, 255 ) )
PistolAmmoButton5.DoClick = function() RunConsoleCommand("weapon_take", "AR2ammo") WeaponFrame:Close() end

local PistolAmmoButton6 = vgui.Create("DButton", ammoTab)
PistolAmmoButton6:SetSize(100, 30)
PistolAmmoButton6:SetPos(140, 70)
PistolAmmoButton6:SetText("Alyxgun ammo(100)")
PistolAmmoButton6:SetTextColor( Color( 255, 0, 0, 255 ) )
PistolAmmoButton6.DoClick = function() RunConsoleCommand("weapon_take", "Alyxgunammo") WeaponFrame:Close() end
-------------------------------------------------------------------------------
local FlashlightButton = vgui.Create("DButton", SpecialsTab)
FlashlightButton:SetSize(100, 30)
FlashlightButton:SetPos(10, 35)
FlashlightButton:SetText("flashlight(100)")
FlashlightButton:SetTextColor( Color( 0, 0, 255, 255 ) )
FlashlightButton.DoClick = function() RunConsoleCommand("weapon_take", "flashlight") WeaponFrame:Close() end

local HPButton = vgui.Create("DButton", SpecialsTab)
HPButton:SetSize(100, 30)
HPButton:SetPos(140, 35)
HPButton:SetText("150HP(300)")
HPButton:SetTextColor( Color( 0, 0, 255, 255 ) )
HPButton.DoClick = function() RunConsoleCommand("weapon_take", "HP") WeaponFrame:Close() end

local ArmorButton = vgui.Create("DButton", SpecialsTab)
ArmorButton:SetSize(100, 30)
ArmorButton:SetPos(270, 35)
ArmorButton:SetText("Armor (500)")
ArmorButton:SetTextColor( Color( 0, 0, 255, 255 ) )
ArmorButton.DoClick = function() RunConsoleCommand("weapon_take", "armor") WeaponFrame:Close() end

local SprintButton = vgui.Create("DButton", SpecialsTab)
SprintButton:SetSize(100, 30)
SprintButton:SetPos(400, 35)
SprintButton:SetText("Sprint (500)")
SprintButton:SetTextColor( Color( 0, 0, 255, 255 ) )
SprintButton.DoClick = function() RunConsoleCommand("weapon_take", "sprint") WeaponFrame:Close() end
-------------------------------------------------------------

local Model1Button = vgui.Create("DButton", ModelTab)
Model1Button:SetSize(100, 30)
Model1Button:SetPos(10, 35)
Model1Button:SetText("Gman (200)")
Model1Button:SetTextColor( Color( 0, 0, 255, 255 ) )
Model1Button.DoClick = function() RunConsoleCommand("weapon_take", "gman") WeaponFrame:Hide() end

local Model2Button = vgui.Create("DButton", ModelTab)
Model2Button:SetSize(100, 30)
Model2Button:SetPos(140, 35)
Model2Button:SetText("Cop (200)")
Model2Button:SetTextColor( Color( 0, 0, 255, 255 ) )
Model2Button.DoClick = function() RunConsoleCommand("weapon_take", "cop") WeaponFrame:Close() end

local Model3Button = vgui.Create("DButton", ModelTab)
Model3Button:SetSize(100, 30)
Model3Button:SetPos(270, 35)
Model3Button:SetText("Skeleton (200)")
Model3Button:SetTextColor( Color( 0, 0, 255, 255 ) )
Model3Button.DoClick = function() RunConsoleCommand("weapon_take", "skeleton") WeaponFrame:Close() end

local Model4Button = vgui.Create("DButton", ModelTab)
Model4Button:SetSize(100, 30)
Model4Button:SetPos(400, 35)
Model4Button:SetText("Phoenix (200)")
Model4Button:SetTextColor( Color( 0, 0, 255, 255 ) )
Model4Button.DoClick = function() RunConsoleCommand("weapon_take", "phoenix") WeaponFrame:Close() end

local Model5Button = vgui.Create("DButton", ModelTab)
Model5Button:SetSize(100, 30)
Model5Button:SetPos(10, 70)
Model5Button:SetText("Zombie (200)")
Model5Button:SetTextColor( Color( 0, 0, 255, 255 ) )
Model5Button.DoClick = function() RunConsoleCommand("weapon_take", "zombie") WeaponFrame:Close() end

-- |||||||||||||||||||||||||||||

local PrevPanel = vgui.Create( "DPanel" , WeaponFrame )
PrevPanel:SetPos( 300, 180 )
PrevPanel:SetSize( 200, 200 )

			PistolButton.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -40, -135 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/weapons/v_Pistol.mdl" )
			end
			
			SMGButton.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -50, -130 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/weapons/v_smg1.mdl" )
				--icon:SetPos( icon:GetWide() / 2 - Panel:GetWide() /2, icon:GetTall() / 2 - Panel:GetTall() / 2 )
			end
			
			CRSBButton.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -100, -130 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/weapons/v_crossbow.mdl" )
			end
			
			ShotButton.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -100, -140 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/weapons/v_shotgun.mdl" )
			end
			
			ARButton.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -20, -140 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/weapons/v_IRifle.mdl" )	
			end
			
			FragButton.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -80, -350 )
				icon:SetSize( 450, 450 )
				icon:SetModel( "models/weapons/w_eq_fraggrenade_thrown.mdl" )
			end
			
			AlyxButton.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -100, -130 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/weapons/v_Pistol.mdl" )
			end
			
			PistolAmmoButton.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				--icon:SetPos( -100, -130 )

				icon:Dock( FILL )
				icon:DockMargin( 50, 0, 0, 0 )
				icon:SetSize( 300, 300)
				icon:SetModel( "models/Items/357ammobox.mdl" )
			end
							
			PistolAmmoButton2.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -100, -130 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/Items/357ammobox.mdl" )
			end
						
			PistolAmmoButton3.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -100, -130 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/Items/357ammobox.mdl" )
			end
						
			PistolAmmoButton4.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
			
				icon:SetParent( PrevPanel )
				icon:SetPos( -100, -130 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/Items/357ammobox.mdl" )
			end
						
			PistolAmmoButton5.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -100, -130 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/Items/357ammobox.mdl" )
			end
						
			PistolAmmoButton6.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -100, -130 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/Items/357ammobox.mdl" )
			end
			
			HPButton.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -100, -130 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/Items/HealthKit.mdl" )
			end
			
			ArmorButton.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -100, -130 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/Items/HealthKit.mdl" )
			end
			
			Model1Button.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -50, -50 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/player/gman_high.mdl" )
			end
			
			Model2Button.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -50, -50 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/player/police.mdl" )
			end
			
			Model3Button.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -50, -50 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/player/skeleton.mdl" )
			end
			
			Model4Button.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -50, -50 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/player/phoenix.mdl" )
			end
			
			Model5Button.OnCursorEntered = function()
			local icon = vgui.Create( "DModelPanel", PrevPanel )
				icon:SetParent( PrevPanel )
				icon:SetPos( -50, -50 )
				icon:SetSize( 300, 300 )
				icon:SetModel( "models/player/zombie_classic.mdl" )
			end
			
		PistolButton.OnCursorExited = function()
		PrevPanel:Clear()
		end
		SMGButton.OnCursorExited = function()
		PrevPanel:Clear()
		end
		CRSBButton.OnCursorExited = function()
		PrevPanel:Clear()
		end
		ShotButton.OnCursorExited = function()
		PrevPanel:Clear()
		end
		ARButton.OnCursorExited = function()
		PrevPanel:Clear()
		end
		FragButton.OnCursorExited = function()
		PrevPanel:Clear()
		end
		AlyxButton.OnCursorExited = function()
		PrevPanel:Clear()
		end
		PistolAmmoButton.OnCursorExited = function()
		PrevPanel:Clear()
		end
		PistolAmmoButton2.OnCursorExited = function()
		PrevPanel:Clear()
		end
		PistolAmmoButton3.OnCursorExited = function()
		PrevPanel:Clear()
		end
		PistolAmmoButton4.OnCursorExited = function()
		PrevPanel:Clear()
		end
		PistolAmmoButton5.OnCursorExited = function()
		PrevPanel:Clear()
		end
		PistolAmmoButton6.OnCursorExited = function()
		PrevPanel:Clear()
		end
		HPButton.OnCursorExited = function()
		PrevPanel:Clear()
		end
		ArmorButton.OnCursorExited = function()
		PrevPanel:Clear()
		end
		Model1Button.OnCursorExited = function()
		PrevPanel:Clear()
		end
		Model2Button.OnCursorExited = function()
		PrevPanel:Clear()
		end
		Model3Button.OnCursorExited = function()
		PrevPanel:Clear()
		end
		Model4Button.OnCursorExited = function()
		PrevPanel:Clear()
		end
		Model5Button.OnCursorExited = function()
		PrevPanel:Clear()
		end
	
		
			end
			concommand.Add("shop", WeaponSelectorDerma)