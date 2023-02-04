local e = require(DNDEEZTOGON.path .. "enums")

local ONE_SECOND = 30
local INVINCIBLE = -1

local this = {
    DEFAULT =
    {
        DAMAGE = 2,
        SEARCH_RANGE = 120,
        LIFETIME = ONE_SECOND*20,
        VELOCITY = 6,
        MOVE_RANDOMNESS_IDLE = 2,
        MOVE_RANDOMNESS_ACTIVE = 3,
        SPRITESHEET = "homunculi_generic",
        COLOR = Color(0.5, 0.5, 0.5),
    },


    [PickupVariant.PICKUP_HEART] =
    {
        [HeartSubType.HEART_FULL] =
        {
            DAMAGE = 2,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*20,
            VELOCITY = 6,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 3,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.753, 0.208, 0.286),
        },
        [HeartSubType.HEART_HALF] =
        {
            DAMAGE = 1,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*20,
            VELOCITY = 6,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 3,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.753, 0.208, 0.286),
        },
        [HeartSubType.HEART_SOUL] =
        {
            DAMAGE = 3,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*45,
            VELOCITY = 10,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 3,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.427, 0.565, 0.698),
        },
        [HeartSubType.HEART_ETERNAL] =
        {
            DAMAGE = 4,
            SEARCH_RANGE = 180,
            LIFETIME = ONE_SECOND*90,
            VELOCITY = 10,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 3,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.858, 0.843, 0.910),
        },
        [HeartSubType.HEART_DOUBLEPACK] =
        {
            DAMAGE = 2,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*40,
            VELOCITY = 6,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 3,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.753, 0.208, 0.286),
        },
        [HeartSubType.HEART_BLACK] =
        {
            DAMAGE = 3,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*45,
            VELOCITY = 10,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 3,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.263, 0.263, 0.263),
        },
        [HeartSubType.HEART_GOLDEN] =
        {
            DAMAGE = 4,
            SEARCH_RANGE = 180,
            LIFETIME = ONE_SECOND*240,
            VELOCITY = 12,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 3,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(1, 1, 0.529),
        },
        [HeartSubType.HEART_HALF_SOUL] =
        {
            DAMAGE = 1,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*45,
            VELOCITY = 10,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 3,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.427, 0.565, 0.698),
        },
        [HeartSubType.HEART_SCARED] =
        {
            DAMAGE = 2,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*20,
            VELOCITY = 12,
            MOVE_RANDOMNESS_IDLE = 6,
            MOVE_RANDOMNESS_ACTIVE = 9,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.753, 0.208, 0.286),
        },
        [HeartSubType.HEART_BLENDED] =
        {
            DAMAGE = 2,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*30,
            VELOCITY = 8,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 3,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.427, 0.565, 0.698),
        },
        [HeartSubType.HEART_BONE] =
        {
            DAMAGE = 4,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*30,
            VELOCITY = 8,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 3,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.710, 0.702, 0.624),
        },
    },


    [PickupVariant.PICKUP_COIN] =
    {
        [CoinSubType.COIN_PENNY] =
        {
            DAMAGE = 1,
            SEARCH_RANGE = 180,
            LIFETIME = ONE_SECOND*20,
            VELOCITY = 15,
            MOVE_RANDOMNESS_IDLE = 10,
            MOVE_RANDOMNESS_ACTIVE = 4,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.776, 0.561, 0.235),
        },
        [CoinSubType.COIN_NICKEL] =
        {
            DAMAGE = 2,
            SEARCH_RANGE = 180,
            LIFETIME = ONE_SECOND*40,
            VELOCITY = 15,
            MOVE_RANDOMNESS_IDLE = 10,
            MOVE_RANDOMNESS_ACTIVE = 4,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.365, 0.365, 0.365),
        },
        [CoinSubType.COIN_DIME] =
        {
            DAMAGE = 3,
            SEARCH_RANGE = 180,
            LIFETIME = ONE_SECOND*60,
            VELOCITY = 15,
            MOVE_RANDOMNESS_IDLE = 10,
            MOVE_RANDOMNESS_ACTIVE = 4,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.667, 0.667, 0.667),
        },
        [CoinSubType.COIN_DOUBLEPACK] =
        {
            DAMAGE = 2,
            SEARCH_RANGE = 180,
            LIFETIME = ONE_SECOND*30,
            VELOCITY = 15,
            MOVE_RANDOMNESS_IDLE = 10,
            MOVE_RANDOMNESS_ACTIVE = 4,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.776, 0.561, 0.235),
        },
        [CoinSubType.COIN_LUCKYPENNY] =
        {
            DAMAGE = 2,
            SEARCH_RANGE = 180,
            LIFETIME = ONE_SECOND*20,
            VELOCITY = 15,
            MOVE_RANDOMNESS_IDLE = 10,
            MOVE_RANDOMNESS_ACTIVE = 4,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.776, 0.661, 0.235),
        },
        [CoinSubType.COIN_STICKYNICKEL] =
        {
            DAMAGE = 3,
            SEARCH_RANGE = 180,
            LIFETIME = ONE_SECOND*40,
            VELOCITY = 15,
            MOVE_RANDOMNESS_IDLE = 10,
            MOVE_RANDOMNESS_ACTIVE = 4,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.365, 0.365, 0.365),
        },
        [CoinSubType.COIN_GOLDEN] =
        {
            DAMAGE = 2,
            SEARCH_RANGE = 180,
            LIFETIME = ONE_SECOND*60,
            VELOCITY = 15,
            MOVE_RANDOMNESS_IDLE = 10,
            MOVE_RANDOMNESS_ACTIVE = 4,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.776, 0.561, 0.235),
        }
    },


    [PickupVariant.PICKUP_KEY] =
    {
        [KeySubType.KEY_NORMAL] =
        {
            DAMAGE = 3,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*60,
            VELOCITY = 10,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 1,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(1, 1, 1),
        },
        [KeySubType.KEY_GOLDEN] =
        {
            DAMAGE = 3,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*240,
            VELOCITY = 10,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 1,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(1, 0.820, 0.384),
        },
        [KeySubType.KEY_DOUBLEPACK] =
        {
            DAMAGE = 3,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*120,
            VELOCITY = 10,
            MOVE_RANDOMNESS_IDLE = 2,
            MOVE_RANDOMNESS_ACTIVE = 1,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(1, 1, 1),
        },
        [KeySubType.KEY_CHARGED] =
        {
            DAMAGE = 3,
            SEARCH_RANGE = 120,
            LIFETIME = ONE_SECOND*60,
            VELOCITY = 15,
            MOVE_RANDOMNESS_IDLE = 3,
            MOVE_RANDOMNESS_ACTIVE = 3,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(1, 1, 1),
        },
    },


    [PickupVariant.PICKUP_BOMB] =
    {
        [BombSubType.BOMB_NORMAL] =
        {
            DAMAGE = 3,
            SEARCH_RANGE = 90,
            LIFETIME = ONE_SECOND*30,
            VELOCITY = 4,
            MOVE_RANDOMNESS_IDLE = 3,
            MOVE_RANDOMNESS_ACTIVE = 1,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.263, 0.263, 0.263),
        },
        [BombSubType.BOMB_DOUBLEPACK] =
        {
            DAMAGE = 3,
            SEARCH_RANGE = 90,
            LIFETIME = ONE_SECOND*60,
            VELOCITY = 4,
            MOVE_RANDOMNESS_IDLE = 3,
            MOVE_RANDOMNESS_ACTIVE = 1,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.263, 0.263, 0.263),
        },
        [BombSubType.BOMB_GOLDEN] =
        {
            DAMAGE = 4,
            SEARCH_RANGE = 90,
            LIFETIME = ONE_SECOND*90,
            VELOCITY = 6,
            MOVE_RANDOMNESS_IDLE = 3,
            MOVE_RANDOMNESS_ACTIVE = 1,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(1, 0.890, 0),
        },
    },


    [PickupVariant.PICKUP_PILL] =
    {
        DAMAGE = 4,
        SEARCH_RANGE = 240,
        LIFETIME = ONE_SECOND*30,
        VELOCITY = 3,
        MOVE_RANDOMNESS_IDLE = 8,
        MOVE_RANDOMNESS_ACTIVE = 8,
        SPRITESHEET = "homunculi_generic",
        COLOR = Color(0.6, 0, 1),
    },


    [PickupVariant.PICKUP_TAROTCARD] =
    {
        DAMAGE = 4,
        SEARCH_RANGE = 90,
        LIFETIME = ONE_SECOND*30,
        VELOCITY = 12,
        MOVE_RANDOMNESS_IDLE = 8,
        MOVE_RANDOMNESS_ACTIVE = 2,
        SPRITESHEET = "homunculi_generic",
        COLOR = Color(0.482, 0.365, 0.184),
    },


    [PickupVariant.PICKUP_COLLECTIBLE] =
    {
        [e.ITEMS.BORGIR] =
        {
            DAMAGE = 999,
            SEARCH_RANGE = 1200,
            LIFETIME = INVINCIBLE,
            VELOCITY = 20,
            MOVE_RANDOMNESS_IDLE = 15,
            MOVE_RANDOMNESS_ACTIVE = 5,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.668, 0.477, 0.286),
        }
    },


    [PickupVariant.PICKUP_BED] =
    {
        [BedSubType.BED_ISAAC] =
        {
            DAMAGE = 6,
            SEARCH_RANGE = 240,
            LIFETIME = ONE_SECOND*120,
            VELOCITY = 4,
            MOVE_RANDOMNESS_IDLE = 1,
            MOVE_RANDOMNESS_ACTIVE = 2,
            SPRITESHEET = "homunculi_generic",
            COLOR = Color(0.706, 0.620, 0.529),
        }
    }
}
return this