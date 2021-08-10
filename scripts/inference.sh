
set -x

CONFIG=$1
CKPT=$2
VIDEO=$3
OUTDIR=${4:-"./examples/res"}

python scripts/demo_inference.py \
    --cfg ${CONFIG} \
    --checkpoint ${CKPT} \
    --indir ${VIDEO} \
    --outdir ${OUTDIR} \
    --detector yolo --detbatch 5 --posebatch 10 --gpus 0,1 --qsize 32 --sp --pose_track
