python -m torch.distributed.launch \
--nproc_per_node=8 transformers/examples/seq2seq/run_summarization.py \
--model_name_or_path Pegasus_4k/ \
--do_train \
--do_eval \
--train_file train.json \
--validation_file val.json \
--output_dir saved/ \
--per_device_train_batch_size=2 \
--per_device_eval_batch_size=2 \
--overwrite_output_dir \
--predict_with_generate \
--sharded_ddp zero_dp_3 \
--save_steps 1000 
--save_total_limit 10 \
--num_train_epochs 90 \
--evaluation_strategy epoch 
