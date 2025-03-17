from flask import Flask, render_template, request, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/calculate', methods=['POST'])
def calculate():
    try:
        data = request.get_json()
        num1 = float(data['num1'])
        num2 = float(data['num2'])
        result = num1 + num2
        return jsonify({'result': f'计算结果：{num1} + {num2} = {result}'})
    except:
        return jsonify({'result': '请输入有效的数字！'})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True) 