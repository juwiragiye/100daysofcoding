from typing import Optional
from pydantic import BaseModel
from random import randint


class UserBase(BaseModel):
    username: Optional[str] = "ANON" + str(randint(0, 100_000_000))


class UserAuthenticated(BaseModel):
    username: str
    password: str


class User(UserBase):
    pass
