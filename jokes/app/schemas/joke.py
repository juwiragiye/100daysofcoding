from ast import List
from typing import Dict, Optional
from pydantic import BaseModel

from .user import User


class JokeBase(BaseModel):
    content: Optional[str] = None
    author: Optional[User] = None


class JokeRead(JokeBase):
    likes_count: int


class JokeCreate(JokeBase):
    content: str
    author: User


class Joke(JokeBase):
    pass
