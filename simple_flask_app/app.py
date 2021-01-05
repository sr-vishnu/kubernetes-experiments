from flask import Flask
import random
app = Flask(__name__)

global random_choice , random_color
random_choice = random.randint(0,10000000000000)
random_color = random.randint(0,4)


@app.route('/')
def hello():
    colors = ["red","green","blue","yellow","black"]
    global random_choice , random_color
    return f"<h1 style = 'color:{colors[random_color]};'>{str(random_choice*100000000000)} OK !!</h1>"
