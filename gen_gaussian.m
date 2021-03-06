function emis = gen_gaussian(vector,verbose)
%GEN_GAUSSIAN Generate a multivariate Gaussian distribution for emission 
%             probability. Covariance matrix is diagonal (assignment).
% input: vector - feature vector, with [utterances features] as dimension. 
%                 [utterances features] is the size of the input vector.
%        verbose - true to print more information
% output: emis - emission probability structure
%         emis.mean - mean of the Gaussian distribution size [1 features]
%         emis.cov - covariance of the Gaussian distribution size [features features]
% Author: Chengbin Wang 2021 KU Leuven
  if verbose
    % fprintf('gen_gaussian: input size is (%d,%d)\n', size(vector));
  end
  % for each feature, generate a Gaussian distribution. 
  emis.mean=mean(vector); % size: [1 features]
  emis.cov=cov(vector);   % size: [features features]
end