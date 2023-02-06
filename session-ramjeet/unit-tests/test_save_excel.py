
from src.main import save_excel
import os

def test_save_excel(mocker):

    mock=mocker.patch('src.main.save_excel', return_value = [])
    resp= save_excel()
    assert resp.status_code == 200 

def test_save_excel_creates_file(mocker):

    mock=mocker.patch('src.main.save_excel', return_value = [])
    resp= save_excel()
    path = 'C:/Users/Ramjeet/Documents/Practice_Ramjeet/session-ramjeet/todo_items.csv'
    check_file = os.path.isfile(path)
    assert  check_file == True





