@tool
extends ColorRect

var tileColor = Color.LIGHT_GRAY
var modColor = Color.WHITE

var gridPosition

@export var dark : bool = false:
	set(v):
		dark = v
		tileColor = Color.DIM_GRAY if dark else Color.LIGHT_GRAY
		color = tileColor * modColor

@export var red : bool = false:
	set(v):
		red = v
		modColor = Color.INDIAN_RED if red else Color.WHITE
		color = tileColor * modColor
		
@export var blue : bool = false:
	set(v):
		blue = v
		modColor = Color.ROYAL_BLUE if blue else Color.WHITE
		color = tileColor * modColor
		
