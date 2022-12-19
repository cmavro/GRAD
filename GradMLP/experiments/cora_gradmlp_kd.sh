python train_student_grad.py --exp_setting 'ind' --student "GradSAGE" --dataset "cora" --num_exp 10 --max_epoch 1000 --patience 50 --device 0

python train_student.py --exp_setting 'ind' --teacher "GradSAGE" --dataset "cora" --num_exp 10 --max_epoch 200 --patience 50