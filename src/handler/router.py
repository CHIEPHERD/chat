class Router:
    def __init__(self):
        pass

    def on_message(self, body, route):
        print("On Message !")

        print(route)
        print(body)
