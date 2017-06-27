from .model import User

__all__ = ["run"]


def run():
    users = User.all()

    for user in users:
        print(user.firstname)
