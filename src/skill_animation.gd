extends Node2D

# Handles animations for player skills

func play_skill_animation(skill_id, position):
    match skill_id:
        "fire_effect":
            spawn_fire_effect(position)
        "accuracy_effect":
            spawn_accuracy_effect(position)
        "shield_effect":
            spawn_shield_effect(position)

func spawn_fire_effect(position):
    print("Playing fire skill animation at position", position)
    # Add particle or animation logic

func spawn_accuracy_effect(position):
    print("Playing accuracy boost animation at position", position)
    # Add particle or animation logic

func spawn_shield_effect(position):
    print("Playing shield activation animation at position", position)
    # Add particle or animation logic