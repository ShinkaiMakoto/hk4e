-- 基础信息
local base_info = {
	group_id = 111101035
}

-- Trigger变量
local defs = {
	pointarray_ID = 110100049
}

-- DEFS_MISCS
--旋转的时间间隔
defs.RotateTime = 5

--方尖碑configID
defs.gadget_1
defs.gadget_2
defs.gadget_3

--方尖碑初始旋转角
defs.rotation_1
defs.rotation_2
defs.rotation_3

--重力压板对应的控制的方尖碑
defs.boardControlList={
[35004]={35001,35002},
[35005]={35002},
[35006]={35002,35003},
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
	{ config_id = 35001, gadget_id = 70330302, pos = { x = 2981.833, y = 263.910, z = -1349.736 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 35002, gadget_id = 70330302, pos = { x = 2981.837, y = 263.453, z = -1352.842 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 35003, gadget_id = 70330302, pos = { x = 2981.902, y = 263.021, z = -1355.791 }, rot = { x = 0.000, y = 270.000, z = 0.000 }, level = 1, is_use_point_array = true },
	{ config_id = 35004, gadget_id = 70330304, pos = { x = 2978.914, y = 263.594, z = -1349.786 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 35005, gadget_id = 70330304, pos = { x = 2978.836, y = 263.184, z = -1352.805 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 35006, gadget_id = 70330304, pos = { x = 2978.700, y = 262.798, z = -1355.677 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
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
		gadgets = { 35001, 35002, 35003, 35004, 35005, 35006 },
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

require "V3_1/DesertRotObelisk_Auto"