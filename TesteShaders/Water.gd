tool
extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_zoom_changed()

func _zoom_changed():
	material.set_shader_param("y_zoom", get_viewport().global_canvas_transform.y.y)

func _on_Water_item_rect_changed():
	material.set_shader_param("scale", scale)
