extends Node

var current_checkpoint : Checkpoint

var player : Player


func respawn_player():
	if current_checkpoint != null:
		Player.position = current_checkpoint.global_position

