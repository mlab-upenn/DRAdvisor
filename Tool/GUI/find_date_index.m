function [sd_index,ed_index] = find_date_index(yy,mm,dd,sh,sm,eh,em,date_temp_ref)

%     yy = year
%     mm = month
%     dd = day
%     sh = start hour
%     sm = start minute
%     eh = end hour
%     em = end minute

    % Create Start Date and End Date to select period
    sd=datenum([yy,mm,dd,sh,sm,00]);
    ed=datenum([yy,mm,dd,eh,em,00]);
    date_temp=date_temp_ref;
    check=0; % boolean variable we will use to check if we found the start date in the date vector
    lc=length(date_temp);
    gap=3; % Random number greater than 2 to start the while cycle
    while ((gap > 2) && (check == 0)) % Binary search starting point
        lc = ceil(lc/2); % Temporary index variable we need to divide the date temporary vector in two parts
        if sd<date_temp(end-lc)
            date_temp=date_temp(1:end-lc);
            lc=length(date_temp);
        elseif sd>date_temp(end-lc)
            gap=numel(date_temp(end-lc:end)); % Number of points between data(lc) and the end of the date vector
        elseif sd==date_temp(end-lc)
            date_temp=date_temp(1:end-lc);
            check=1;
        else
            disp('Something went wrong');
            break;
        end
    end
    if check == 1 % If we found the desired date in the vector
        sd_index = numel(date_temp);
    else % If the desired date is between two close elements in the date vector
        sd_index = numel(date_temp)-1;
    end
    
    check=0; % boolean variable we will use to check if we found the end date in the date vector
    date_temp=date_temp_ref;
    lc=length(date_temp);
    gap=3; % Random number greater than 2 to start the while cycle
    while ((gap > 2) && (check == 0)) % Binary search starting point
        lc = ceil(lc/2); % Temporary index variable we need to divide the date temporary vector in two parts
        if ed<date_temp(end-lc)
            date_temp=date_temp(1:end-lc);
            lc=length(date_temp);
        elseif ed>date_temp(end-lc)
            gap=numel(date_temp(end-lc:end)); % Number of points between data(lc) and the end of the date vector
        elseif ed==date_temp(end-lc)
            date_temp=date_temp(1:end-lc);
            check=1;
        else
            disp('Something went wrong');
            break;
        end
    end
    % In this case the variable assigned is the same
    
%     if check == 1 % If we found the desired date in the vector
%         ed_index = numel(date_temp);
%     else % If the desired date is between two close elements in the date vector
%         ed_index = numel(date_temp);
%     end
    ed_index = numel(date_temp);