-- Author: 		Rodrigo (Nottinghster) - (OTLand, OTFans, XTibia, OTServBR)
-- Country:		Brazil
-- From: 		Tibia World RPG OldSchool
-- Email: 		god.rodrigo@hotmail.com
-- Compiler:	Tibia World Script Maker (Action)

local pos_realocar = {x=32102, y=32205, z=8}

local pos_ponte = {
[1] = {x=32100, y=32205, z=8},
[2] = {x=32101, y=32205, z=8}
}

local alavancas = {
[1] = {x=32098, y=32204, z=8},
[2] = {x=32104, y=32204, z=8}
}

function onUse(cid, item, frompos, item2, topos)
        if item.itemid == 1945 then
                doCreateItem(1284,pos_ponte[1])
				doCreateItem(1284,pos_ponte[2]) 
				
                for i=1,#alavancas do
                        if alavancas[i].x == frompos.x then
                                o = i
                        end
                end
                if o == 1 then
                        b = 2
                else
                        b = 1
                end
                doTransformItem(item.uid,item.itemid+1)
                doTransformItem(getTileItemById(alavancas[b],1945).uid,1946)
        elseif item.itemid == 1946 then
                for p = 1,#pos_ponte do
                doRelocate(pos_ponte[p], pos_realocar)
                end
                for z = 1,#pos_ponte do
                pos_ponte[z].stackpos = 1
                if getThingfromPos(pos_ponte[z]).itemid > 1000 then
                    doRemoveItem(getThingfromPos(pos_ponte[z]).uid)
                end
                end	
                for i=1,#alavancas do
                    if alavancas[i].x == topos.x then
                        o = i
                    end
                end
                if o == 1 then
                        b = 2
                else
                        b = 1
                end
               
				doCreateItem(493,pos_ponte[1])
				doCreateItem(493,pos_ponte[2])
				doCreateItem(4799,pos_ponte[1])
                doCreateItem(4797,pos_ponte[2])	
				
                doTransformItem(item.uid,item.itemid-1)
                doTransformItem(getTileItemById(alavancas[b],1946).uid,1945)
        end
        return TRUE
end 