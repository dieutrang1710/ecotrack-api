FROM python:3.12-slim AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

FROM python:3.12-slim AS runtime

WORKDIR /app

COPY --from=builder /usr/local/lib/python3.12/site-packages \
/usr/local/lib/python3.12/site-packages

COPY . .

USER 1000

EXPOSE 8000

CMD ["python","-m","uvicorn","main:app","--host","0.0.0.0","--port","8000"]
