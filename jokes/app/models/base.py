from ast import Dict, List
from pydantic import TypedDict
from pymongo.collection import Collection


class Base(TypedDict):
    data: List[Collection]
    error: Dict
