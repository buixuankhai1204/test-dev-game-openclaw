extends Node

# Manages end-of-match result calculations

func calculate_winner(players):
    var max_damage = -1
    var winner = null

    for player in players:
        var damage = player.get_damage_dealt()
        print("Player", player.player_id, "dealt", damage, "damage.")
        if damage > max_damage:
            max_damage = damage
            winner = player

    if winner:
        print("Player", winner.player_id, "wins with", max_damage, "damage!")
        return winner
    else:
        print("Match resulted in a draw!")
        return null