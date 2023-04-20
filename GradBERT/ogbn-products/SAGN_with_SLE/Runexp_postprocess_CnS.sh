data_root_dir=../dataset

#cd "$(dirname $0)" 
if [ ! -n "$1" ] ; then
    gpu="0"
else
    gpu="$1"
fi
echo "gpu: $gpu"
# python -u src/post_process.py \
#     --dataset ogbn-products \
#     --gpu $gpu \
#     --model sagn \
#     --K 3 \
#     --label-K 9 \
#     --use-labels \
#     --stage 3 \
#     --num-correction-layers 50 \
#     --num-smoothing-layers 50 \
#     --correction-alpha 0.4553513529697225 \
#     --smoothing-alpha 0.7153479868942039 \
#     --correction-adj DAD \
#     --smoothing-adj DAD \
#     --scale 15


python -u src/post_process.py \
    --dataset ogbn-products \
    --gpu $gpu \
    --model sagn \
    --K 3 \
    --seed 20 \
    --label-K 9 \
    --use-labels \
    --stage 3 \
    --num-correction-layers 1 \
    --num-smoothing-layers 1 \
    --correction-alpha 0.45 \
    --smoothing-alpha 0.6 \
    --correction-adj DAD \
    --smoothing-adj DAD \
    --scale 20 \
    --data_root_dir $data_root_dir \