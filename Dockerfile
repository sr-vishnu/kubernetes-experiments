FROM python:3.7

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get clean
RUN pip install pipenv

ADD simple_flask_app /simple_flask_app
ADD requirements.txt /simple_flask_app
RUN pip install -r /simple_flask_app/requirements.txt

WORKDIR /simple_flask_app


EXPOSE 5000

CMD ["gunicorn","app:app","-b","0.0.0.0:5000"]

