# Improving Generalization in Reinforcement Learning with Mixture Regularization

[[site]](https://policy.fit/projects/mixreg/index.html) [[paper]](https://arxiv.org/abs/2010.10814)

This repo contains code for our NeurIPS 2020 paper Improving Generalization in Reinforcement Learning with Mixture Regularization. Code for PPO is based on [train-procgen](https://github.com/openai/train-procgen). Code for Rainbow is based on [retro-baselines](https://github.com/openai/retro-baselines) and [anyrl-py](https://github.com/unixpickle/anyrl-py).

## 🍜 Set up conda env and install OpenAI Baselines

```bash
conda env create --file py37_cu10_tf115.yml
conda activate py37_cu10_tf115.yml

git clone https://github.com/openai/baselines.git
cd baselines
pip install -e .
```

## 🌭 Experiments & results

Scripts in the `experiments/custom` folder are provided to start training and testing the custom experiments. Results can be found in the `procgen_exp` folder. Code used for plotting can be found in `figures.ipynb`.

## Credits
This code was built upon the code provided by Wang et al. under the MIT License.

## Citation
```
@misc{wang2020improving,
      title={Improving Generalization in Reinforcement Learning with Mixture Regularization}, 
      author={Kaixin Wang and Bingyi Kang and Jie Shao and Jiashi Feng},
      year={2020},
      eprint={2010.10814},
      archivePrefix={arXiv},
      primaryClass={cs.LG}
}
```
