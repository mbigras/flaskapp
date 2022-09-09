import os

import flask

app = flask.Flask(os.environ.get("APP", "flaskapp"))
app.config["MSG"] = os.environ.get("MSG", "hello")


@app.route("/")
def hello():
    return flask.jsonify(
        app=app.name,
        status="up",
        features=[
            "feature1",
            "feature2",
            "feature3",
        ],
        msg=app.config["MSG"],
    )
