FROM python:3.11

WORKDIR /app
COPY requirements.txt .
COPY app.py .
COPY templates templates/
COPY static static/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]





#FROM cgr.dev/chainguard/python:latest-dev
#WORKDIR /app
#COPY requirements.txt .
#RUN pip install --user --no-cache-dir -r requirements.txt
#COPY app.py .
#COPY templates templates/
#COPY static static/

#ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]

