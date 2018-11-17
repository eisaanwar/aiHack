T = readtable('trainingData.csv');
id = {'NA' '' -99 NaN Inf};
sumMiss = sum(ismissing(T,id));
per = sumMiss / 353546 * 100;
array = {};
for n=1:length(per)
    element = per(n);
    if element > 80
       array{end+1} = T.Properties.VariableNames{n};
    end
end

for n1=1:length(array)
    element2 = array{n1};
    T(:,element2) = [];
    head(T,353546);
end

writetable(T,'ReducedTrainingData.csv');
type 'ReducedTrainingData.csv';
