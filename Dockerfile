FROM python:3.7

EXPOSE 8080

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD streamlit run main.py --server.port 8080
