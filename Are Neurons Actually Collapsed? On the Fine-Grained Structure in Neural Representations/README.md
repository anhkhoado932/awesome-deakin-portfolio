## Main Objectives

- Reproduce the central experiments from the original paper to critically assess whether Neural Collapse actually eliminates all distributional information from neural network representations.
- Investigate, via both synthetic and real datasets (e.g., CIFAR-10), how input distribution and explicit label semantics simultaneously affect neural representations, even in the Neural Collapse regime.
- Provide visually and quantitatively grounded evidence for fine-grained clustering beneath the label-level collapse, revealing how hidden data structure persists far into training.

## Key Results

- Successfully replicated major results showing last-layer collapse into class clusters, but with underlying subcluster separation reflecting the original data structure.
- Observed that input distribution exerts influence early in training, while label-driven collapse emerges later—yet fine-grained details are preserved for hundreds of epochs.
- Achieved comparable quantitative results (clustering accuracy, representation analysis) and visualizations to those in the paper, confirming the coexistence of Neural Collapse and hidden fine structure.

## Technology Used

![](https://img.shields.io/badge/PyTorch-EE4C2C?style=flat&logo=pytorch&logoColor=white) ![](https://img.shields.io/badge/Python-3776ab?style=flat&logo=python&logoColor=white) ![](https://img.shields.io/badge/NumPy-013243?style=flat&logo=numpy&logoColor=white) ![](https://img.shields.io/badge/matplotlib-11557c?style=flat&logo=python&logoColor=white) ![](https://img.shields.io/badge/CIFAR--10-00BCD4?style=flat&logo=databricks&logoColor=white)
