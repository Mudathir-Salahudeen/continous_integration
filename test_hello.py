from hello import say_hi, say_bye


def test_say_hi():
    assert "Hi" == say_hi()


def test_say_by():
    assert "Bye" == say_bye()
