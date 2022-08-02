from fastapi import FastAPI
#9001
app = FastAPI()
@app.get("/")
async def countries():
    co=["KZ", "USA", "GER"]
    return {"Country": co[1]}