extends Node2D


var positions : Array
const BOARD_SIZE = 8
# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(8):
		positions.append([])
		for j in range(8):
			positions[i].append(Vector2(30 + $Board.position.x + 60 * j, 30 + $Board.position.y + 60 * i))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
