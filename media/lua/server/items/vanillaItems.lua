-- Adds JunkiezShake to the end of a string
function AppendRecipe(recipe)
    appendedRecipe = string.sub(recipe, 1, -2)
    appendedRecipe = (appendedRecipe .. ";JunkiezShake:5,")
    return appendedRecipe
end

local honey = ScriptManager.instance:getItem("Base.Honey")
if honey then
    honey:DoParam("EvolvedRecipe = JunkiezShake:5")
end