
"""
Using Python and Flask, write an API that exposes an endpoint that (at a minimum) returns a 200 status. 
Then dockerize the solution so it runs in an image or from a docker-compose file.
"""

from flask import Flask
app = Flask(__name__)

@app.route('/python-stub/api/v1.0/ping', methods=['GET'])
def ping():
    return 'OK'

if __name__ == '__main__':
    app.run(debug=True)
