#!/bin/bash
echo ""
echo "RUNNING CTV test with 2 CELL VAR AND 1 NODE VAR ON 1 CORE."
echo ""
cd /scratch/asharma/amr_reg_test/cpu_old_pathway/ctv
rm -rf core* plt*
srun -n 1 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i ctv_amr_constant.yaml

echo ""
echo "RUNNING CTV test with 1 CELL VAR AND 2 NODE VAR ON 1 CORE."
echo ""
srun -n 1 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i ctv_stk_constant.yaml

echo ""
echo "RUNNING SINGLE SPHERE TEST ON 1 CORE."
echo ""
cd /scratch/asharma/amr_reg_test/cpu_old_pathway/sphere_w_amr
rm -rf core* plt*
srun -n 1 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i sphere.yaml

echo ""
echo "RUNNING SINGLE SPHERE TEST ON 3 CORES."
echo ""
srun -n 3 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i sphere.yaml

echo ""
echo "RUNNING FOUR SPHERE TEST ON 1 CORE."
echo ""
srun -n 1 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i four_sphere.yaml

echo ""
echo "RUNNING FOUR SPHERE TEST ON 11 CORES."
echo ""
srun -n 11 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i four_sphere.yaml

echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 9 CORES."
echo ""
cd /scratch/asharma/amr_reg_test/cpu_old_pathway/nrel_5mw
rm -rf core* plt*
srun -n 9 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i nrel5mw_small.yaml

echo ""
echo "RUNNING NREL 5MW TEST ON 103 CORES."
echo ""
rm -rf core*
srun -n 103 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_gcc_opt/exatioga -i nrel5mw.yaml
