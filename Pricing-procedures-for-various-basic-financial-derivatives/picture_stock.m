T=Untitled;
TT=table2timetable(T,'Rowtimes','data');
candle(TT);
index=rsindex(TT);
plot(index,Time,index.RelativeStrengthIndex);
[MACDLine,signalLine]=macd(TT);
plot(MACDLine.Time,MACDLine.Close,signalLine.Time,signalLine.Close);
legend('MACDLine','NinePerMA');