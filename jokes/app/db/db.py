import motor.motor_asyncio

client = motor.motor_asyncio.AsyncIOMotorClient()


def get_db():
    return client
