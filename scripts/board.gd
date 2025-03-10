extends HBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	var i = 0
	for row in self.get_children():
		var j = 0
		for tile in row.get_children():
			tile.gridPosition = Vector2(j, i)
			j += 1
		i += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
