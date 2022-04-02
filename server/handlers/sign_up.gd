extends ServerPacketHandler


const SignUpRequest := preload("res://plugins/classic/packets/requests/sign_up.gd")
const SignUpResponse := preload("res://plugins/classic/packets/responses/sign_up.gd")


func _init(): header = 103

func process(sender_id: int, packet: SignUpRequest) -> void:
    var response := SignUpResponse.new()
    response.result = OK
    send_to(sender_id, response)
