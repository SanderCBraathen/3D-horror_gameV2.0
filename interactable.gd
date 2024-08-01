extends CollisionObject3D
class_name Interactable

signal interacted(body)

@export var prompt_message = "Interact"
@export var prompt_input = "Interact"

func get_prompt():
	var key_name = prompt_input
	for action in InputMap.action_get_events(prompt_input):
		if action is InputEventKey:
			key_name = action.as_text_physical_keycode()
			break
	
	#return prompt_message + "\n[" + key_name + "]"
	return prompt_message


func interact(body):
	interacted.emit(body)
