-- Gamejunkiez: getEvolvedRecipe():add and DoParam do NOT work as of b42.3! This script is currently not working properly.Template:Salad in supplementevolvedrecipes is a workaround until fixed.

-- Sets a vanilla ingredient as a valid shake crafting item for the blender bottle shake.
function SetBlenderShakeIngredient(itemName, hungerValue)
	local item = ScriptManager.instance:getItem("Base." .. itemName)
	if item then
		print("Adding " .. itemName .. " as an ingredient for a blended shake for " .. hungerValue .. " hunger.")
		item:getEvolvedRecipe():add("JunkiezBlendedShake:" .. hungerValue)
		print("Final EvolvedRecipe Parameters for: " .. itemName)
		print(item:getEvolvedRecipe())
	else
		print("ERROR: SetBlenderShakeIngredient could not find item: " .. itemName)
	end
end
-- Sets a vanilla ingredient as a valid shake crafting item for the plastic bottle shake.
function SetShakeIngredient(itemName, hungerValue)
	local item = ScriptManager.instance:getItem("Base." .. itemName)
	if item then
		print("Adding " .. itemName .. " as an ingredient for a blended shake for " .. hungerValue .. " hunger.")
		item:getEvolvedRecipe():add("JunkiezBlendedShake:" .. hungerValue)
		print("Final EvolvedRecipe Parameters for: " .. itemName)
		print(item:getEvolvedRecipe())
	else
		print("ERROR: SetShakeIngredient could not find item: " .. itemName)
	end
end

-- Add ingredients for use in creating shakes

-- Canned Foods
SetBlenderShakeIngredient("Apple",4)
SetBlenderShakeIngredient("CannedCarrotsOpen",4)