FROM python:3.7.4

ENV HOME=/opt/app

WORKDIR $HOME

COPY requirements.txt $HOME
RUN pip install -r requirements.txt

COPY main.py $HOME

ENV PYTHONUNBUFFERED=true
CMD ["python", "main.py"]
