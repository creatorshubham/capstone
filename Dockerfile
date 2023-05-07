FROM python:alpine3.17
WORKDIR /app
COPY . .
RUN pip install Flask Flask-SQLAlchemy
CMD python3 app.py
