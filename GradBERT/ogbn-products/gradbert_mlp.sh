python3 mlp.py --runs 10 --data_root_dir ./dataset/ogbn-products/ \
--node_emb_path ../embeddings/ogbn-products/gradbert_kd_feats.npy \
--dropout 0.8 --lr 0.01 --num_layers 2 --epochs 300