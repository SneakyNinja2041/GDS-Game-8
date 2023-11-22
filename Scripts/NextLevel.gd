extends Node2D

@export var player : Player




func _on_area_2d_area_entered(area):
	if area.get_parent() is Player:
		GameManager.nextLevelLocation = self.position
		
		area.get_parent().LevelPass()

