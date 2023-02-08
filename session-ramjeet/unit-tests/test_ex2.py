from src.ex2 import password_val
from requests import HTTPError
import requests

def test_password_val_case_1(mocker):
    test_passw="*test*passW*"
    mock=mocker.patch('src.ex2.password_val', return_value = [])
    resp= password_val(test_passw)
    assert resp == "Valid"


def test_password_val_case_2(mocker):
    test_passw="testpass"
    mock=mocker.patch('src.ex2.password_val', return_value = [])
    resp= password_val(test_passw)
    assert resp == "Invalid"


def test_password_val_case_3(mocker):
    test_passw="****Q"
    mock=mocker.patch('src.ex2.password_val', return_value = [])
    resp= password_val(test_passw)
    assert resp == "Invalid"

