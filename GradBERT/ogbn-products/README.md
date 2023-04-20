# Graph-Aware Distillation (GradBERT) for ogbn-products


### MLP / SAINT
To use the pre-trained GradBERT embeddings with MLP or GradBERT+GIANT embeddings with SAINT, run
```
bash gradbert_mlp.sh 
```
or 
```
bash gradbert_giant_sage.sh 
```

We combine GradBERT and GIANT feats by a shared SAINT GNN, which predicts
$$ Y = \alpha GNN(A, X_{Grad}) + (1-\alpha) GNN(A, X_{Giant}). $$
See `graph_saint_reg.py` for more details.

Yous should obtain the following results
| ogbn-products | MLP | GraphSAINT |
|---|---|---|
| Valid accuracy (%) | 93.33 ± 0.01 | 93.70 ± 0.03 |
| Test accuracy (%) | 83.01 ± 0.05 | 85.51 ± 0.51 |

### SAGN

For SAGN_SLE, please go to `SAGN_with_SLE` and run
```
bash Runexp_SAGN_SLE_ogbnproducts_morestages.sh
```
and then for "+C&S"
```
Runexp_postprocess_CnS.sh
```

To combine GradBERT with GIANT, 2e use GIANT feats for $K-1$ stages of SLE since it has been pretrained in an unsupervised manner. For stage $K$, we use GradBERT feats as input as they are more label-aware. 

| ogbn-products | SAGN_SLE | SAGN_SLE+C&S |
|---|---|---|
| Average val accuracy (%) | 93.67±0.03 | 93.71±0.03 |
| Average test accuracy (%) | 86.79±0.07 | 86.92±0.07 |


