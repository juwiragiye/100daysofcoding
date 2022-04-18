from ast import List
from fastapi import APIRouter, Body
from schemas.joke import Joke

from schemas import joke
from crud import crud_joke


router = APIRouter()


@router.get('/')
def read_items():
    return {"error": "TODO"}


@router.post('/')
def create_item(joke: Joke = Body(...)):
    post = crud_joke.joke.create_with_owner(obj_in=joke)
    return {"success": post}
