hidden_channels=256
mlp_layer=1
K=3
pretrain_path=../../../embeddings/ogbn-products/gradbert_kd_feats.npy
data_root_dir=../dataset

cd "$(dirname $0)" 
if [ ! -n "$1" ] ; then
    gpu="0"
else
    gpu="$1"
fi
echo "gpu: $gpu"
python -u ./src/sagn_scr.py \
    --dataset ogbn-products \
    --gpu $gpu \
    --aggr-gpu -1 \
    --model sagn \
    --seed 0 \
    --num-runs 1 \
    --threshold 0.95 \
    --epoch-setting 100 100 \
    --lr 0.00001 \
    --batch-size 50000 \
    --num-hidden $hidden_channels \
    --num-heads 3 \
    --dropout 0.8 \
    --attn-drop 0.6 \
    --input-drop 0.4 \
    --label-drop 0.6 \
    --K ${K} \
    --label-K 1 \
    --use-labels \
    --weight-decay 0 \
    --warmup-stage -1 \
    --mlp-layer $mlp_layer \
    --data_root_dir $data_root_dir \
    --pretrain_path $pretrain_path \
    --eval-every 10 \
    |& tee ./${hidden_channels}.${mlp_layer}.${K}.Ptrn.uselabels.log
    
