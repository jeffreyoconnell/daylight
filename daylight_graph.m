close all;  %Closes all previour graphs and clears screen
% Data from from https://www.timeanddate.com

%t1, t2 and date create a vector of the dates in the year
t1=datetime(2024,1,1);
t2=datetime(2024,12,31);
date=t1:t2;

% read the data from the spreadsheet which must be in the 
% same folder as this file
Fremont=xlsread('daylight.xlsx','Fremont');
Lahaina=xlsread('daylight.xlsx','Lahaina');
Anchorage=xlsread('daylight.xlsx','Anchorage');
Brisbane=xlsread('daylight.xlsx','Brisbane');

% Should only need to change the title each year.
figure
plot(date,24*Fremont(:,2))
hold on
plot(date,24*Lahaina(:,2))
plot(date,24*Anchorage(:,2))
plot(date,24*Brisbane(:,2))
grid on
ax = gca;
ax.FontSize = 14; 
set(groot,'defaultLineLineWidth',3.0) %set all plots to have a thickness of 2 points
title('Daylight in 2024','fontsize',24)
xlabel('Date','fontsize',18)
xticks([datetime(2024,1,1),datetime(2024,2,1),datetime(2024,3,1), ...
    datetime(2024,4,1),datetime(2024,5,1),datetime(2024,6,1), ...
    datetime(2024,7,1),datetime(2024,8,1),datetime(2024,9,1), ...
    datetime(2024,10,1),datetime(2024,11,1),datetime(2024,12,1)])
ylabel('Daylight (in hours)','fontsize',18)
yticks([5,6,7,8,9,10,11,12,13,14,15,16,17,18,19])
lgd=legend('Fremont','Lahaina','Anchorage','Brisbane','Location','NorthEast');
lgd.FontSize = 18;
