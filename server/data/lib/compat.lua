-- https://otland.net/threads/oop-classes-for-older-tfs-versions-0-3-x-0-4x.243414/

Creature = {}
Player = {}
Monster = {}
Npc = {}
Game = {}
Condition = {}
Combat = {}

function createClass(class, inheritance)
   setmetatable(class, {
   __index = inheritance and inheritance or nil,
   __call =
   function(self, cid)
     if not cid then
       self = {__index = class}
       setmetatable(self, self)
       return self
     end
     local cid = type(cid) == "number" and cid or type(cid) == "string" and getPlayerByNameWildcard(cid)
     if cid then
       if not self[cid] then
         self[cid] = {__index = class}
         setmetatable(self[cid], self[cid])
         self[cid].cid = cid
         return self[cid]
       else
         return self[cid]
       end
     else
       return nil
     end
   end
   })
end

createClass(Creature)
createClass(Player, Creature)
createClass(Monster, Creature)
createClass(Npc, Creature)
createClass(Game)
createClass(Condition)
createClass(Combat)

-- access metatable functions from creature
function Creature:getPlayer() return Player(self.cid) end
function Creature:getMonster() return Monster(self.cid) end
function Creature:getNpc() return Npc(self.cid) end

-- Creature
-- Creature get functions
function Creature:getId() return self.cid end
function Creature:getName() return getCreatureName(self.cid) end
function Creature:getHealth() return getCreatureHealth(self.cid) end
function Creature:getMaxHealth() return getCreatureMaxHealth(self.cid) end
function Creature:getMana() return getCreatureMana(self.cid) end
function Creature:getMaxMana() return getCreatureMaxMana(self.cid) end
function Creature:getStorageValue(id) return getCreatureStorageValue(self.cid, id) end
function Creature:getHiddenHealth() return getCreatureHideHealth(self.cid) end
function Creature:getSpeakType() return getCreatureSpeakType(self.cid) end
function Creature:getLookDirection() return getCreatureLookDirection(self.cid) end

-- Creature set functions
function Creature:setMaxHealth(health) return setCreatureMaxHealth(self.cid, health) end
function Creature:setMaxMana(mana) return setCreatureMaxMana(self.cid, mana) end
function Creature:setStorageValue(storage, value) return setCreatureStorageValue(self.cid, storage, value) end
function Creature:setHiddenHealth(hide) doCreatureSetHideHealth(self.cid, hide) end
function Creature:setSpeakType(type) doCreatureSetSpeakType(self.cid, type) end

-- Creature misc. functions
function Creature:teleportTo(newpos, pushmove) doTeleportThing(self.cid, newpos, pushmove or false) end
function Creature:addHealth(health, hitEffect, hitColor, force) doCreatureAddHealth(self.cid, health, hitEffect, hitColor, force) end
function Creature:addMana(mana) doCreatureAddMana(self.cid, mana) end
function Creature:say(text, type, ghost, cid, pos) doCreatureSay(self.cid, text, type or SPEAK_SAY, ghost or false, cid or 0, pos) end
function Creature:addCondition(condition) doAddCondition(self.cid, condition) end
function Creature:removeCondition(onlyPersistent, type, subId) if onlyPersistent then doRemoveConditions(self.cid, onlyPersistent) else doRemoveCondition(self.cid, type, subId) end end
function Creature:moveCreature(direction) doMoveCreature(self.cid, direction) end
function Creature:isCreature() return isCreature(self.cid) end
function Creature:isPlayer() return isPlayer(self.cid) end
function Creature:isMonster() return isMonster(self.cid) end
function Creature:isNpc() return isNpc(self.cid) end
function Creature:remove(forceLogout) doRemoveCreature(self.cid, forceLogout or true) end

