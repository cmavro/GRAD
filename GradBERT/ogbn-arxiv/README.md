# Graph-Aware Distillation (GradBERT) for ogbn-arxiv

### MLP / SAGE
To use the pre-trained GradBERT embeddings with MLP or SAGE, run
```
bash gradbert_mlp.sh 
```
or 
```
bash gradbert_sage.sh 
```

Yous should obtain the following results
| ogbn-arxiv | MLP | GraphSAGE |
|---|---|---|
| Valid accuracy (%) | 76.53 ± 0.05 | 77.46 ± 0.04 |
| Test accuracy (%) | 75.51 ± 0.07 | 76.50 ± 0.07 |

### RevGAT

For RevGAT, please go to `RevGAT-ori` and run
```
bash Runexp_RevGAT_ogbnarxiv.sh
```
| ogbn-arxiv | RevGAT | RevGAT+KD |
|---|---|---|
| Average val accuracy (%) | 77.70 ± 0.09 | 77.57 ± 0.09 |
| Average test accuracy (%) | 77.04 ± 0.16 | 77.21 ± 0.31 |


