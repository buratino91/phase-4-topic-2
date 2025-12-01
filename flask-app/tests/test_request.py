from hello import app

def test_route():
    response = app.test_client().get("/")

    assert response.status_code == 200
    assert response.data.decode('utf-8') == '<p>Hello, World</p>'