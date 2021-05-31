#!/bin/bash

# mixreg
FILES=procgen_exp/ppo/procgen/mixreg/starpilot/run_1/checkpoints/*
touch procgen_exp/ppo/procgen/mixreg/starpilot/run_1/test.csv
echo "eplenmean,eprewmean,fps,misc/explained_variance,misc/nupdates,misc/serial_timesteps,misc/time_elapsed,misc/total_timesteps" > procgen_exp/ppo/procgen/mixreg/starpilot/run_1/test.csv

for f in $FILES
do
    mpiexec -np 1 python -m train_procgen.train_mixreg3 --env_name starpilot --mix_mode mixreg --test_worker_interval 1 --gpus_id 0 --run_id 1 --load_path $f
    tail -n 1 procgen_exp/ppo/procgen/mixreg/starpilot/run_1/progress.csv >> procgen_exp/ppo/procgen/mixreg/starpilot/run_1/test.csv
done

FILES=procgen_exp/ppo/procgen/mixreg/starpilot/run_2/checkpoints/*
touch procgen_exp/ppo/procgen/mixreg/starpilot/run_2/test.csv
echo "eplenmean,eprewmean,fps,misc/explained_variance,misc/nupdates,misc/serial_timesteps,misc/time_elapsed,misc/total_timesteps" > procgen_exp/ppo/procgen/mixreg/starpilot/run_2/test.csv

for f in $FILES
do
    mpiexec -np 1 python -m train_procgen.train_mixreg3 --env_name starpilot --mix_mode mixreg --test_worker_interval 1 --gpus_id 0 --run_id 2 --load_path $f
    tail -n 1 procgen_exp/ppo/procgen/mixreg/starpilot/run_2/progress.csv >> procgen_exp/ppo/procgen/mixreg/starpilot/run_2/test.csv
done

# mixreg3
FILES=procgen_exp/ppo/procgen/mixreg3/starpilot/run_1/checkpoints/*
touch procgen_exp/ppo/procgen/mixreg3/starpilot/run_1/test.csv
echo "eplenmean,eprewmean,fps,misc/explained_variance,misc/nupdates,misc/serial_timesteps,misc/time_elapsed,misc/total_timesteps" > procgen_exp/ppo/procgen/mixreg3/starpilot/run_1/test.csv

for f in $FILES
do
    mpiexec -np 1 python -m train_procgen.train_mixreg3 --env_name starpilot --mix_mode mixreg3 --test_worker_interval 1 --gpus_id 0 --run_id 1 --load_path $f
    tail -n 1 procgen_exp/ppo/procgen/mixreg3/starpilot/run_1/progress.csv >> procgen_exp/ppo/procgen/mixreg3/starpilot/run_1/test.csv
done

FILES=procgen_exp/ppo/procgen/mixreg3/starpilot/run_2/checkpoints/*
touch procgen_exp/ppo/procgen/mixreg3/starpilot/run_2/test.csv
echo "eplenmean,eprewmean,fps,misc/explained_variance,misc/nupdates,misc/serial_timesteps,misc/time_elapsed,misc/total_timesteps" > procgen_exp/ppo/procgen/mixreg3/starpilot/run_2/test.csv

for f in $FILES
do
    mpiexec -np 1 python -m train_procgen.train_mixreg3 --env_name starpilot --mix_mode mixreg3 --test_worker_interval 1 --gpus_id 0 --run_id 2 --load_path $f
    tail -n 1 procgen_exp/ppo/procgen/mixreg3/starpilot/run_2/progress.csv >> procgen_exp/ppo/procgen/mixreg3/starpilot/run_2/test.csv
done