-- Player
-- Player get functions
function Player:getLevel() return getPlayerLevel(self.cid) end
function Player:getExperience() return getPlayerExperience(self.cid) end
function Player:getMagicLevel(ignoreBuffs) return getPlayerMagLevel(self.cid, ignoreBuffs) end
function Player:getManaSpent() return getPlayerSpentMana(self.cid) end
function Player:getFood() return getPlayerFood(self.cid) end
function Player:getAccess() return getPlayerAccess(self.cid) end
function Player:getGhostAccess() return getPlayerGhostAccess(self.cid) end
function Player:getSkillLevel(skillid) return getPlayerSkillLevel(self.cid, skillid) end
function Player:getSkillTries(skillid) return getPlayerSkillTries(self.cid, skillid) end
function Player:getTown() return getPlayerTown(self.cid) end
function Player:getVocation() return getPlayerVocation(self.cid) end
function Player:getBaseVocation() local vocation = self:getVocation(); return vocation > 4 and vocation - 4 or vocation end
function Player:getIp() return getPlayerIp(self.cid) end
function Player:getRequiredMana(magicLevel) return getPlayerRequiredMana(self.cid, magicLevel) end
function Player:getRequiredSkillTries(skillId, skillLevel) return getPlayerRequiredSkillTries(self.cid, skillId, skillLevel) end
function Player:getItemCount(itemid, subType) return getPlayerItemCount(self.cid, itemid, subType or -1) end
function Player:getMoney() return getPlayerMoney(self.cid) end
function Player:getSoul() return getPlayerSoul(self.cid) end
function Player:getCap() return getPlayerFreeCap(self.cid) end
function Player:getLight() return getPlayerLight(self.cid) end
function Player:getSlotItem(slot) return getPlayerSlotItem(self.cid, slot) end

-- Player set functions
function Player:setMaxCap(cap) doPlayerSetMaxCapacity(self.cid, cap) end
function Player:setTown(townid) doPlayerSetTown(self.cid, townid) end
function Player:setVocation(vocation) doPlayerSetVocation(self.cid, vocation) end


-- Player send functions
function Player:sendCancelMsg(text) doPlayerSendCancel(self.cid, text) end
function Player:sendDefaultCancelMsg(ReturnValue) doPlayerSendDefaultCancel(self.cid, ReturnValue) end
function Player:sendTextMessage(MessageClasses, message) doPlayerSendTextMessage(self.cid, MessageClasses, message) end
function Player:sendChannelMessage(author, message, SpeakClasses, channel) doPlayerSendChannelMessage(self.cid, author, message, SpeakClasses, channel) end
function Player:sendToChannel(targetId, SpeakClasses, message, channel, time) doPlayerSendToChannel(self.cid, targetId, SpeakClasses, message, channel, time) end
function Player:addMoney(money) doPlayerAddMoney(self.cid, money) end
function Player:removeMoney(money) doPlayerRemoveMoney(self.cid, money) end
function Player:transferMoney(target, money) doPlayerTransferMoneyTo(self.cid, target, money) end
function Player:showTextDialog(itemid, text) doShowTextDialog(self.cid, itemid, text) end
function Player:addSkillTries(skillid, n, useMultiplier) doPlayerAddSkillTry(self.cid, skillid, n, useMultiplier or false) end

-- Player misc. functions
function Player:feed(food) doPlayerFeed(self.cid, food) end
function Player:addSpentMana(amount, useMultiplier) doPlayerAddSpentMana(self.cid, amount, useMultiplier) end
function Player:addSoul(soul) doPlayerAddSoul(self.cid, soul) end
function Player:addItem(itemid, count, canDropOnMap, subtype) return doPlayerAddItem(self.cid, itemid, count, canDropOnMap, subtype) end
function Player:addItemEx(uid, canDropOnMap) return doPlayerAddItemEx(self.cid, uid, canDropOnMap or false) end
function Player:addExperience(amount) doPlayerAddExperience(self.cid, amount) end
function Player:savePlayer(shallow) doPlayerSave(self.cid, shallow or false) end
function Player:isPzLocked() return isPzLocked(self.cid) end

-- Game
function Game.getStorageValue(key) return getGlobalStorageValue(key) end
function Game.setStorageValue(key, value) setGlobalStorageValue(key, value) end
function Game.getChannelUsers(channelId) return getChannelUsers(channelId) end
function Game.setWorldType(type) return setWorldType(type) end
function Game.getWorldType() return getWorldType() end
function Game.getSpectators(centerPos, rangex, rangey, multifloor) return getSpecators(centerPos, rangex, rangey, multifloor or false) end
function Game.getPlayers() return getPlayersOnline() end
function Game.getExperienceStage(level) return getExperienceStage(level) end
function Game.getGameState() return getGameState() end
function Game.setGameState(state) return doSetGameState(state) end
function Game.startRaid(raid) return doExecuteRaid(raid) end
function Game.createItem(itemId, count, position) return doCreateItem(itemId, count, position) end
function Game.createMonster(name, pos, extend, force, displayError) return doCreateMonster(name, pos, extend or false, force or false, displayError or true) end
function Game.createNpc(name, pos, displayError) return doCreateNpc(name, pos, displayError or true) end

-- Condition
--

-- Combat
--