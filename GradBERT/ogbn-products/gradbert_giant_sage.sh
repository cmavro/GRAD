# python graph_saint_reg.py --runs 10 --data_root_dir ./dataset/ogbn-products/ --epochs 80 \
# --num_layers 1 --walk_length 1 --hidden_channels 192 --lr 1e-3 \
# --node_emb_path ../embeddings/ogbn-products/gradbert_kd_feats.npy \
# --node_emb_path2 ../embeddings/ogbn-products/giant_feats.npy \
# --alpha 0.25 --eval_steps 5 


python graph_saint_reg.py --runs 10 --data_root_dir ./dataset/ogbn-products/ --epochs 40 \
--num_layers 1 --walk_length 1 --hidden_channels 192 --lr 1e-3 \
--node_emb_path ../embeddings/ogbn-products/gradbert_kd_feats.npy \
--node_emb_path_giant ../embeddings/ogbn-products/giant_feats.npy \
--alpha 0.25 --eval_steps 10 

