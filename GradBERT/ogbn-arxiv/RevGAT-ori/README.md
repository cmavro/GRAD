# GradBERT+RevGAT


## Get Started

Please follow the instruction in [[GIANT]](https://github.com/elichienxD/SAGN_with_SLE) for installing the necessary dependencies. 

You should only need to additionally install [dgl>=0.5.3](https://github.com/dmlc/dgl). See [here](https://www.dgl.ai/pages/start.html) for pip/conda installation instruction for dgl.



## GradBERT+RevGAT Results

Run `Runexp_RevGAT_ogbnarxiv.sh` for reproducing our results for ogbn-arxiv dataset with GIANT-XRT features.

```
New arguments

--data_root_dir: path to save ogb datasets.
--node_emb_path: path to load GradBERT features. They should be in the `../../embeddings/ogbn-arxiv/` folders.
``` 

## Results
If execute correctly, you should have the following performance (using our pretrained GIANT-XRT features).

|  | RevGAT | RevGAT+KD |
|---|---|---|
| Average val accuracy (%) | 77.70 ± 0.09 | 77.57 ± 0.09 |
| Average test accuracy (%) | 77.04 ± 0.16 | 77.21 ± 0.31 |

Number of params: 1304912

For more details about RevGAT, please check the original README.

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

RevGAT paper:

```
@InProceedings{li2021gnn1000,
    title={Training Graph Neural Networks with 1000 layers},
    author={Guohao Li and Matthias Müller and Bernard Ghanem and Vladlen Koltun},
    booktitle={International Conference on Machine Learning (ICML)},
    year={2021}
}
```

