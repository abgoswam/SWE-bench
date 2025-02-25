
from datasets import load_dataset
swebench = load_dataset('princeton-nlp/SWE-bench', split='test')

print(swebench)

x = swebench[0]

print("done")