ps -ef | grep 0.0.0 | awk '{print $2}' | xargs kill -9
python manage.py runserver

kill x progress and do sth.
