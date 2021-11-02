Config = {
    --OPTION CLIENT SIDE
    ResourceStartProtection = true,
    ResourceStopProtection = true,
    ResourcesWhitelist = false,
    RemoveAllParticle = true,
    ExplosionProtection = true,
    FireProtection = true,
    CheatEngineProtection = true,
    RegisterCommandProtection = true,
    BlacklistWeapon = true,
    AutoHealProtection = true,
    AmmoProtection = true,
    VehicleDamageModifierProtection = true,
    ThermalVisionProtection = true,
    NightVisionProtection = true,
    BlipsProtection = true,
    SpectatorModeProtection = true,
    DamageMultiplierProtection = true,
    FlyVehicleProtection = true,
    RemoveNPC = true, --Need to delete npc if you want anticheat work
    
    --ESX OPTION
    UseESX = false,
    TriggerSharedObjectESX = "esx:getSharedObject", --Change only if you have custom trigger
    DetectStaff = false, -- If you want your staff dont get sanction
    AntiGiveWeaponESX = false, -- Kick when weapon added
    PermissionStaffESX = { -- Permission base esx
        "superadmin",
        "admin",
        "mod",
    },

    --RESOURCES WITHELIST I RECOMMANDE TO USE
    ResourcesListWhitelist = {
        ["chat"] = true,
        ["hardcap"] = true,
    },

    weaponDamageList = {
        [453432689] = 26.0, -- WEAPON_PISTOL
        [1593441988] = 27.0, -- WEAPON_COMBATPISTOL
        [584646201] = 25.0, -- WEAPON_APPISTOL
        [-1716589765] = 51.0, -- WEAPON_PISTOL50
        [324215364] = 21.0, -- WEAPON_MICROSMG
        [736523883] = 22.0, -- WEAPON_SMG
        [-270015777] = 23.0, -- WEAPON_ASSAULTSMG
        [-1074790547] = 30.0, -- WEAPON_ASSAULTRIFLE
        [-2084633992] = 32.0, -- WEAPON_CARBINERIFLE
        [-1357824103] = 34.0, -- WEAPON_ADVANCEDRIFLE
        [-1660422300] = 40.0, -- WEAPON_MG
        [2144741730] = 45.0, -- WEAPON_COMBATMG
        [487013001] = 29.0, -- WEAPON_PUMPSHOTGUN
        [2017895192] = 40.0, -- WEAPON_SAWNOFFSHOTGUN
        [-494615257] = 32.0, -- WEAPON_ASSAULTSHOTGUN
        [-1654528753] = 14.0, -- WEAPON_BULLPUPSHOTGUN
        [100416529] = 101.0, -- WEAPON_SNIPERRIFLE
        [205991906] = 216.0, -- WEAPON_HEAVYSNIPER
        [1119849093] = 30.0, -- WEAPON_MINIGUN
        [-1076751822] = 28.0, -- WEAPON_SNSPISTOL
        [1627465347] = 34.0, -- WEAPON_GUSENBERG
        [-1063057011] = 32.0, -- WEAPON_SPECIALCARBINE
        [-771403250] = 40.0, -- WEAPON_HEAVYPISTOL
        [2132975508] = 32.0, -- WEAPON_BULLPUPRIFLE
        [137902532] = 34.0, -- WEAPON_VINTAGEPISTOL
        [-1466123874] = 165.0, -- WEAPON_MUSKET
        [984333226] = 117.0, -- WEAPON_HEAVYSHOTGUN
        [-952879014] = 65.0, -- WEAPON_MARKSMANRIFLE
        [1198879012] = 10.0, -- WEAPON_FLAREGUN
        [171789620] = 28.0, -- WEAPON_COMBATPDW
        [-598887786] = 220.0, -- WEAPON_MARKSMANPISTOL
        [-619010992] = 27.0, -- WEAPON_MACHINEPISTOL
        [-275439685] = 30.0, -- WEAPON_DBSHOTGUN
        [1649403952] = 34.0, -- WEAPON_COMPACTRIFLE
        [317205821] = 27.0, -- WEAPON_AUTOSHOTGUN
        [-1121678507] = 22.0, -- WEAPON_MINISMG
        [-2009644972] = 30.0, -- WEAPON_SNSPISTOL_MK2
        [-1768145561] = 32.5, -- WEAPON_SPECIALCARBINE_MK2
        [-2066285827] = 33.0, -- WEAPON_BULLPUPRIFLE_MK2
        [1432025498] = 32.0, -- WEAPON_PUMPSHOTGUN_MK2
        [1785463520] = 75.0, -- WEAPON_MARKSMANRIFLE_MK2
        [961495388] = 40.0, -- WEAPON_ASSAULTRIFLE_MK2
        [-86904375] = 33.0, -- WEAPON_CARBINERIFLE_MK2
        [-608341376] = 47.0, -- WEAPON_COMBATMG_MK2
        [177293209] = 230.0, -- WEAPON_HEAVYSNIPER_MK2
        [-1075685676] = 32.0, -- WEAPON_PISTOL_MK2
        [2024373456] = 25.0, -- WEAPON_SMG_MK2
    },

    WeaponBlacklist = {
        'WEAPON_GRENADELAUNCHER',
        'WEAPON_RPG',
        'WEAPON_STINGER',
        'WEAPON_MINIGUN',
        'WEAPON_GRENADE',
        'WEAPON_RAILGUN',
        'WEAPON_COMPACTLAUNCHER',
        'WEAPON_PIPEBOMB',
        'WEAPON_PROXMINE',
        'WEAPON_GRENADELAUNCHER_SMOKE',
        'WEAPON_FIREWORK',
        'WEAPON_HOMINGLAUNCHER',
        'WEAPON_RAYPISTOL',
        'WEAPON_RAYCARBINE',
        'WEAPON_RAYMINIGUN',
        'WEAPON_DIGISCANNER',
    },
}