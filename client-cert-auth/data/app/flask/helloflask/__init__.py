from flask import Flask
from flask import request


app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello Flask! (CN: %s)" % request.environ['SSL_CLIENT_S_DN_CN']


if __name__ == "__main__":
    app.run()
