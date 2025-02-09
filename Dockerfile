FROM python:3.10-slim

RUN mkdir /app
WORKDIR /app
COPY . /app/
RUN pip3 install -r requirements.txt

EXPOSE 5002
CMD ["python", "/app/services/chatroom_service/chatroom.py"]
