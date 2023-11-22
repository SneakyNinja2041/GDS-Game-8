extends Node

@export var current_checkpoint : Checkpoint

var checkpointLocation = Vector2(0, 0)
var nextLevelLocation = Vector2(0, 0)

@export var player : Player


var startLoc = Vector2()
var location #= current_checkpoint.global_position


func next_level():
	print_debug("Teleport To Next Level")
	
	player.global_position = Vector2(nextLevelLocation)
	

func respawn_player():
	if current_checkpoint != null:
		print_debug("Respawned The Player At Checkpoint")
		
		player.global_position = Vector2(checkpointLocation)
		
