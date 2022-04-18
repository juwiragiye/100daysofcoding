from typing import List

from fastapi.encoders import jsonable_encoder
from schemas.joke import JokeCreate
from schemas.joke import Joke
from db.db import get_db
from pymongo.database import Database
from crud.base import CRUDBase


class CRUDJoke(CRUDBase[Joke]):
    def create_with_owner(
        self, db: Database = get_db(), *, obj_in: JokeCreate,
    ) -> Joke:
        obj_in_data = jsonable_encoder(obj_in)
        db_obj = db.insert_one(self.model(**obj_in))

        return db_obj

    # def get_multi_by_owner(
    #     self, db: Session, *, owner_id: int, skip: int = 0, limit: int = 100
    # ) -> List[Item]:
    #     return (
    #         db.query(self.model)
    #         .filter(Item.owner_id == owner_id)
    #         .offset(skip)
    #         .limit(limit)
    #         .all()
    #     )


joke = CRUDJoke(Joke)
