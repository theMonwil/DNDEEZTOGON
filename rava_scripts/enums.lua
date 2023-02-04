local this = {}

this.ITEMS =
{
    RETURNING_DAGGER = Isaac.GetItemIdByName("Returning Dagger"),
    INFUSE = Isaac.GetItemIdByName("Infuse"),
    SUMMON = Isaac.GetItemIdByName("Summon"),
    BORGIR = Isaac.GetItemIdByName("Burger:"),
}

this.FAMILIARS =
{
    HOMUNCULUS = Isaac.GetEntityVariantByName("Artificer's Homunculus")
}

this.CHARACTERS =
{
    RAVA = Isaac.GetPlayerTypeByName("Rava")
}

return this