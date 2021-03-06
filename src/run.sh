lang=java #fine-tuning a language-specific model for each programming language
pretrained_model=microsoft/codebert-base  #Roberta: roberta-base
idx=0 #test batch idx

python ensemble_train.py \
--model_type roberta \
--task_name codesearch \
--do_train \
--do_eval \
--eval_all_checkpoints \
--train_file train_origin.txt \
--dev_file valid.txt \
--max_seq_length 200 \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--learning_rate 1e-5 \
--num_train_epochs 8 \
--gradient_accumulation_steps 1 \
--overwrite_output_dir \
--data_dir ../data/codesearch/train_valid/java \
--output_dir ./models_ensemble3_sampled_train_seed1/java  \
--model_name_or_path microsoft/codebert-base \
--pred_modelA_dir ./models_seed1_api/java/checkpoint-best/ \
--pred_modelB_dir ./models_seed1_var/java/checkpoint-best/ \
--pred_modelC_dir ./models_seed1_struct/java/checkpoint-best/ \
--test_file batch_0.txt \
--test_result_dir ./results_ensemble3_sampled_train_seed1/java/0_batch_result.txt \
--seed 1

#### do a test first
python ensemble_train.py \
--model_type roberta \
--model_name_or_path microsoft/codebert-base \
--task_name codesearch \
--do_predict \
--output_dir ../data/codesearch/test/$lang \
--data_dir ../data/codesearch/test/$lang \
--max_seq_length 200 \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--learning_rate 1e-5 \
--num_train_epochs 8 \
--pred_modelA_dir ./models_seed1_api/java/checkpoint-best/ \
--pred_modelB_dir ./models_seed1_var/java/checkpoint-best/ \
--pred_modelC_dir ./models_seed1_struct/java/checkpoint-best/ \
--test_file batch_${idx}.txt \
--pred_model_dir ./models_ensemble3_sampled_train_seed1/$lang/checkpoint-best/ \
--test_result_dir ./results_ensemble3_sampled_train_seed1/$lang/${idx}_batch_result.txt 


python ensemble_train.py \
--model_type roberta \
--task_name codesearch \
--do_train \
--do_eval \
--eval_all_checkpoints \
--train_file train_origin.txt \
--dev_file valid.txt \
--max_seq_length 200 \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--learning_rate 1e-5 \
--num_train_epochs 8 \
--gradient_accumulation_steps 1 \
--overwrite_output_dir \
--data_dir ../data/codesearch/train_valid/java \
--output_dir ./models_ensemble3_sampled_train_seed3/java  \
--model_name_or_path microsoft/codebert-base \
--pred_modelA_dir ./models_seed3_api/java/checkpoint-best/ \
--pred_modelB_dir ./models_seed3_var/java/checkpoint-best/ \
--pred_modelC_dir ./models_seed3_struct/java/checkpoint-best/ \
--test_file batch_0.txt \
--test_result_dir ./results_ensemble3_sampled_train_seed3/java/0_batch_result.txt \
--seed 3

python ensemble_train.py \
--model_type roberta \
--task_name codesearch \
--do_train \
--do_eval \
--eval_all_checkpoints \
--train_file train_origin.txt \
--dev_file valid.txt \
--max_seq_length 200 \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--learning_rate 1e-5 \
--num_train_epochs 8 \
--gradient_accumulation_steps 1 \
--overwrite_output_dir \
--data_dir ../data/codesearch/train_valid/java \
--output_dir ./models_ensemble3_sampled_train_seed5/java  \
--model_name_or_path microsoft/codebert-base \
--pred_modelA_dir ./models_seed5_api/java/checkpoint-best/ \
--pred_modelB_dir ./models_seed5_var/java/checkpoint-best/ \
--pred_modelC_dir ./models_seed5_struct/java/checkpoint-best/ \
--test_file batch_0.txt \
--test_result_dir ./results_ensemble3_sampled_train_seed5/java/0_batch_result.txt \
--seed 5

python ensemble_train.py \
--model_type roberta \
--task_name codesearch \
--do_train \
--do_eval \
--eval_all_checkpoints \
--train_file train_origin.txt \
--dev_file valid.txt \
--max_seq_length 200 \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--learning_rate 1e-5 \
--num_train_epochs 8 \
--gradient_accumulation_steps 1 \
--overwrite_output_dir \
--data_dir ../data/codesearch/train_valid/java \
--output_dir ./models_ensemble3_sampled_train_seed7/java  \
--model_name_or_path microsoft/codebert-base \
--pred_modelA_dir ./models_seed7_api/java/checkpoint-best/ \
--pred_modelB_dir ./models_seed7_var/java/checkpoint-best/ \
--pred_modelC_dir ./models_seed7_struct/java/checkpoint-best/ \
--test_file batch_0.txt \
--test_result_dir ./results_ensemble3_sampled_train_seed7/java/0_batch_result.txt \
--seed 7

