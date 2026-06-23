from fastapi import FastAPI

app = FastAPI()

entries = []

@app.post("/entries")
def create_entry(data: dict):
    entries.append(data)
    return {"message": "Entry added"}

@app.get("/entries/{user_id}")
def get_entries(user_id: int):
    return {
        "user_id": user_id,
        "entries": entries
    }

@app.get("/health")
def health():
    return {"status": "healthy"}
