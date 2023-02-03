from flask import Flask, Response, request
import json,re
from item_action import ItemActions
app=Flask(__name__)

@app.route('/passw', methods = ['POST'])
def password_validate():  
  request_data = request.get_json()
  passw = request_data['passw']
  passw_pattern = r"^(?=.*[a-z])(?=.*[A-Z])(?=.*)(?=.*[@$!%*?&])[A-Za-z@$!%*?&]{8,}$"
  if re.match(passw_pattern,passw):
        return("Valid")
  else:
        return("Invalid")

if __name__=='__main__':
    app.run(debug=True,port=5000,host='0.0.0.0')