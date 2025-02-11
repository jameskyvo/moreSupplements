-- Sets a vanilla ingredient as a valid shake crafting item.
function setBlenderShakeIngredient(itemName, hungerValue)
	local item = ScriptManager.instance:getItem("Base." .. itemName)
	if item then
		item:DoParam("EvolvedRecipe = JunkiezBlendedShake:"..hungerValue)
		print("Adding " .. itemName .. " as an ingredient for a blended shake for " .. hungerValue .. " hunger.")
	end
end

function setShakeIngredient(itemName, hungerValue)
	local item = ScriptManager.instance:getItem("Base." .. itemName)
	if item then
		item:DoParam("EvolvedRecipe = JunkiezShake:" .. hungerValue)
		print("Adding " .. itemName .. " as an ingredient for a blended shake for " .. hungerValue .. " hunger.")
	end
end



-- Add ingredients for use in creating shakes

-- Canned Foods
setBlenderShakeIngredient("CannedCarrotsOpen",4)