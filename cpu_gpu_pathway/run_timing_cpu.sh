#!/bin/bash
echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 36 CORES."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/cpu_gpu_pathway/nrel_5mw
rm -rf core* plt*
srun -n 36 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i nrel5mw_prod.yaml >& 36.out

#!/bin/bash
echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 72 CORES."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/cpu_gpu_pathway/nrel_5mw
rm -rf core* plt*
srun -n 72 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i nrel5mw_prod.yaml >& 72.out

#!/bin/bash
echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 144 CORES."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/cpu_gpu_pathway/nrel_5mw
rm -rf core* plt*
srun -n 144 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i nrel5mw_prod.yaml >& 144.out

#!/bin/bash
echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 288 CORES."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/cpu_gpu_pathway/nrel_5mw
rm -rf core* plt*
srun -n 288 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i nrel5mw_prod.yaml >& 288.out

#!/bin/bash
echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 576 CORES."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/cpu_gpu_pathway/nrel_5mw
rm -rf core* plt*
srun -n 576 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i nrel5mw_prod.yaml >& 576.out
