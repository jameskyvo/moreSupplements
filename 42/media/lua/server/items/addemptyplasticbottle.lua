-- Add an empty plastic bottle if the player drinks a protein shake
function OnEat_JunkiezProteinShake(food, character, percentage)
    if percentage == 1 then
        print("Player has drank a protein shake, adding bottle.")
        local waterBottle = character:getInventory():AddItem("Base.WaterBottle")
        if waterBottle then
            waterBottle:getFluidContainer():Empty()
        end
    else
        print("Player has drank a portion of the protein shake.")
    end
end