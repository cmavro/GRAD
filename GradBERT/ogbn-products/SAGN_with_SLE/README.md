# GradBERT+GIANT with SAGN+SLE

## Get Started

Please follow the instruction in [[GIANT]](https://github.com/elichienxD/SAGN_with_SLE) for installing the necessary dependencies. 

You should only need to additionally install [dgl>=0.5.3](https://github.com/dmlc/dgl). See [here](https://www.dgl.ai/pages/start.html) for pip/conda installation instruction for dgl.


Please also install the following packages
```
pip install matplotlib
pip install seaborn
```

These two packages are inherent in the code of SAGN.

## Approach

We use GIANT feats for $K-1$ stages of SLE since it has been pretrained in an unsupervised manner. For stage $K$, we use GradBERT feats as input as they are more label-aware. See `src/pre_process.py` lines 310-318.

Run `Runexp_SAGN_SLE_ogbnproducts_morestages.sh`(SAGN+SLE morestages) for the new setting provided in the SAGN repo.

For the "+C&S" result, run `Runexp_postprocess_CnS.sh` after running `Runexp_SAGN_SLE_ogbnproducts_morestages.sh`.

```
New arguments

--data_root_dir: path to save ogb datasets.
--pretrain_path: path to load GIANT-XRT features. Set it to 'None' for using ogb default features.
--node_emb_path: oath to load GraD features. They will be used as input in the final SAGN+SLE stage.
``` 

## Results
If execute correctly, you should have the following performance (using our pretrained GIANT-XRT features for $K-1$ stages and GradBERT features for stage $K$).



**(SAGN+SLE morestages)** Number of params: 1548382

| SAGN+SLE (morestages) | stage 0 (GIANT) | stage 1 (GIANT) | stage 2 (GIANT) | stage 3 (GradBERT) | +C&S |
|---|---|---|---|---|---|
| Average val accuracy (%) | 93.24±0.06 | 93.58±0.06 | 93.51±0.04 | 93.67±0.03 | 93.71±0.03 |
| Average test accuracy (%) | 84.05±0.15 | 84.96±0.18 | 85.64±0.17 | 86.79±0.07 | 86.92±0.07 |


For more details about SAGN, please check the original README.

## Acknowledgements


GIANT paper:
```
@inproceedings{chien2021node,
  title={Node Feature Extraction by Self-Supervised Multi-scale Neighborhood Prediction},
  author={Chien, Eli and Chang, Wei-Cheng and Hsieh, Cho-Jui and Yu, Hsiang-Fu and Zhang, Jiong and Milenkovic, Olgica and Dhillon, Inderjit S},
  booktitle={International Conference on Learning Representations (ICLR)},
  year={2022}
}
```

SAGN paper:

```
@article{sun2021scalable,
  title={Scalable and Adaptive Graph Neural Networks with Self-Label-Enhanced training},
  author={Sun, Chuxiong and Wu, Guoshi},
  journal={arXiv preprint arXiv:2104.09376},
  year={2021}
}
```

C&S paper:

```
@inproceedings{
huang2021combining,
title={Combining Label Propagation and Simple Models out-performs Graph Neural Networks},
author={Qian Huang and Horace He and Abhay Singh and Ser-Nam Lim and Austin Benson},
booktitle={International Conference on Learning Representations},
year={2021},
url={https://openreview.net/forum?id=8E1-f3VhX1o}
}
```

