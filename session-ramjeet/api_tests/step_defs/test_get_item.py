import pytest
from pytest_bdd import scenarios, when, then
import requests

scenarios('../features/get_an_item.feature')

get_item_url = "http://127.0.0.1:5000/getanitem/7"

@when('I search for an item')
def get_item():
  pytest.api_response = requests.get(get_item_url)

@then('I should get the item requested')
def check_the_items_returned():
  body = pytest.api_response.json()
  for item in body:
    assert type(item) == dict

@then('the api status code should be 200')
def check_status_code():
  assert pytest.api_response.status_code == 200

@then('the api response content type should be json')
def check_content_type():
  assert pytest.api_response.headers['Content-type'] == 'application/json'