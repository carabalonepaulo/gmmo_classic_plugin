extends ServerPacketHandler


const SignUpRequest := preload("res://plugins/classic/packets/requests/sign_up.gd")
const SignUpResponse := preload("res://plugins/classic/packets/responses/sign_up.gd")


func _init(): header = 103

func can_process() -> bool:
    return true

func process(packet: SignUpRequest) -> void:
    var response := SignUpResponse.new()
    response.result = OK
    reply(response)