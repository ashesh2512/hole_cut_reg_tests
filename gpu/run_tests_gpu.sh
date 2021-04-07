#!/bin/bash
echo ""
echo "RUNNING CTV test with 2 CELL VAR AND 1 NODE VAR ON 1 CORE."
echo ""
cd /scratch/asharma/amr_reg_test/gpu/ctv
rm -rf core* plt*
srun -n 1 -c 1 --cpu_bind=cores --gres=gpu:1 ~/exawind/source/tioga_utils/build_cuda_opt/exatioga --kokkos-num-devices=1 -i ctv_2cell_1node_constant.yaml

echo ""
echo "RUNNING CTV test with 1 CELL VAR AND 2 NODE VAR ON 1 CORE."
echo ""
srun -n 1 -c 1 --cpu_bind=cores --gres=gpu:1 ~/exawind/source/tioga_utils/build_cuda_opt/exatioga --kokkos-num-devices=1 -i ctv_1cell_2node_constant.yaml

echo ""
echo "RUNNING SINGLE SPHERE TEST ON 1 CORE."
echo ""
cd /scratch/asharma/amr_reg_test/gpu/sphere_w_amr
rm -rf core* plt*
srun -n 1 -c 1 --cpu_bind=cores --gres=gpu:1 ~/exawind/source/tioga_utils/build_cuda_opt/exatioga --kokkos-num-devices=1 -i sphere.yaml

echo ""
echo "RUNNING SINGLE SPHERE TEST ON 3 CORES."
echo ""
srun -n 3 -c 1 --cpu_bind=cores --gres=gpu:2 ~/exawind/source/tioga_utils/build_cuda_opt/exatioga --kokkos-num-devices=2 -i sphere.yaml

echo ""
echo "RUNNING FOUR SPHERE TEST ON 1 CORE."
echo ""
srun -n 1 -c 1 --cpu_bind=cores --gres=gpu:1 ~/exawind/source/tioga_utils/build_cuda_opt/exatioga --kokkos-num-devices=1 -i four_sphere.yaml

echo ""
echo "RUNNING FOUR SPHERE TEST ON 11 CORES."
echo ""
srun -n 11 -c 1 --cpu_bind=cores --gres=gpu:2 ~/exawind/source/tioga_utils/build_cuda_opt/exatioga --kokkos-num-devices=2 -i four_sphere.yaml

echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 9 CORES."
echo ""
cd /scratch/asharma/amr_reg_test/gpu/nrel_5mw
rm -rf core* plt*
srun -n 9 -c 1 --cpu_bind=cores --gres=gpu:2 ~/exawind/source/tioga_utils/build_cuda_opt/exatioga --kokkos-num-devices=2 -i nrel5mw_small.yaml
