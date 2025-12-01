from hello import app

def test_route():
    response = app.test_client().get("/")

    assert response.status_code == 200