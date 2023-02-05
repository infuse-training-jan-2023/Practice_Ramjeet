from flask import Flask, Response
import json,requests

app=Flask(__name__)

@app.route('/sendnumber/<int:num>', methods = ['GET'])
def send_number(num):  
  return fetch_todo(num)
  


def fetch_todo(num):
  if num in range(1,200):
    data=requests.get('https://jsonplaceholder.typicode.com/todos/'+str(num))
    return Response(data, mimetype='application/json', status=200)
  return ("Invalid Input")

if __name__=='__main__':
    app.run(debug=True,port=5000,host='0.0.0.0')