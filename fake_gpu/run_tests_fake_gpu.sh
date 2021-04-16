#!/bin/bash
echo ""
echo "RUNNING CTV test with 2 CELL VAR AND 1 NODE VAR ON 1 CORE."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/fake_gpu/ctv
rm -rf core* plt*
srun -n 1 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_fake_cuda_opt/exatioga -i ctv_2cell_1node_constant.yaml

echo ""
echo "RUNNING CTV test with 1 CELL VAR AND 2 NODE VAR ON 1 CORE."
echo ""
srun -n 1 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_fake_cuda_opt/exatioga -i ctv_1cell_2node_constant.yaml

echo ""
echo "RUNNING SINGLE SPHERE TEST ON 1 CORE."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/fake_gpu/sphere_w_amr
rm -rf core* plt*
srun -n 1 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_fake_cuda_opt/exatioga -i sphere.yaml

echo ""
echo "RUNNING SINGLE SPHERE TEST ON 3 CORES."
echo ""
srun -n 3 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_fake_cuda_opt/exatioga -i sphere.yaml

echo ""
echo "RUNNING FOUR SPHERE TEST ON 1 CORE."
echo ""
srun -n 1 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_fake_cuda_opt/exatioga -i four_sphere.yaml

echo ""
echo "RUNNING FOUR SPHERE TEST ON 11 CORES."
echo ""
srun -n 11 -c 1 --cpu_bind=cores ~/exawind/source/tioga_utils/build_fake_cuda_opt/exatioga -i four_sphere.yaml

echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 9 CORES."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/fake_gpu/nrel_5mw
rm -rf core* plt*
srun -n 9 -c 1 ~/exawind/source/tioga_utils/build_fake_cuda_opt/exatioga -i nrel5mw_small.yaml
