import os
from flask.json import jsonify
import requests
import json
from flask import Flask, Response, request

app = Flask(__name__)

jsonString = '{"horses":[{"id":"id1234567","name":"KillerQueenVDM","reiter":"Daniel Deusser","geburtsjahr":2000,"geschlecht":"weiblich","zuchtverband":"BWP","abstammung":"Elorado v. Zeshoek x For Pleasure","besitzer":"stephex stables, daniel deusser","groessterErfolg":"Rolex Grand Prix"}]}'

@app.route("/api")
def api():
    type = request.args.get('type', type=str)
    id = request.args.get('id', type=str)
    print(type)
    print(id)
    print(os.getcwd())
    jsonO = json.load(open("data.json","r"))
    if type != None:
        jsonO = jsonO[type]
    if id != None:
        pass
    return Response(status=200,mimetype="application/json", response=json.dumps(jsonO))

app.run(host="0.0.0.0")