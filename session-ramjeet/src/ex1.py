from flask import Flask, Response, request
import json,re
app=Flask(__name__)

@app.route('/email', methods = ['POST'])
def email_validate():  
  request_data = request.get_json()
  email = request_data['email']
  return validate(email)

def validate(email):
      email_pattern = r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Z|a-z]{2,})+'
      if re.match(email_pattern,email):
            return("Valid")
      
      return("Invalid")

if __name__=='__main__':
    app.run(debug=True,port=5000,host='0.0.0.0')