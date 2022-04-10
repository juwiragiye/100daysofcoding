from typing import List, Optional
import uuid
from fastapi import Body, FastAPI
from pydantic import   BaseModel, UUID4


app = FastAPI()

class Post(BaseModel):
    title: str
    content: str
class PostRead(Post):
    pid: UUID4 

class PostUpdate(Post):
    title: Optional[str] = ""
    content: Optional[str] = ""
    

posts: List[PostRead] = [
    PostRead(title="Post one", content="This is the first post", pid=uuid.uuid4()),
    PostRead(title="Post two", content="This is the second post", pid=uuid.uuid4()),
    PostRead(title="Post three", content="This is the third post", pid=uuid.uuid4())
]



@app.get("/")
def root() :
    """
    Index ('/') route, returns a message dictionary
    """
    return {"message": "Hello, world!"}

@app.get("/posts")
def read_all_posts() -> dict[str, List[PostRead]]:
    #  Get all posts. return list of posts
    return {"posts": posts}

@app.get("/posts/{id}")
def read_single_post(id: UUID4):
    # Get a single post. return a single post with the given post id
    for post in posts:
        if post.pid == id:
            return {"post": post}
        

    return {"post": "no posts yet"}

@app.post("/posts", status_code=201)
def write_single_post(post: Post = Body(...)):
  
    # Create a single post with the given post
    new_post = PostRead(**post.dict(), pid=uuid.uuid4())
    posts.append(new_post)  
    return {"post": new_post}

@app.patch("/posts/{id}", status_code=202)
def update_single_post(id: UUID4, body: PostUpdate = Body(...)):
    # Update a single post; returns new a post with the given post id and body.

    # find the post with the given post id
    for post in posts:
        if post.pid == id:
            # get the index of the post
            p_index = posts.index(post)
            # Update the post with the given body
            new_post = PostUpdate(**body.dict())
            updated_post = PostRead(**new_post.dict(), pid=id)
            posts[p_index] = updated_post
            return {"post": updated_post}
    return {"post": None}

@app.delete("/posts/{id}", status_code=204)
def delete_single_post(id: UUID4):
    #  Deletes a single post with the given
    for post in posts:
        if post.pid == id:
            posts.remove(post)
            
    



