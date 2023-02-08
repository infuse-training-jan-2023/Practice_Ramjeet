from src.ex3 import fetch_todo
from requests import HTTPError
import requests

def test_fetch_todo_case_1(mocker):
    number=100
    mock=mocker.patch('src.ex3.fetch_todo', return_value = [])
    resp= fetch_todo(number)
    assert resp.status_code == 200


def test_fetch_todo_case_2(mocker):
    number=201
    mock=mocker.patch('src.ex3.fetch_todo', return_value = [])
    resp= fetch_todo(number)
    assert resp == "Invalid Input"


def test_fetch_todo_case_3(mocker):
    number=0
    mock=mocker.patch('src.ex3.fetch_todo', return_value = [])
    resp= fetch_todo(number)
    assert resp == "Invalid Input"

