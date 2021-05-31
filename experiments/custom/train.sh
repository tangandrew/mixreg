#!/bin/bash

# Experiments
# no background
mpiexec -np 1 python -m train_procgen.train --env_name starpilot --mix_mode mixreg --test_worker_interval 2 --gpus_id 0 --run_id 1 --save_interval 5 --disable-backgrounds
mpiexec -np 1 python -m train_procgen.train --env_name starpilot --mix_mode mixreg --test_worker_interval 2 --gpus_id 0 --run_id 2 --save_interval 5 --disable-backgrounds
mpiexec -np 1 python -m train_procgen.train --env_name starpilot --mix_mode nomix --test_worker_interval 2 --gpus_id 0 --run_id 1 --save_interval 5 --disable-backgrounds
mpiexec -np 1 python -m train_procgen.train --env_name starpilot --mix_mode nomix --test_worker_interval 2 --gpus_id 0 --run_id 2 --save_interval 5 --disable-backgrounds
mpiexec -np 1 python -m train_procgen.train --env_name coinrun --mix_mode mixreg --test_worker_interval 2 --gpus_id 0 --run_id 1 --save_interval 5 --disable-backgrounds
mpiexec -np 1 python -m train_procgen.train --env_name coinrun --mix_mode mixreg --test_worker_interval 2 --gpus_id 0 --run_id 2 --save_interval 5 --disable-backgrounds
mpiexec -np 1 python -m train_procgen.train --env_name coinrun --mix_mode nomix --test_worker_interval 2 --gpus_id 0 --run_id 1 --save_interval 5 --disable-backgrounds
mpiexec -np 1 python -m train_procgen.train --env_name coinrun --mix_mode nomix --test_worker_interval 2 --gpus_id 0 --run_id 2 --save_interval 5 --disable-backgrounds

# restrict theme
mpiexec -np 1 python -m train_procgen.train --env_name starpilot --mix_mode mixreg --test_worker_interval 2 --gpus_id 0 --run_id 1 --save_interval 5 --restrict-themes
mpiexec -np 1 python -m train_procgen.train --env_name starpilot --mix_mode mixreg --test_worker_interval 2 --gpus_id 0 --run_id 2 --save_interval 5 --restrict-themes
mpiexec -np 1 python -m train_procgen.train --env_name starpilot --mix_mode nomix --test_worker_interval 2 --gpus_id 0 --run_id 1 --save_interval 5 --restrict-themes
mpiexec -np 1 python -m train_procgen.train --env_name starpilot --mix_mode nomix --test_worker_interval 2 --gpus_id 0 --run_id 2 --save_interval 5 --restrict-themes
mpiexec -np 1 python -m train_procgen.train --env_name coinrun --mix_mode mixreg --test_worker_interval 2 --gpus_id 0 --run_id 1 --save_interval 5 --restrict-themes
mpiexec -np 1 python -m train_procgen.train --env_name coinrun --mix_mode mixreg --test_worker_interval 2 --gpus_id 0 --run_id 2 --save_interval 5 --restrict-themes
mpiexec -np 1 python -m train_procgen.train --env_name coinrun --mix_mode nomix --test_worker_interval 2 --gpus_id 0 --run_id 1 --save_interval 5 --restrict-themes
mpiexec -np 1 python -m train_procgen.train --env_name coinrun --mix_mode nomix --test_worker_interval 2 --gpus_id 0 --run_id 2 --save_interval 5 --restrict-themes

# Extension
# mixreg
mpiexec -np 1 python -m train_procgen.train --env_name starpilot --mix_mode mixreg --test_worker_interval 2 --gpus_id 0 --run_id 1 --save_interval 5 
mpiexec -np 1 python -m train_procgen.train --env_name starpilot --mix_mode mixreg --test_worker_interval 2 --gpus_id 0 --run_id 2 --save_interval 5 

# mixreg3
mpiexec -np 1 python -m train_procgen.train --env_name starpilot --mix_mode mixreg3 --test_worker_interval 2 --gpus_id 0 --run_id 1 --save_interval 5 
mpiexec -np 1 python -m train_procgen.train --env_name starpilot --mix_mode mixreg3 --test_worker_interval 2 --gpus_id 0 --run_id 2 --save_interval 5 