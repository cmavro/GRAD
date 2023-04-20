python -u sage_gnn.py --runs 10 \
--data_root_dir ./dataset/ogbn-arxiv/ --use_sage --lr 0.0005 \
--node_emb_path ../embeddings/ogbn-arxiv/gradbert_feats.npy \
--dropout 0.5 --epochs 300 --num_layers 1