#!/bin/bash
echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 32 CORES."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/gpu/nrel_5mw
rm -rf core* plt*
srun -n 32 -c 1 --cpu_bind=cores --gres=gpu:2 ~/exawind/source/tioga_utils/build_cuda_opt/exatioga --kokkos-num-devices=2 -i nrel5mw_prod.yaml >& 32.out

echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 16 CORES."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/gpu/nrel_5mw
rm -rf core* plt*
srun -n 16 -c 1 --cpu_bind=cores --gres=gpu:2 ~/exawind/source/tioga_utils/build_cuda_opt/exatioga --kokkos-num-devices=2 -i nrel5mw_prod.yaml >& 16.out

echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 8 CORES."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/gpu/nrel_5mw
rm -rf core* plt*
srun -n 8 -c 1 --cpu_bind=cores --gres=gpu:2 ~/exawind/source/tioga_utils/build_cuda_opt/exatioga --kokkos-num-devices=2 -i nrel5mw_prod.yaml >& 8.out

echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 4 CORES."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/gpu/nrel_5mw
rm -rf core* plt*
srun -n 4 -c 1 --cpu_bind=cores --gres=gpu:2 ~/exawind/source/tioga_utils/build_cuda_opt/exatioga --kokkos-num-devices=2 -i nrel5mw_prod.yaml >& 4.out

echo ""
echo "RUNNING NREL 5MW TEST WITH SMALL ABL MESH ON 2 CORES."
echo ""
cd /scratch/asharma/hole_cut_reg_tests/gpu/nrel_5mw
rm -rf core* plt*
srun -n 2 -c 1 --cpu_bind=cores --gres=gpu:2 ~/exawind/source/tioga_utils/build_cuda_opt/exatioga --kokkos-num-devices=2 -i nrel5mw_prod.yaml >& 2.out

