local ITEM_RUM_FLASK = 5553
local ITEM_POOL = 2016

local oilLamps = {[2046] = 2044}

local alcoholDrinks = {FLUID_BEER, FLUID_WINE, FLUID_RUM, FLUID_MEAD}
local poisonDrinks = {FLUID_SLIME}

local drunk = createConditionObject(CONDITION_DRUNK)
setConditionParam(drunk, CONDITION_PARAM_TICKS, 60000)

local poison = createConditionObject(CONDITION_POISON)
setConditionParam(poison, CONDITION_PARAM_DELAYED, true) -- Condition will delay the first damage from when it's added
setConditionParam(poison, CONDITION_PARAM_MINVALUE, -50) -- Minimum damage the condition can do at total
setConditionParam(poison, CONDITION_PARAM_MAXVALUE, -120) -- Maximum damage
setConditionParam(poison, CONDITION_PARAM_STARTVALUE, -5) -- The damage the condition will do on the first hit
setConditionParam(poison, CONDITION_PARAM_TICKINTERVAL, 4000) -- Delay between damages
setConditionParam(poison, CONDITION_PARAM_FORCEUPDATE, true) -- Re-update condition when adding it(ie. min/max value)


local lifeFluidCombat = createCombatObject()
setCombatParam(lifeFluidCombat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(lifeFluidCombat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(lifeFluidCombat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(lifeFluidCombat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)

function onGetLifeFluidFormulaValues(cid, level, maglevel)
	return 40, 70
end

setCombatCallback(lifeFluidCombat, CALLBACK_PARAM_LEVELMAGICVALUE, "onGetLifeFluidFormulaValues")


local exhaust = createConditionObject(CONDITION_EXHAUST_POTION)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, getConfigInfo('minactionexinterval'))




function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(toPosition.x == 0 and toPosition.y == 0 and toPosition.z == 0) then
		itemEx = item
		toPosition = getThingPos(item.uid)
	end

	if(itemEx.uid == cid) then -- Player is using on himself
		if(item.type == FLUID_NONE) then
			doPlayerSendCancel(cid, "It is empty.")
			return true
		end

		if(hasCondition(cid, CONDITION_EXHAUST_POTION) ) then
			doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUAREEXHAUSTED)
			return true
		end

		if(item.type == FLUID_MANA) then
			if not doPlayerAddMana(cid, math.random(50, 150)) then
				return false
			end
			doCreatureSay(cid, "Aaaah...", TALKTYPE_SAY)
			doSendMagicEffect(toPosition, CONST_ME_MAGIC_BLUE)
		elseif(item.type == FLUID_LIFE) then
			if not doCombat(cid, lifeFluidCombat, numberToVariant(cid)) then
				return false
			end
			doCreatureSay(cid, "Aaaah...", TALKTYPE_SAY)
			doSendMagicEffect(toPosition, CONST_ME_MAGIC_BLUE)
		elseif(isInArray(alcoholDrinks, item.type) ) then
			if not doTargetCombatCondition(0, cid, drunk, CONST_ME_NONE) then
				return false
			end
			doCreatureSay(cid, "Aaah...", TALKTYPE_SAY)
		elseif(isInArray(poisonDrinks, item.type) ) then
			if not doTargetCombatCondition(0, cid, poison, CONST_ME_NONE) then
				return false
			end
		else
			doCreatureSay(cid, "Gulp.", TALKTYPE_SAY)
		end
		doAddCondition(cid, exhaust)
		doChangeTypeItem(item.uid, FLUID_NONE)
		return true
	end

	if(isCreature(itemEx.uid) == false) then
		if(item.type == FLUID_NONE) then
			if(item.itemid == ITEM_RUM_FLASK and isInArray(DISTILLERY, itemEx.itemid) ) then
				if(itemEx.actionid == DISTILLERY_FULL) then
					doSetItemSpecialDescription(itemEx.uid, '')
					doSetItemActionId(itemEx.uid, 0)
					doChangeTypeItem(item.uid, TYPE_RUM)
				else
					doPlayerSendCancel(cid, "You have to process the bunch into the distillery to get rum.")
				end
				return true
			end

			if(isItemFluidContainer(itemEx.itemid) and itemEx.type ~= FLUID_NONE) then
				doChangeTypeItem(item.uid, itemEx.type)
				doChangeTypeItem(itemEx.uid, FLUID_NONE)
				return true
			end

			local fluidSource = getFluidSourceType(itemEx.itemid)
			if(fluidSource ~= -1) then
				doChangeTypeItem(item.uid, fluidSource)
				return true
			end


			doPlayerSendCancel(cid, "It is empty.")
			return true
		end

		if(item.type == FLUID_OIL and oilLamps[itemEx.itemid] ~= nil) then
			doTransformItem(itemEx.uid, oilLamps[itemEx.itemid])
			doChangeTypeItem(item.uid, FLUID_NONE)
			return true
		end

		if(hasProperty(itemEx.uid, CONST_PROP_BLOCKSOLID) ) then
			return false
		end
	end

	if(toPosition.x == CONTAINER_POSITION) then
		toPosition = getThingPos(cid)
	end

	local splash = doCreateItem(ITEM_POOL, item.type, toPosition)
	doDecayItem(splash)

	doChangeTypeItem(item.uid, FLUID_NONE)
	return true
end
