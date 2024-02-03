function blackjackstay
nsamples=1000000;
win=0;
loss=0;
for i=1:nsamples
    c=randperm(52);
    points=value(c);
    aces=find(points==1);
    points(aces)=points(aces)+10;
    hand=points(1)+points(3);
    dealer=points(2)+points(4);
    if hand==15 && points(4)==10
        if dealer > hand
            loss=loss+1;
        else
            win=win+1;
        end
    end
end
meetfrac=(loss+win)/nsamples;
winfrac=win/(loss+win);
fprintf('Fraction meeting criteria is %f\n', meetfrac)
fprintf('Winning Fraction is %f\n',winfrac)
%
function v = value(x)
% Evaluate hand
v = mod(x-1,13)+1;
v = min(v,10);
