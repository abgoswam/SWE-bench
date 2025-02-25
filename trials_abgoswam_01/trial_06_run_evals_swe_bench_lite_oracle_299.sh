python -m swebench.harness.run_evaluation \
    --dataset_name princeton-nlp/SWE-bench_Lite \
    --predictions_path data/princeton-nlp__SWE-bench_Lite_oracle_299__test__princeton-nlp__SWE-Llama-13b__temp-0.0__top-p-1.0.jsonl \
    --max_workers 8 \
    --run_id swe_bench_lite_oracle_299
    # use --predictions_path 'gold' to verify the gold patches
    # use --run_id to name the evaluation run