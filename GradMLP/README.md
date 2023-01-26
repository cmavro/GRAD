<!-- #region -->
# Graph-Aware Distillation (GradMLP)


## Overview
### Graph-Aware Distillation framework:
<p align="center">
  <br />
  <img src="assets/Grad.png" width="800">
  <br />
</p>



## Getting started

**Ackowledgement**: The following code is based on [GLNN](https://github.com/snap-research/graphless-neural-networks) implementation. You can find additional details in that repo.

### Preparing datasets
To run experiments for dataset used in the paper, please download from the following links and put them under `data/` (see below for instructions on organizing the datasets).

- *CPF data* (`cora`, `citeseer`, `pubmed`, `a-computer`, and `a-photo`): Download the '.npz' files from [here](https://github.com/BUPT-GAMMA/CPF/tree/master/data/npz). Rename `amazon_electronics_computers.npz` and `amazon_electronics_photo.npz` to `a-computer.npz` and `a-photo.npz` respectively.


### Usage

To quickly train a grad, you can run `train_student_grad.py` by specifying the experiment setting, (we only support inductive for now) `ind`,  model, i.e., `GradMLP` or `GradSAGE`, and dataset, e.g. `cora`, as per the example below.

```
python train_student_grad.py --exp_setting 'ind'  --student "GradMLP" --dataset "cora" --num_exp 10 --max_epoch 1000 --patience 50 --device 0

```

For more examples, and to reproduce results in the paper, please refer to scripts in `experiments/` as, for example:

GradMLP for Cora:
```
bash experiments/cora_gradmlp.sh
```
or GradMLP+KD for Cora:
```
bash experiments/cora_gradmlp_kd.sh
```

You can also run GLNN (MLP+KD) baseline (for all datasets) via:
```
bash experiments/glnn_cpf.sh
```

## Results

We obtain the following results (mean over 10 runs) for evaluating on inductive nodes (50\% of the total test nodes):

| Datasets   | MLP+KD      | **GradMLP**          | **GradMLP**+KD |          
|------------|----------------|--------------|----------------|
| Cora       | 70.74     | **73.00**      | 72.51         | 
| Citseer    | 69.72          | **70.38**        | 69.28      | 
| Pubmed     | 73.61      | **77.54**        | 76.89          | 
| A-computer | 79.11         | 78.79     | **79.41**      | 
| A-photo    | 89.96          | 88.83        | **90.09**      | 
 

For Grad-Alt, the function `train_gradbert_alt` is in `train_and_eval` at line 128. Simply rename it from `train_gradbert_alt` to `train_gradbert` and run `bash experiments/cora_gradmlp.sh`, etc., to reproduce the results.

## Citation

If you find our work useful, please cite the following:


## Contact Us



<!-- #endregion -->
