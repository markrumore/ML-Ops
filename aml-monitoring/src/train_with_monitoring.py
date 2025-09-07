import time
import random
from azureml.core import Run

def train(epochs=5):
    run = Run.get_context()
    for epoch in range(epochs):
        loss = random.uniform(0.1, 1.0)
        accuracy = random.uniform(0.7, 1.0)
        run.log('loss', loss)
        run.log('accuracy', accuracy)
        print(f"Epoch {epoch}: loss={loss:.4f}, accuracy={accuracy:.4f}")
        time.sleep(1)
    run.log('custom_message', 'Training completed successfully.')
    run.complete()
    return True

if __name__ == "__main__":
    train()
# Complete the run
run.complete()
