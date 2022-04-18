from typing import Optional

from app.schemas.user import User
from .base import Base


class Joke(Base):
    content: str
    author: User
