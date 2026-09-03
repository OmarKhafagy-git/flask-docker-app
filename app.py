from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def home():
    return '''
    <h1>🐍 Flask App running in Docker!</h1>
    <p>This Python app was containerized by a DevOps engineer.</p>
    <p>Hostname: ''' + os.uname().nodename + '''</p>
    '''

@app.route('/health')
def health():
    return {'status': 'healthy'}, 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)