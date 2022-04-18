from fastapi import APIRouter

from api.api_v1.endpoints import jokes

api_router = APIRouter(prefix="/api/v1")
api_router.include_router(jokes.router, tags=["jokes"], prefix="/jokes")
