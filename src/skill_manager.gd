extends Node

# Manages power-up cards and skills
var skills = {
    "fire_stone": {
        "name": "Fire Stone",
        "effect": "Increases damage for the next throw.",
        "animation": "fire_effect"
    },
    "accuracy_boost": {
        "name": "Accuracy Boost",
        "effect": "Boosts accuracy, ignoring weather conditions.",
        "animation": "accuracy_effect"
    },
    "shield": {
        "name": "Shield",
        "effect": "Blocks the next incoming attack.",
        "animation": "shield_effect"
    }
}

func use_skill(player, skill_id):
    if skill_id in skills:
        var skill = skills[skill_id]
        print("Player", player.player_id, "is using skill:", skill["name"])
        apply_effect(player, skill_id)

func apply_effect(player, skill_id):
    match skill_id:
        "fire_stone":
            print("Damage boost applied to Player", player.player_id)
        "accuracy_boost":
            print("Accuracy improved for Player", player.player_id)
        "shield":
            print("Shield activated for Player", player.player_id)
    # Placeholder for skill animations
    play_animation(skill_id)

func play_animation(skill_id):
    print("Playing animation for skill:", skills[skill_id]["animation"])