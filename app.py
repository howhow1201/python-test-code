from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1>Hello World</h1><p>Python Test Image is Running!</p>'

if __name__ == '__main__':
    # 必須監聽 0.0.0.0 才能讓容器外訪問，預設埠號 5000
    app.run(host='0.0.0.0', port=5000)
