extends Area2D

var dragging = false
var pos
var gridPos

signal dragsignal;
signal dropsignal;

func _ready():
	pos = position
	connect("dragsignal",_set_drag_pc)
	connect("dropsignal", _drop)
	
	
func _process(delta):
	if dragging:
		var mousepos = get_viewport().get_mouse_position()
		self.global_position = Vector2(mousepos.x, mousepos.y)

		

func _set_drag_pc():
	dragging=!dragging
	print_debug("drag and drop " + str(dragging))

func _drop():
	self.position = pos
	
	print_debug("drop")


func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			emit_signal("dragsignal")
		elif event.button_index == MOUSE_BUTTON_LEFT and !event.pressed:
			emit_signal("dragsignal")
			emit_signal("dropsignal")
	elif event is InputEventScreenTouch:
		if event.pressed and event.get_index() == 0:
			self.position = event.get_position()


func _on_area_entered(area):
	
	print_debug(area.get_parent().gridPosition)
	pos = area.global_position
	self.gridPos = area.get_parent().gridPosition
