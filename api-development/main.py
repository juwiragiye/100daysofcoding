from typing import List, Optional
import uuid
from fastapi import Body, FastAPI
from pydantic import BaseModel, UUID4


app = FastAPI()


class Post(BaseModel):
    title: str
    content: str


@app.get("/")
def root():
    """
    Index ('/') route, returns a message dictionary
    """
    return {"message": "Hello, world!"}


@app.get("/posts")
def read_all_posts() -> dict[str, List[Post]]:
    pass


@app.get("/posts/{id}")
def read_single_post(id: str):
    pass


@app.post("/posts", status_code=201)
def write_single_post(post: Post = Body(...)):
    pass


@app.patch("/posts/{id}", status_code=202)
def update_single_post(id: str):
    pass


@ app.delete("/posts/{id}", status_code=204)
def delete_single_post(id: str):
    pass
