from flask import Flask, Response, request
import json, csv
from src.item_action import ItemActions
from src.user_action import UserActions
app = Flask(__name__)
item_actions = ItemActions()
user_actions = UserActions()

# @app.route('/',methods=['GET'])
# def welcome():
#     return 'Hello World'
    

# @app.route('/items/<int:num>',methods=['GET'])
# def item(num):
    
#     return str(num*num)


@app.route('/items', methods = ['GET'])
def get_all_items():
  items = item_actions.get_all_items()
  print(items)
  return Response(json.dumps(items), mimetype='application/json', status=200)


@app.route('/item', methods = ['POST'])
def add_new_item():
  request_data = request.get_json()
  item = request_data['item']
  reminder = request_data['reminder']

  added_item = item_actions.add_item(item, reminder)
  if added_item == {}:
    return Response("{'error': 'Erro addding the item'}", mimetype='application/json', status=500)
  return Response(json.dumps(added_item), mimetype='application/json', status=201)



@app.route('/item/<int:id>', methods = ['GET'])
def get_item(id):
  item = item_actions.get_item(id)
  print(item)
  return Response(json.dumps(item), mimetype='application/json', status=200)

@app.route('/item', methods = ['DELETE'])
def delete_item():
  request_data = request.get_json()
  id = request_data['id']
  del_item = item_actions.delete_item(id)
  if del_item == {}:
    return Response("{'error': 'Erro deleting the item'}", mimetype='application/json', status=500)
  return Response(json.dumps(del_item), mimetype='application/json', status=201)

@app.route('/item/<int:id>', methods = ['PUT'])
def update_item(id):
  request_data = request.get_json()
  # item = request_data['item']
  # status=request_data['status']
  # reminder = request_data['reminder']

  updated_item_id = item_actions.update_item(id,request_data)
  if updated_item_id == {}:
    return Response("{'error': 'Erro update the item'}", mimetype='application/json', status=500)
  return Response(json.dumps(updated_item_id), mimetype='application/json', status=201)

@app.route('/user', methods = ['POST'])
def add_new_user():
  request_data = request.get_json()
  name = request_data['name']
  passw = request_data['passw']

  added_user = user_actions.add_user(name, passw)
  if added_user == {}:
    return Response("{'error': 'Erro adding the user'}", mimetype='application/json', status=500)
  return Response(json.dumps(added_user), mimetype='application/json', status=201)

@app.route('/saveitemstoexcel', methods = ['GET'])
def save_item_to_excel():
  return save_excel()


def save_excel():
  items = item_actions.get_all_items()
  items = items[0]
  # items=json.dumps(items[0])
  # print(type(items))
  with open('todo_items.csv', 'w') as data_file:
    data_file = open('todo_items.csv', 'w')
    csv_writer = csv.writer(data_file)
    flag = 0
  
    for item in items:
      if flag == 0:
        header = items.keys()
        csv_writer.writerow(header)
        flag += 1
 
    csv_writer.writerow(items.values())
 
  
  return Response(json.dumps(items), mimetype='application/json', status=200)

if __name__=='__main__':
    app.run(debug=True,port=5000,host='0.0.0.0')