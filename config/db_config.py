from orator import DatabaseManager
from orator import Model


def configure():
    config = {
        'sqlite': {
            'driver': 'sqlite',
            'database': 'db/cp_chiepherd.db'
        }
    }

    db = DatabaseManager(config)
    Model.set_connection_resolver(db)
