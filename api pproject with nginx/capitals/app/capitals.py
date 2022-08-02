from fastapi import FastAPI
#9000
app = FastAPI()
@app.get("/")
async def countries():
    co=["Almaty", "Shymkent", "Atyrau"]
    return {"Country": co[1]}