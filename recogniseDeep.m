function [c] = recogniseDeep(I,trainedNetwork_1,trainedNetwork_2,trainedNetwork_3)
    weights = [6, 72, 22];
    I_Resnet = imresize(I, [224 224]); % Resnet
    I_DenseNet = imresize(I, [224 224]); % DenseNet
    I_Darknet = imresize(I, [256 256]); % Darknet V1

    % Identification
    probsResnet = predict(trainedNetwork_1, I_Resnet);
    probsResnet = probsResnet / sum(probsResnet); % Normalize

    probsDenseNet = predict(trainedNetwork_2, I_DenseNet);
    probsDenseNet = probsDenseNet / sum(probsDenseNet); % Normalize

    probsDarknet = predict(trainedNetwork_3, I_Darknet);
    probsDarknet = probsDarknet / sum(probsDarknet); % Normalize

    % Combinaison des probabilités
    combinedProbs = weights(1) * probsResnet + ...
                    weights(2) * probsDenseNet + ...
                    weights(3) * probsDarknet;
    combinedProbs = combinedProbs / sum(combinedProbs);

    % Classe finale prédite
    [probstot, predictedClassIdx] = max(combinedProbs);
    c = trainedNetwork_2.Layers(end).Classes(predictedClassIdx); % Supposant même ordre des classes
    c = str2double(string(c));
end
