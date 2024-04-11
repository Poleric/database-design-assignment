import oracledb

oracledb.init_oracle_client()


def connect_db(username: str, password: str, host: str, port: int, sid: str = "xe") -> oracledb.Connection:
    return oracledb.connect(
        user=username,
        password=password,
        host=host,
        port=port,
        sid=sid
    )
