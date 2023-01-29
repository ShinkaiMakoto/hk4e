-- 基础信息
local base_info = {
	group_id = 133313252
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 252001, monster_id = 24020101, pos = { x = -366.526, y = 99.363, z = 5847.347 }, rot = { x = 0.000, y = 128.362, z = 0.000 }, level = 32, drop_tag = "拟生机关", pose_id = 101, area_id = 32 },
	{ config_id = 252002, monster_id = 24020101, pos = { x = -352.336, y = 106.403, z = 5844.630 }, rot = { x = 0.000, y = 262.744, z = 0.000 }, level = 32, drop_tag = "拟生机关", pose_id = 101, area_id = 32 },
	{ config_id = 252004, monster_id = 24020201, pos = { x = -370.872, y = 117.372, z = 5905.826 }, rot = { x = 0.000, y = 157.740, z = 0.000 }, level = 32, drop_tag = "拟生机关", pose_id = 100, area_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 252003, gadget_id = 70330342, pos = { x = -352.657, y = 107.581, z = 5852.189 }, rot = { x = 20.769, y = 280.250, z = 359.772 }, level = 26, drop_tag = "摩拉石箱须弥", isOneoff = true, persistent = true, explore = { name = "chest", exp = 4 }, area_id = 32 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 252001, 252002, 252004 },
		gadgets = { 252003 },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================