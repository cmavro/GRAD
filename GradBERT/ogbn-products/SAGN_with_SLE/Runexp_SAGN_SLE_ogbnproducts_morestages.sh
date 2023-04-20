pretrain_path=../../../embeddings/ogbn-products/giant_feats.npy
node_emb_path=../../../embeddings/ogbn-products/gradbert_kd_feats.npy
data_root_dir=../dataset

cd "$(dirname $0)" 
if [ ! -n "$1" ] ; then
    gpu="0"
else
    gpu="$1"
fi
echo "gpu: $gpu"
python -u src/sagn.py \
    --dataset ogbn-products \
    --gpu $gpu \
    --aggr-gpu -1 \
    --model sagn \
    --seed 0 \
    --num-runs 10 \
    --threshold 0.95 0.95 0.999  \
    --epoch-setting 100 100 100 10 \
    --lr 0.001 \
    --zero-inits \
    --batch-size 50000 \
    --num-hidden 256 \
    --num-heads 1 \
    --dropout 0.5 \
    --attn-drop 0.4 \
    --input-drop 0.2 \
    --label-drop 0.5 \
    --K 3 \
    --label-K 9 \
    --use-labels \
    --weight-decay 0 \
    --warmup-stage -1 \
    --mlp-layer 1 \
    --data_root_dir $data_root_dir \
    --pretrain_path $pretrain_path \
    --node_emb_path $node_emb_path \
    |& tee ./Default.Ptrn.uselabels.morestage.log