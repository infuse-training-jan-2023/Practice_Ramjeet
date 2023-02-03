from flask import Flask, Response, request
import json,re
from item_action import ItemActions
app=Flask(__name__)

@app.route('/email', methods = ['POST'])
def email_validate():  
  request_data = request.get_json()
  email = request_data['email']
  email_pattern = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b'
  if re.match(email_pattern,email):
        return("Valid")
  else:
        return("Invalid")

if __name__=='__main__':
    app.run(debug=True,port=5000,host='0.0.0.0')