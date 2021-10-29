import requests
import json
from flask import Flask

app = Flask(__name__)

@app.route("/api")
def api():
    return json()

app.run()