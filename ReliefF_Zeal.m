function [Rank, Score] = ReliefF_Zeal(X, y, K)

%% Use Matlab implementation

%   RELIEFF Importance of attributes (predictors) using ReliefF algorithm.
%   [RANKED,WEIGHT] = RELIEFF(X,Y,K) computes ranks and weights of
%   attributes (predictors) for input data matrix X and response vector Y
%   using ReliefF algorithm for classification or RReliefF for regression
%   with K nearest neighbors. 

%   For classification, RELIEFF uses K nearest
%   neighbors per class. RANKED are indices of columns in X ordered by
%   attribute importance, meaning RANKED(1) is the index of the most
%   important predictor. WEIGHT are attribute weights ranging from -1 to 1
%   with large positive weights assigned to important attributes.
%
%   If Y is numeric, RELIEFF by default performs RReliefF analysis for
%   regression. If Y is categorical, logical, a character array, or a cell
%   array of strings, RELIEFF by default performs ReliefF analysis for
%   classification.
%
%   Attribute ranks and weights computed by RELIEFF usually depend on K. If
%   you set K to 1, the estimates computed by RELIEFF can be unreliable for
%   noisy data. If you set K to a value comparable with the number of
%   observations (rows) in X, RELIEFF can fail to find important
%   attributes. You can start with K=10 and investigate the stability and
%   reliability of RELIEFF ranks and weights for various values of K.

    [Rank, Score] = relieff(X, y, K);

end