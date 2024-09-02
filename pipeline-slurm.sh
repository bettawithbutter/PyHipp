#!/bin/bash

# Submit this script with: sbatch <this-filename>

<<<<<<< HEAD
<<<<<<< HEAD
#SBATCH --time=24:00:00   # walltime
=======
#SBATCH --time=1:00:00   # walltime
>>>>>>> upstream/main
=======
#SBATCH --time=1:00:00   # walltime
>>>>>>> 0d3adf9531800ea710f77c23052565a148da3407
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH -J "pipe"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o pipe-slurm.%N.%j.out # STDOUT
#SBATCH -e pipe-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
<<<<<<< HEAD
<<<<<<< HEAD

aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:208292966269:awsnotify --message "JobDone"

=======
python -u -c "import PyHipp as pyh; import DataProcessingTools as DPT; import os; import time; t0 = time.time(); print(time.localtime()); DPT.objects.processDirs(dirs=None, objtype=pyh.RPLParallel, saveLevel=1); DPT.objects.processDirs(dirs=None, objtype=pyh.RPLSplit, channel=[9, 31, 34, 56, 72, 93, 119, 120]); DPT.objects.processDirs(dirs=None, objtype=pyh.RPLLFP, saveLevel=1); DPT.objects.processDirs(dirs=None, objtype=pyh.RPLHighPass, saveLevel=1); DPT.objects.processDirs(dirs=None, objtype=pyh.Unity, saveLevel=1); pyh.EDFSplit(); os.chdir('session01'); DPT.objects.processDirs(level='channel', cmd='import PyHipp as pyh; from PyHipp import mountain_batch; mountain_batch.mountain_batch(); from PyHipp import export_mountain_cells; export_mountain_cells.export_mountain_cells();'); pyh.aligning_objects(); pyh.raycast(1); print(time.localtime()); print(time.time()-t0);"
>>>>>>> upstream/main
=======
python -u -c "import PyHipp as pyh; import DataProcessingTools as DPT; import os; import time; t0 = time.time(); print(time.localtime()); DPT.objects.processDirs(dirs=None, objtype=pyh.RPLParallel, saveLevel=1); DPT.objects.processDirs(dirs=None, objtype=pyh.RPLSplit, channel=[9, 31, 34, 56, 72, 93, 119, 120]); DPT.objects.processDirs(dirs=None, objtype=pyh.RPLLFP, saveLevel=1); DPT.objects.processDirs(dirs=None, objtype=pyh.RPLHighPass, saveLevel=1); DPT.objects.processDirs(dirs=None, objtype=pyh.Unity, saveLevel=1); pyh.EDFSplit(); os.chdir('session01'); DPT.objects.processDirs(level='channel', cmd='import PyHipp as pyh; from PyHipp import mountain_batch; mountain_batch.mountain_batch(); from PyHipp import export_mountain_cells; export_mountain_cells.export_mountain_cells();'); pyh.aligning_objects(); pyh.raycast(1); print(time.localtime()); print(time.time()-t0);"
>>>>>>> 0d3adf9531800ea710f77c23052565a148da3407
