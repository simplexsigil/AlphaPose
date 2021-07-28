set -x

CONFIG=$1
CKPT=$2
VIDEO=$3
OUTDIR=${4:-"./examples/res"}

python scripts/demo_inference.py \
    --cfg ${CONFIG} \
    --checkpoint ${CKPT} \
    --video ${VIDEO} \
    --outdir ${OUTDIR} \
    --detector yolo --save_video --detbatch 5 --posebatch 20 --gpus 3 --pose_track --qsize 64 --sp
