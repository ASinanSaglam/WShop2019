source /home/test/mcell/mcell_venv/bin/activate
MODEL=$1
NAME=$(basename $MODEL|sed 's/.mdlr//')
if [ -d run ];then
  rm -rf $NAME
fi
mkdir $NAME
cp $MODEL $NAME/.
cp icogeometry.mdl $NAME/.
cd $NAME
python3 /home/test/mcell/build/mdlr2mdl.py -ni $MODEL -o $NAME -r || exit 1 
