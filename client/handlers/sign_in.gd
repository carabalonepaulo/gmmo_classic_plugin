extends ClientPacketHandler


const SignInResponse := preload("res://plugins/classic/packets/responses/sign_in.gd")


func _init(): header = 102

func process(packet: SignInResponse) -> void:
    print(packet.result == OK)
