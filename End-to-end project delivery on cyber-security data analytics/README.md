## Main Objectives

The main objective of this project is to build effective cyber-attack classification models on network traffic data to protect critical digital infrastructure. With the continuous rise in cyber threats such as Denial-of-Service (DoS), unauthorized access, and data breaches, accurately detecting malicious activities is vital for maintaining network security and preventing substantial operational and financial damage. 

This project addresses the importance of deploying robust intrusion detection systems by evaluating machine learning algorithms on representative datasets, ultimately aiming to improve automated threat identification and reduce risks posed by increasingly sophisticated cyber-attacks.​


## Key Results

- In NSL-KDD, the highest weighted F1-score is achieved by SVM and MLP (0.73), while Random Forest attains top precision (0.89 macro, 0.81 weighted).
- In TON_IoT, Random Forest and KNN both deliver excellent precision (0.92 and 0.91, respectively) and F1-score (0.81), with ROC AUC up to 0.85.
- Logistic Regression and SVM are less suitable for TON_IoT, with lower recall rates and F1-scores.
- All models struggled with data imbalance in NSL-KDD, especially distinguishing attacks from benign network traffic.

## Technology Used

![](https://img.shields.io/badge/Python-3776ab?style=flat&logo=python&logoColor=white)
![](https://img.shields.io/badge/scikit--learn-F7931E?style=flat&logo=scikit-learn&logoColor=white)
![](https://img.shields.io/badge/NumPy-013243?style=flat&logo=numpy&logoColor=white)
![](https://img.shields.io/badge/Pandas-150458?style=flat&logo=pandas&logoColor=white)
![](https://img.shields.io/badge/Matplotlib-11557c?style=flat&logo=python&logoColor=white)
