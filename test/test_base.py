def test_index(app, client):
    res = client.get('/')
    assert res.status_code == 404

def test_rest(app, client):
    res = client.get('/python-stub/api/v1.0/ping')
    assert res.status_code == 200
    expected = 'OK'
    assert expected == res.get_data(as_text=True)
