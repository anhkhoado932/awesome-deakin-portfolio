## Main Objectives

- Preprocess and explore the ENB building energy dataset to identify variable relationships and prepare data for robust modeling.
- Apply statistical transformation and normalization to correct for skewness and scale disparities, improving model performance.
- Analyze and compare different aggregation models (Weighted Arithmetic Mean, Weighted Power Means, Ordered Weighted Averaging) for the prediction of energy use.
- Select optimal model via error metrics (RMSE and absolute average score) and deploy it for practical prediction scenarios.

## Key Results

- Scatterplot and correlation analysis showed modest but actionable relationships between selected features (X1, X2, X3, X4) and the energy target (Y).
- Feature engineering included log and squared transforms for skewed variables, min-max normalization, and negation to handle negative correlations.
- Comprehensive experiment comparing WAM, WPM (p=0.5, p=2), and OWA aggregation: OWA minimized error (lowest RMSE and mean absolute error).
- Successfully predicted energy use on new data, verifying the chosen model by accurate value recovery.
- Results and transformed datasets exported for reproducibility and further analysis.

## Technology Used

![](https://img.shields.io/badge/R-276DC3?style=flat&logo=r&logoColor=white) ![](https://img.shields.io/badge/MASS-4B8BBE?style=flat&logo=rproject&logoColor=white) ![](https://img.shields.io/badge/Custom%20R%20functions-FA7B17?style=flat&logo=r&logoColor=white)
