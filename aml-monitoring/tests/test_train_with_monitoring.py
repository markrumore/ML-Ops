import sys
import os
import pytest

sys.path.append(os.path.join(os.path.dirname(__file__), '../src'))
from train_with_monitoring import train

def test_train_runs_successfully():
    # Should return True after training
    assert train(epochs=1) is True
