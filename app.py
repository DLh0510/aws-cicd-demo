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
        operation = data['operation']
        
        if operation == 'add':
            result = num1 + num2
            symbol = '+'
        elif operation == 'subtract':
            result = num1 - num2
            symbol = '-'
        elif operation == 'multiply':
            result = num1 * num2
            symbol = '×'
        elif operation == 'divide':
            if num2 == 0:
                return jsonify({'result': '错误：除数不能为0！'})
            result = num1 / num2
            symbol = '÷'
            
        return jsonify({'result': f'计算结果：{num1} {symbol} {num2} = {result}'})
    except:
        return jsonify({'result': '请输入有效的数字！'})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True) 