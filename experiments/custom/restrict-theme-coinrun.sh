#!/bin/bash
# Mixreg
FILES=procgen_exp/ppo/restrict_theme/procgen/mixreg/coinrun/run_1/checkpoints/*
touch procgen_exp/ppo/restrict_theme/procgen/mixreg/coinrun/run_1/test.csv
echo "eplenmean,eprewmean,fps,misc/explained_variance,misc/nupdates,misc/serial_timesteps,misc/time_elapsed,misc/total_timesteps" > procgen_exp/ppo/restrict_theme/procgen/mixreg/coinrun/run_1/test.csv

for f in $FILES
do
    mpiexec -np 1 python -m train_procgen.train --env_name coinrun --mix_mode mixreg --test_worker_interval 1 --gpus_id 0 --run_id 1 --load_path $f --restrict-themes
    tail -n 1 procgen_exp/ppo/restrict_theme/procgen/mixreg/coinrun/run_1/progress.csv >> procgen_exp/ppo/restrict_theme/procgen/mixreg/coinrun/run_1/test.csv
done

FILES=procgen_exp/ppo/restrict_theme/procgen/mixreg/coinrun/run_2/checkpoints/*
touch procgen_exp/ppo/restrict_theme/procgen/mixreg/coinrun/run_2/test.csv
echo "eplenmean,eprewmean,fps,misc/explained_variance,misc/nupdates,misc/serial_timesteps,misc/time_elapsed,misc/total_timesteps" > procgen_exp/ppo/restrict_theme/procgen/mixreg/coinrun/run_2/test.csv

for f in $FILES
do
    mpiexec -np 1 python -m train_procgen.train --env_name coinrun --mix_mode mixreg --test_worker_interval 1 --gpus_id 0 --run_id 2 --load_path $f --restrict-themes
    tail -n 1 procgen_exp/ppo/restrict_theme/procgen/mixreg/coinrun/run_2/progress.csv >> procgen_exp/ppo/restrict_theme/procgen/mixreg/coinrun/run_2/test.csv
done

# Nomix
FILES=procgen_exp/ppo/restrict_theme/procgen/nomix/coinrun/run_1/checkpoints/*
touch procgen_exp/ppo/restrict_theme/procgen/nomix/coinrun/run_1/test.csv
echo "eplenmean,eprewmean,fps,misc/explained_variance,misc/nupdates,misc/serial_timesteps,misc/time_elapsed,misc/total_timesteps" > procgen_exp/ppo/restrict_theme/procgen/nomix/coinrun/run_1/test.csv

for f in $FILES
do
    mpiexec -np 1 python -m train_procgen.train --env_name coinrun --mix_mode nomix --test_worker_interval 1 --gpus_id 0 --run_id 1 --load_path $f --restrict-themes
    tail -n 1 procgen_exp/ppo/restrict_theme/procgen/nomix/coinrun/run_1/progress.csv >> procgen_exp/ppo/restrict_theme/procgen/nomix/coinrun/run_1/test.csv
done

FILES=procgen_exp/ppo/restrict_theme/procgen/nomix/coinrun/run_2/checkpoints/*
touch procgen_exp/ppo/restrict_theme/procgen/nomix/coinrun/run_2/test.csv
echo "eplenmean,eprewmean,fps,misc/explained_variance,misc/nupdates,misc/serial_timesteps,misc/time_elapsed,misc/total_timesteps" > procgen_exp/ppo/restrict_theme/procgen/nomix/coinrun/run_2/test.csv

for f in $FILES
do
    mpiexec -np 1 python -m train_procgen.train --env_name coinrun --mix_mode nomix --test_worker_interval 1 --gpus_id 0 --run_id 2 --load_path $f --restrict-themes
    tail -n 1 procgen_exp/ppo/restrict_theme/procgen/nomix/coinrun/run_2/progress.csv >> procgen_exp/ppo/restrict_theme/procgen/nomix/coinrun/run_2/test.csv
done

