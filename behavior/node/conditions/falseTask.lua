------------------------------------------------------------------------------------------------------
-- 行为树 动作节点
------------------------------------------------------------------------------------------------------
local _G            = _G
local os            = os
local xml           = xml
local next          = next
local type          = type
local table         = table
local print         = print
local error         = error
local pairs         = pairs
local string        = string
local assert        = assert
local ipairs        = ipairs
local rawget        = rawget
local getfenv       = getfenv
local tostring      = tostring
local setmetatable  = setmetatable
local getmetatable  = getmetatable
------------------------------------------------------------------------------------------------------
local d_ms = require "ms"
------------------------------------------------------------------------------------------------------
local EBTStatus             = d_ms.d_behaviorCommon.EBTStatus
local BehaviorParseFactory  = d_ms.d_behaviorCommon.BehaviorParseFactory
------------------------------------------------------------------------------------------------------
module "behavior.node.conditions.orTask"
------------------------------------------------------------------------------------------------------
class("cFalseTask", d_ms.d_conditionBaseTask.cConditionBaseTask)
ADD_BEHAVIAC_DYNAMIC_TYPE("cFalseTask", cFalseTask)
BEHAVIAC_DECLARE_DYNAMIC_TYPE("cFalseTask", "cConditionBaseTask")
------------------------------------------------------------------------------------------------------
function cFalseTask:__init()
end

function cFalseTask:update(obj, childStatus)
    return EBTStatus.BT_FAILURE
end