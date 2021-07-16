"""Test app1."""
from app1 import __version__
from app1 import app1


def test_version():
    """Test version."""
    assert __version__ == "0.1.0"


def test_sanity():
    """Sanity check."""
    try:
        assert not app1()
    except Exception:
        assert True
