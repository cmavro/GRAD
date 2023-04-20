python train_student_grad.py --exp_setting 'ind' --student "GradSAGE" --dataset "a-computer" --num_exp 10 --max_epoch 2000 --patience 50 --device 0 --eval_interval 10

python train_student.py --exp_setting 'ind' --teacher "GradSAGE" --dataset "a-computer" --num_exp 10 --max_epoch 200 --patience 50