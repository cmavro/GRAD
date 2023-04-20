python train_student_grad.py --exp_setting 'ind' --student "GradSAGE" --dataset "pubmed" --num_exp 10 --max_epoch 500 --patience 200 --device 0

python train_student.py --exp_setting 'ind' --teacher "GradSAGE" --dataset "pubmed" --num_exp 10 --max_epoch 200 --patience 50