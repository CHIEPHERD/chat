import logging
from .handler import Consumer


__all__ = ["run"]

LOG_FORMAT = ('%(levelname) -10s %(asctime)s %(name) -30s %(funcName) '
              '-35s %(lineno) -5d: %(message)s')


def run():
    logging.basicConfig(level=logging.INFO, format=LOG_FORMAT)
    example = Consumer('amqp://root:root@192.168.56.100:5672/')
    try:
        example.run()
    except KeyboardInterrupt:
        example.stop()
