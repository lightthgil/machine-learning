function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

final_dist = nan*ones(size(X,1),1); %�Ƚ���������֣������������
for i = 1 : K
  cent = centroids(i,:);
  cur_dist = sum((X-cent).^2, 2);  %����
  [final_dist, min_dist_index] = min([cur_dist, final_dist], [], 2);  %������Сֵ����Ϊһ��ʼ��ʼ��final_distΪ�����֣����Ա�����min������������<�ж�
  is_closer = min_dist_index == 1; %�ҳ���С����
  idx(is_closer) = i;
end


% =============================================================

end

