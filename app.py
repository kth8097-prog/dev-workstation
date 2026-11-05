from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return '''
    <h1>🎉 내 첫 Docker 웹앱!</h1>
    <p>안녕하세요! Flask + Docker로 만든 페이지입니다.</p>
    <p>made by kth8097 💻</p>
    '''

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)