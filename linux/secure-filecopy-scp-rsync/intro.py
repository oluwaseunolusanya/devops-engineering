# def get_full_name(first: str, last: int):
#     """Return a full name, neatly formatted."""
#     full_name = first + ' ' + last 
#     return full_name

# print(get_full_name('adedamola','Luas'))
from typing import Tuple

# def process_list(items: list[str]):
#     for item in items:
#         print(item.title())

# process_list(['adedamola','luas'])

def process_tuple(items: Tuple[str, int, int]):
    for item in items:
        print(item)

process_tuple(('adedamola',35, 23))