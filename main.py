import requests
import pytest



repsonse = requests.get('https://api.github.com')

def test_response():
    assert repsonse.status_code == 400

