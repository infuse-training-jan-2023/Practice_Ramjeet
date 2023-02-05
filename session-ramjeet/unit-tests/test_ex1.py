from src.ex1 import validate
from requests import HTTPError


def test_validate_case_1(mocker):
    test_email="abc@gmail.com"
    mock=mocker.patch('src.ex1.validate', return_value = [])
    resp= validate(test_email)
    assert resp == "Valid"


def test_validate_case_2(mocker):
    test_email="abcgmail.com"
    mock=mocker.patch('src.ex1.validate', return_value = [])
    resp= validate(test_email)
    assert resp == "Invalid"


def test_validate_case_3(mocker):
    test_email="bc./mailom"
    mock=mocker.patch('src.ex1.validate', return_value = [])
    resp= validate(test_email)
    assert resp == "Invalid"

