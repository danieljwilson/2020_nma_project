# Project Title
**Pod-168-knowing-grebe | Group B**

Yvonne Li, Changwoo Seo, Sarah Sheldon, Daniel J Wilson

---
[Overview](#Overview) | [Resources](#Resources)

---

## Overview

### Scientific Question

Can spontaneous behaviors be described with discrete states? Do the different behavioral states correspond to states of neural activity? Can we characterize this activity by its dynamical properties? 

### Brief scientific background

Internal states are known to affect animal behavior during specific tasks such as decision making and sensory motor activities. Can spontaneous natural behavior in the absence of stimuli or objectives also be described with discrete internal states? Are animals simply moving or not moving, or is there more than this simple categorization? 

### Proposed analyses

Using multiple behavior measures (pupil size, position, velocity, facial motion, whisker), we will infer internal states (latent states) of the animal using Hidden Markov Model (HMM). Then, we will analyze neural activity to look at how neural dynamics change in different states.Hidden Markov Model (HMM), Generalized linear model (GLM), Principal component analysis (PCA), Latent Factor Analysis via Dynamical Systems (LFADS), Dimensionality reduction, single trial data, shared variance component analysis (SVCA)

### Predictions

Using multiple behavioral features, we will test if there are more than two states that correspond to moving and not moving. We will optimize the number of discrete behavioral states by predictions on held-out data. Then, we will check multiple neural properties in each behavioral state (dimensionality, population dynamics, covariance). We expect a one-state model to be optimal in a shuffled time series.

### Dataset

Stringer spontaneous calcium imaging data in V1

### Controls

Use held-out data to find the optimal number of states. Find states in shuffled time series.


## Resources

### Papers

- [Spontaneous behaviors drive multidimensional, brainwide activity](https://science.sciencemag.org/content/364/6437/eaav7893)

- [High precision coding in visual cortex](https://www.biorxiv.org/content/10.1101/679324v2)

### Methods

- [Engle et al., 2016](https://sci-hub.tw/10.1126/science.aag1420): Selective modulation of cortical state during spatial attention. 
- [Calhoun et al., 2019](https://sci-hub.tw/10.1038/s41593-019-0533-x): Unsupervised identification of the internal states that shape natural behavior	
- [Cunningham & Yu, 2014](https://sci-hub.tw/10.1038/nn.3776): Dimensionality reduction for large-scale neural recordings	
- [Gao et al. 2017](https://www.biorxiv.org/content/10.1101/214262v2.full): A theory of multineuronal dimensionality, dynamics and measurement	
- [Jazayeriand & Afraz, 2017](https://sci-hub.tw/10.1016/j.neuron.2017.02.019): Navigating the Neural Space in Search of the Neural Code	
- [LFADS](https://arxiv.org/abs/1608.06315)
- [Izenman, 1975](https://www.sciencedirect.com/science/article/pii/0047259X75900421): reduced rank regression

### Videos
- [Dataset Description](https://www.youtube.com/watch?v=78GSgf6Dkkk&feature=youtu.be)
- [High-dimensional signal and noise in 20,000 neuron recordings - Carsen Stringer](https://www.youtube.com/watch?v=1FCCh4COiCM&amp%3Bt=833s&t=1373s)

### Code/Data
- Colab Notebook example for loading the data ([this](https://colab.research.google.com/github/NeuromatchAcademy/course-content/blob/master/projects/load_stringer_spontaneous.ipynb), and [this](https://colab.research.google.com/github/NeuromatchAcademy/course-content/blob/master/projects/load_stringer_orientations.ipynb))
- [Load Data](https://github.com/NeuromatchAcademy/course-content/tree/master/projects) (Jupyter notebook)
- [Poisson HMM Demo](https://github.com/slinderman/ssm/blob/master/notebooks/Poisson HMM Demo.ipynb) (Jupyter notebook)
- [Carsen Code](https://github.com/MouseLand/stringer-et-al-2019)



**Possible keywords/key-phrases to include (maybe):** Analyze neural activity using hidden Markov models then compare latent dynamics across behavioral statesDimensionality of neuronal activity within a behavioral stateMeasures of neural activity shared across behavioral statesHow many dimensions does neural activity have in each behavior state. Can we predict the behavioral state from the dimensional activity
Method to identify dimensions of neural variance that are reliably determined by common underlying signals, termed shared variance component analysis (SVCA).If we exclude neurons whose variance is explained by motor behavior in our population analysis, do we still expect to see any difference in distinct behavioral states?
