function dayOfWeek = task1func(dateString)
  dateObj = datenum(dateString, 'dd.mm.yyyy');
  dayNumber = weekday(dateObj);
  daysOfWeek = {'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'};
  dayOfWeek = daysOfWeek{dayNumber};
end

