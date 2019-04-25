source /home/test/mcell/mcell_venv/bin/activate
MODEL=$1
NAME=$(basename $MODEL|sed 's/.mdlr//')
if [ -d run ];then
  rm -rf run
fi
mkdir run
cp $MODEL run/.
cp icogeometry.mdl run/.
cd run
python3 /home/test/mcell/build/mdlr2mdl.py -ni $MODEL -o $NAME -r || exit 1 