python ensemble_train.py \
--model_type roberta \
--task_name codesearch \
--do_train \
--do_eval \
--eval_all_checkpoints \
--train_file train_origin.txt \
--dev_file valid.txt \
--max_seq_length 200 \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--learning_rate 1e-5 \
--num_train_epochs 8 \
--gradient_accumulation_steps 1 \
--overwrite_output_dir \
--data_dir ../data/codesearch/train_valid/java \
--output_dir ./models_ensemble3_sampled_train_seed11/java  \
--model_name_or_path microsoft/codebert-base \
--pred_modelA_dir ./models_seed11_api/java/checkpoint-best/ \
--pred_modelB_dir ./models_seed11_var/java/checkpoint-best/ \
--pred_modelC_dir ./models_seed11_struct/java/checkpoint-best/ \
--test_file batch_0.txt \
--test_result_dir ./results_ensemble3_sampled_train_seed11/java/0_batch_result.txt \
--seed 11

#############


python ensemble_train.py \
--model_type roberta \
--model_name_or_path microsoft/codebert-base \
--task_name codesearch \
--do_predict \
--output_dir ../data/codesearch/test/$lang \
--data_dir ../data/codesearch/test/$lang \
--max_seq_length 200 \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--learning_rate 1e-5 \
--num_train_epochs 8 \
--pred_modelA_dir ./models_seed3_api/java/checkpoint-best/ \
--pred_modelB_dir ./models_seed3_var/java/checkpoint-best/ \
--pred_modelC_dir ./models_seed3_struct/java/checkpoint-best/ \
--test_file batch_${idx}.txt \
--pred_model_dir ./models_ensemble3_sampled_train_seed3/$lang/checkpoint-best/ \
--test_result_dir ./results_ensemble3_sampled_train_seed3/$lang/${idx}_batch_result.txt 

python ensemble_train.py \
--model_type roberta \
--model_name_or_path microsoft/codebert-base \
--task_name codesearch \
--do_predict \
--output_dir ../data/codesearch/test/$lang \
--data_dir ../data/codesearch/test/$lang \
--max_seq_length 200 \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--pred_modelA_dir ./models_seed5_api/java/checkpoint-best/ \
--pred_modelB_dir ./models_seed5_var/java/checkpoint-best/ \
--pred_modelC_dir ./models_seed5_struct/java/checkpoint-best/ \
--learning_rate 1e-5 \
--num_train_epochs 8 \
--test_file batch_${idx}.txt \
--pred_model_dir ./models_ensemble3_sampled_train_seed5/$lang/checkpoint-best/ \
--test_result_dir ./results_ensemble3_sampled_train_seed5/$lang/${idx}_batch_result.txt 

python ensemble_train.py \
--model_type roberta \
--model_name_or_path microsoft/codebert-base \
--task_name codesearch \
--do_predict \
--output_dir ../data/codesearch/test/$lang \
--data_dir ../data/codesearch/test/$lang \
--max_seq_length 200 \
--pred_modelA_dir ./models_seed7_api/java/checkpoint-best/ \
--pred_modelB_dir ./models_seed7_var/java/checkpoint-best/ \
--pred_modelC_dir ./models_seed7_struct/java/checkpoint-best/ \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--learning_rate 1e-5 \
--num_train_epochs 8 \
--test_file batch_${idx}.txt \
--pred_model_dir ./models_ensemble3_sampled_train_seed7/$lang/checkpoint-best/ \
--test_result_dir ./results_ensemble3_sampled_train_seed7/$lang/${idx}_batch_result.txt 

python ensemble_train.py \
--model_type roberta \
--model_name_or_path microsoft/codebert-base \
--task_name codesearch \
--do_predict \
--output_dir ../data/codesearch/test/$lang \
--data_dir ../data/codesearch/test/$lang \
--max_seq_length 200 \
--per_gpu_train_batch_size 32 \
--per_gpu_eval_batch_size 32 \
--learning_rate 1e-5 \
--pred_modelA_dir ./models_seed11_api/java/checkpoint-best/ \
--pred_modelB_dir ./models_seed11_var/java/checkpoint-best/ \
--pred_modelC_dir ./models_seed11_struct/java/checkpoint-best/ \
--num_train_epochs 8 \
--test_file batch_${idx}.txt \
--pred_model_dir ./models_ensemble3_sampled_train_seed11/$lang/checkpoint-best/ \
--test_result_dir ./results_ensemble3_sampled_train_seed11/$lang/${idx}_batch_result.txt 