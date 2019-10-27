from flask import Flask
app = Flask(__name__)

def sum (a,b):
    return (a+b)

@app.route('/')
def hello_world():
    res = sum (3,4)
    return 'Hello, World! %s' %(res)

if __name__ == '__main__':
    app.run()
