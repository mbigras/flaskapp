import os

import flask

app = flask.Flask(os.environ.get("APP", "flaskapp"))


@app.route("/")
def hello():
    return flask.jsonify(
        app=app.name,
        status="up",
        features=[
            "feature1",
        ],
    )
