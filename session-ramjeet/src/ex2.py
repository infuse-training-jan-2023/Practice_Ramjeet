from flask import Flask, Response, request
import json,re
app=Flask(__name__)

@app.route('/passw', methods = ['POST'])
def password_validate():  
  request_data = request.get_json()
  passw = request_data['passw']
  return password_val(passw)


def password_val(passw):
  passw_pattern = r"^(?=.*[a-z])(?=.*[A-Z])(?=.*)(?=.*[@$!%*?&])[A-Za-z@$!%*?&]{8,}$"
  if re.match(passw_pattern,passw):
        return("Valid")
  else:
        return("Invalid")

if __name__=='__main__':
    app.run(debug=True,port=5000,host='0.0.0.0')