function FocusModule:init(handler)
	FOCUS_GREETSWORDS = {'hi', 'hello'}
	FOCUS_FAREWELLSWORDS = {'bye', 'farewell'}
	self.npcHandler = handler
	for i, word in pairs(FOCUS_GREETSWORDS) do
		local obj = {}
		table.insert(obj, word)
		obj.callback = FOCUS_GREETSWORDS.callback or FocusModule.messageMatcher
		handler.keywordHandler:addKeyword(obj, FocusModule.onGreet, {module = self})
	end

	for i, word in pairs(FOCUS_FAREWELLSWORDS) do
		local obj = {}
		table.insert(obj, word)
		obj.callback = FOCUS_FAREWELLSWORDS.callback or FocusModule.messageMatcher
		handler.keywordHandler:addKeyword(obj, FocusModule.onFarewell, {module = self})
	end

	return true
end