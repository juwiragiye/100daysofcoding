from pymongo import MongoClient

from bson.json_util import dumps


client = MongoClient(retryWrites=True, connectTimeoutMS=200)


if __name__ == '__main__':
    loggie = client.loggie
    thoughts = loggie.thoughts
    cursor = thoughts.find({})
    print(dumps(cursor))


    print(client.list_database_names())
   
