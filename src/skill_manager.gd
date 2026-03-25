extends Node

# Improved Skill Manager with Actual Game Effects
var skills = {
    "fire_stone": {
        "name": "Fire Stone",
        "effect": "Increases damage for the next throw.",
        "damage_boost": 20 # Adds 20 extra damage to throws
    },
    "accuracy_boost": {
        "name": "Accuracy Boost",
        "effect": "Boosts accuracy, ignoring weather conditions.",
        "accuracy_boost": true
    },
    "shield": {
        "name": "Shield",
        "effect": "Blocks the next incoming attack."
    }
}

func use_skill(player, skill_id):
    if skill_id in skills:
        var skill = skills[skill_id]
        print("Player", player.player_id, "is using", skill["name"])
        apply_skill_effect(player, skill_id)

func apply_skill_effect(player, skill_id):
    match skill_id:
        "fire_stone":
            player.fire_stone_active = true # Activates damage boost
            print("Player", player.player_id, "gains a damage boost!")
        "accuracy_boost":
            player.accuracy_boost_active = true # Activates accuracy enhancement
            print("Player", player.player_id, "gains boosted accuracy!")
        "shield":
            player.shield_active = true # Activates shield for next attack
            print("Player", player.player_id, "activates a shield!")
    # Add animations or FX hooks