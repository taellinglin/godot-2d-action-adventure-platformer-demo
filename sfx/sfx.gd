extends Node

var cursori = 0
var maxitems = 2;
var menumode = true
var cursor = preload("res://sfx/cursor.wav") # you can use load() instead
var select =  preload("res://sfx/select.wav")
var back = preload("res://sfx/back.wav")

var cursorsfx = AudioStreamPlayer.new()
var selectsfx = AudioStreamPlayer.new()
var backsfx = AudioStreamPlayer.new()

func _ready():
	set_process_input(true);
	cursorsfx.stream = cursor;
	selectsfx.stream = select;
	backsfx.stream = back;
	add_child(cursorsfx)
	add_child(selectsfx)	
	add_child(backsfx)
	
func sfx_cursor():
	cursorsfx.play()
	
func sfx_select():
	selectsfx.play()
	
func sfx_back():
	backsfx.play()
	
func _input(event):
	if (menumode):
		if(event.is_action_pressed("ui_up")):
			if(cursori > 0):
				sfx_cursor();
				cursori -=1;
		if(event.is_action_pressed("ui_down")):
			if(cursori < maxitems):
				sfx_cursor();
				cursori += 1;
			
		if(event.is_action_pressed("ui_select")):
			sfx_select();
			
		if(event.is_action_pressed("ui_cancel")):
			sfx_back();
		
	
