-- 基础信息
local base_info = {
	group_id = 133103555
}

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
	{ config_id = 555001, npc_id = 20143, pos = { x = 758.271, y = 295.025, z = 1416.764 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 },
	{ config_id = 555002, npc_id = 20144, pos = { x = 649.043, y = 197.747, z = 1265.335 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 6 }
}

-- 装置
gadgets = {
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
		monsters = { },
		gadgets = { },
		regions = { },
		triggers = { },
		npcs = { 555001, 555002 },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================