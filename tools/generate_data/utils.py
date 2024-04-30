from functools import wraps
from typing import Callable, TextIO


def paginate_insert_all[T, **P](f: Callable[P, T], increment: int = 1, every_n: int = 500, fp: TextIO = None) -> Callable[P, T]:
    @wraps(f)
    def wrapper(*args: P.args, **kwargs: P.kwargs):
        if not hasattr(wrapper, 'count'):
            wrapper.count = 0
            if fp is not None:
                fp.write("INSERT ALL\n")
            else:
                print("INSERT ALL")

        f(*args, **kwargs)
        wrapper.count += increment

        if wrapper.count >= every_n:
            if fp is not None:
                fp.write("SELECT 1 FROM DUAL;\n")
                fp.write("INSERT ALL\n")
            else:
                print("SELECT 1 FROM DUAL;")
                print("INSERT ALL")
            wrapper.count = 0

    return wrapper


def unique[T, **P](f: Callable[P, T]) -> Callable[P, T]:
    @wraps(f)
    def wrapper(*args: P.args, **kwargs: P.kwargs) -> T:
        if not hasattr(wrapper, 'used'):
            wrapper.used = set()

        while 1:
            out = f(*args, **kwargs)
            if out not in wrapper.used:
                break

        wrapper.used.add(out)
        return out

    return wrapper
