from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, Dockerized Flask Web App!'

@app.route('/about')
def about():
    return 'This is the about page.'

@app.route('/contact')
def contact():
    return 'Contact us at contact@example.com.'

@app.route('/services')
def services():
    return 'Our services include web development, consulting, and more.'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001, debug=True)