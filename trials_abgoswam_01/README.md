

# 02/24

- on 227 instances


- inference command

```bash
python -m swebench.inference.run_llama \
    --dataset_path princeton-nlp/SWE-bench_Lite_oracle \
    --model_name_or_path princeton-nlp/SWE-Llama-13b \
    --output_dir ./outputs \
    --temperature 0
```

- swe evaluation command

```bash
python -m swebench.harness.run_evaluation \
    --dataset_name princeton-nlp/SWE-bench_Lite \
    --predictions_path data/princeton-nlp__SWE-bench_Lite_oracle__test__princeton-nlp__SWE-Llama-13b__temp-0.0__top-p-1.0.jsonl \
    --max_workers 8 \
    --run_id swe_bench_lite_oracle_incomplete
    # use --predictions_path 'gold' to verify the gold patches
    # use --run_id to name the evaluation run
```

- output 

```bash
Total instances: 300
Instances submitted: 227
Instances completed: 164
Instances incomplete: 73
Instances resolved: 16
Instances unresolved: 148
Instances with empty patches: 0
Instances with errors: 63
Unstopped containers: 0
Unremoved images: 0
```