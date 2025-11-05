from flask import Flask, request
import os

app = Flask(__name__)

@app.route('/')
def index():
    return f"Hello from Flask! Container ID: {os.environ.get('HOSTNAME')}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
