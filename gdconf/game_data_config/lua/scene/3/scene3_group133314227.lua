-- 基础信息
local base_info = {
	group_id = 133314227
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
}

-- 装置
gadgets = {
	{ config_id = 227001, gadget_id = 70330450, pos = { x = -735.022, y = 129.118, z = 4218.249 }, rot = { x = 5.770, y = 37.342, z = 14.181 }, level = 32, area_id = 32 },
	{ config_id = 227002, gadget_id = 70500000, pos = { x = -735.022, y = 129.118, z = 4218.249 }, rot = { x = 5.767, y = 37.331, z = 14.180 }, level = 32, point_type = 3012, owner = 227001, area_id = 32 },
	{ config_id = 227003, gadget_id = 70330450, pos = { x = -717.496, y = 132.058, z = 4227.571 }, rot = { x = 356.157, y = 168.723, z = 337.419 }, level = 32, area_id = 32 },
	{ config_id = 227004, gadget_id = 70500000, pos = { x = -717.496, y = 132.058, z = 4227.571 }, rot = { x = 356.153, y = 168.715, z = 337.419 }, level = 32, point_type = 3012, owner = 227003, area_id = 32 },
	{ config_id = 227005, gadget_id = 70330450, pos = { x = -707.918, y = 135.560, z = 4230.046 }, rot = { x = 10.842, y = 187.806, z = 352.643 }, level = 32, area_id = 32 },
	{ config_id = 227006, gadget_id = 70500000, pos = { x = -707.918, y = 135.560, z = 4230.046 }, rot = { x = 10.843, y = 187.817, z = 352.645 }, level = 32, point_type = 3012, owner = 227005, area_id = 32 },
	{ config_id = 227007, gadget_id = 70290003, pos = { x = -642.995, y = 164.161, z = 4201.467 }, rot = { x = 359.537, y = 358.646, z = 9.512 }, level = 32, area_id = 32 },
	{ config_id = 227008, gadget_id = 70500000, pos = { x = -642.995, y = 164.264, z = 4201.376 }, rot = { x = 359.537, y = 358.645, z = 9.512 }, level = 32, point_type = 3003, owner = 227007, area_id = 32 },
	{ config_id = 227009, gadget_id = 70500000, pos = { x = -642.995, y = 164.264, z = 4201.568 }, rot = { x = 359.537, y = 358.645, z = 9.512 }, level = 32, point_type = 3003, owner = 227007, area_id = 32 },
	{ config_id = 227010, gadget_id = 70290003, pos = { x = -644.440, y = 163.867, z = 4202.394 }, rot = { x = 343.969, y = 137.731, z = 353.985 }, level = 32, area_id = 32 },
	{ config_id = 227011, gadget_id = 70500000, pos = { x = -644.502, y = 163.970, z = 4202.460 }, rot = { x = 343.969, y = 137.731, z = 353.985 }, level = 32, point_type = 3003, owner = 227010, area_id = 32 },
	{ config_id = 227012, gadget_id = 70500000, pos = { x = -644.370, y = 163.970, z = 4202.320 }, rot = { x = 343.969, y = 137.731, z = 353.985 }, level = 32, point_type = 3003, owner = 227010, area_id = 32 },
	{ config_id = 227013, gadget_id = 70290003, pos = { x = -645.222, y = 163.648, z = 4199.368 }, rot = { x = 13.856, y = 294.699, z = 12.751 }, level = 32, area_id = 32 },
	{ config_id = 227014, gadget_id = 70500000, pos = { x = -645.138, y = 163.751, z = 4199.333 }, rot = { x = 13.856, y = 294.699, z = 12.751 }, level = 32, point_type = 3003, owner = 227013, area_id = 32 },
	{ config_id = 227015, gadget_id = 70500000, pos = { x = -645.315, y = 163.751, z = 4199.408 }, rot = { x = 13.856, y = 294.699, z = 12.751 }, level = 32, point_type = 3003, owner = 227013, area_id = 32 },
	{ config_id = 227016, gadget_id = 70330450, pos = { x = -683.381, y = 143.918, z = 4206.486 }, rot = { x = 349.561, y = 206.314, z = 330.333 }, level = 32, area_id = 32 },
	{ config_id = 227017, gadget_id = 70500000, pos = { x = -683.381, y = 143.918, z = 4206.486 }, rot = { x = 349.559, y = 206.311, z = 330.334 }, level = 32, point_type = 3012, owner = 227016, area_id = 32 }
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
		gadgets = { 227001, 227002, 227003, 227004, 227005, 227006, 227007, 227008, 227009, 227010, 227011, 227012, 227013, 227014, 227015, 227016, 227017 },
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