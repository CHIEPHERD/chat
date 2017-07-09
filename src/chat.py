import logging
from .handler import Consumer


__all__ = ["run"]

LOG_FORMAT = ('%(levelname) -10s %(asctime)s %(name) -30s %(funcName) '
              '-35s %(lineno) -5d: %(message)s')


def run():
    logging.basicConfig(level=logging.INFO, format=LOG_FORMAT)
    sniffer = Consumer('amqp://root:root@192.168.56.200:5672/')
    consumer = Consumer('amqp://root:root@192.168.56.200:5672/', 'chat.#')
    try:
        sniffer.start()
        consumer.start()

        sniffer.join()
        consumer.join()
    except KeyboardInterrupt:
        sniffer.stop()
        consumer.stop()
