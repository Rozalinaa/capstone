from flask import Flask
from flask import json
from flask.logging import create_logger


app = Flask(__name__)
log = create_logger(app)

@app.route('/status')
def healthcheck():
    response = app.response_class(
            response=json.dumps({"result":"OK - healthy"}),
            status=200,
            mimetype='application/json'
    )
    log.info('Status request successfull')
    return response

@app.route('/metrics')
def metrics():
    response = app.response_class(
            response=json.dumps({"status":"success","code":0,"data":{"UserCount":140,"UserCountActive":23}}),
            status=200,
            mimetype='application/json'
    )
    log.info('Metrics request successfull')
    return response
    
@app.route("/")
def hello():
    log.info('Main request successfull')

    return "Hello World! May the 4 be with you"

if __name__ == "__main__":
    ## stream logs to a file
    
    app.run(host='0.0.0.0', port=5000)