warning off
clc

function result = mi_1(matrix)
  if all(matrix == 0)
    result = 'The minor rank of matrix A is 0';
  else
    result = mi_2(matrix);
  end
end
function result = mi_2(matrix)
  deter = [];
  stop = false;
  for i1 = 1:5
    for j1 = 1:5
      mi4 = matrix;
      mi4(i1, :) = [];
      mi4(:, j1) = [];
      for i2 = 1:4
        for j2 = 1:4
          mi3 = mi4;
          mi3(i2, :) = [];
          mi3(:, j2) = [];
          for i3 = 1:3
            for j3 = 1:3
              mi2 = mi3;
              mi2(i3, :) = [];
              mi2(:, j3) = [];
              d2 = mi2(1,1)*mi2(2,2)-mi2(2,1)*mi2(1,2);
              if d2 != 0
                stop = true;
                break;
              end
              deter += d2;
            end
            if stop
              break;
            end
          end
          if stop
            break;
          end
        end
        if stop
          break;
        end
      end
      if stop
        break;
      end
    end
    if stop
      break;
    end
  end
  if ~stop
    result = 'The minor rank of matrix A is 1';
  else
    result = mi_3(matrix);
  end
end
function result = mi_3(matrix)
  deter = [];
  stop = false;
  for i1 = 1:5
    for j1 = 1:5
      mi4 = matrix;
      mi4(i1, :) = [];
      mi4(:, j1) = [];
      for i2 = 1:4
        for j2 = 1:4
          mi3 = mi4;
          mi3(i2, :) = [];
          mi3(:, j2) = [];
          d3 = mi3(1,1)*mi3(2,2)*mi3(3,3)+mi3(1,2)*mi3(2,3)*mi3(3,1)+mi3(2,1)*mi3(3,2)*mi3(1,3)-mi3(1,3)*mi3(2,2)*mi3(3,1)-mi3(2,1)*mi3(1,2)*mi3(3,3)-mi3(2,3)*mi3(3,2)*mi3(1,1);
          if d3 != 0
            stop = true;
            break;
          end
          deter += d3;
        end
        if stop
          break;
        end
      end
      if stop
        break;
      end
    end
    if stop
      break;
    end
  end
  if ~stop
    result = 'The minor rank of matrix A is 2';
  else
    result = mi_4(matrix);
  end
end
function result = mi_4(matrix)
  deter = [];
  stop = false;
  for i = 1:5
    for j = 1:5
      mi4 = matrix;
      mi4(i, :) = [];
      mi4(:, j) = [];
      d234 = (mi4(2,2)*mi4(3,3)*mi4(4,4)+mi4(2,3)*mi4(3,4)*mi4(4,2)+mi4(2,4)*mi4(3,2)*mi4(4,3)-mi4(2,4)*mi4(3,3)*mi4(4,2)-mi4(2,2)*mi4(3,4)*mi4(4,3)-mi4(4,4)*mi4(2,3)*mi4(3,2));
      d134 = (mi4(2,1)*mi4(3,3)*mi4(4,4)+mi4(2,3)*mi4(3,4)*mi4(4,1)+mi4(2,4)*mi4(3,1)*mi4(4,3)-mi4(2,4)*mi4(3,3)*mi4(4,1)-mi4(2,1)*mi4(3,4)*mi4(4,3)-mi4(4,4)*mi4(2,3)*mi4(3,1));
      d124 = (mi4(2,1)*mi4(3,2)*mi4(4,4)+mi4(2,2)*mi4(3,4)*mi4(4,1)+mi4(2,4)*mi4(3,1)*mi4(4,2)-mi4(2,4)*mi4(3,2)*mi4(4,1)-mi4(2,1)*mi4(3,4)*mi4(4,2)-mi4(4,4)*mi4(2,2)*mi4(3,1));
      d123 = (mi4(2,1)*mi4(3,2)*mi4(4,3)+mi4(2,2)*mi4(3,3)*mi4(4,1)+mi4(2,3)*mi4(3,1)*mi4(4,2)-mi4(2,3)*mi4(3,2)*mi4(4,1)-mi4(2,1)*mi4(3,3)*mi4(4,2)-mi4(4,3)*mi4(2,2)*mi4(3,1));
      d4 = (mi4(1,1)*d234-mi4(1,2)*d134+mi4(1,3)*d124-mi4(1,4)*d123);
      if d4 != 0
        stop = true;
        break;
      end
      deter += d4;
    end
    if stop
      break;
    end
  end
  if ~stop
    result = 'The minor rank of matrix A is 3';
  else
    result = mi_5(matrix);
  end
end
function result = mi_5(matrix)
  a = matrix;
  d3_123 = a(3,1)*a(4,2)*a(5,3)+a(3,2)*a(4,3)*a(5,1)+a(4,1)*a(5,2)*a(3,3)-a(3,3)*a(4,2)*a(5,1)-a(3,2)*a(4,1)*a(5,3)-a(3,1)*a(4,3)*a(5,2);
  d3_124 = a(3,1)*a(4,2)*a(5,4)+a(3,2)*a(4,4)*a(5,1)+a(4,1)*a(5,2)*a(3,4)-a(3,4)*a(4,2)*a(5,1)-a(3,2)*a(4,1)*a(5,4)-a(3,1)*a(4,4)*a(5,2);
  d3_125 = a(3,1)*a(4,2)*a(5,5)+a(3,2)*a(4,5)*a(5,1)+a(4,1)*a(5,2)*a(3,5)-a(3,5)*a(4,2)*a(5,1)-a(3,2)*a(4,1)*a(5,5)-a(3,1)*a(4,5)*a(5,2);
  d3_134 = a(3,1)*a(4,3)*a(5,4)+a(3,3)*a(4,4)*a(5,1)+a(4,1)*a(5,3)*a(3,4)-a(3,4)*a(4,3)*a(5,1)-a(3,3)*a(4,1)*a(5,4)-a(3,1)*a(4,4)*a(5,3);
  d3_135 = a(3,1)*a(4,3)*a(5,5)+a(3,3)*a(4,5)*a(5,1)+a(4,1)*a(5,3)*a(3,5)-a(3,5)*a(4,3)*a(5,1)-a(3,3)*a(4,1)*a(5,5)-a(3,1)*a(4,5)*a(5,3);
  d3_145 = a(3,1)*a(4,4)*a(5,5)+a(3,4)*a(4,5)*a(5,1)+a(4,1)*a(5,4)*a(3,5)-a(3,5)*a(4,4)*a(5,1)-a(3,4)*a(4,1)*a(5,5)-a(3,1)*a(4,5)*a(5,4);
  d3_234 = a(3,2)*a(4,3)*a(5,4)+a(3,3)*a(4,4)*a(5,2)+a(4,2)*a(5,3)*a(3,4)-a(3,4)*a(4,3)*a(5,2)-a(3,3)*a(4,2)*a(5,4)-a(3,2)*a(4,4)*a(5,3);
  d3_235 = a(3,2)*a(4,3)*a(5,5)+a(3,3)*a(4,5)*a(5,2)+a(4,2)*a(5,3)*a(3,5)-a(3,5)*a(4,3)*a(5,2)-a(3,3)*a(4,2)*a(5,5)-a(3,2)*a(4,5)*a(5,3);
  d3_245 = a(3,2)*a(4,4)*a(5,5)+a(3,4)*a(4,5)*a(5,2)+a(4,2)*a(5,4)*a(3,5)-a(3,5)*a(4,4)*a(5,2)-a(3,4)*a(4,2)*a(5,5)-a(3,2)*a(4,5)*a(5,4);
  d3_345 = a(3,3)*a(4,4)*a(5,5)+a(3,4)*a(4,5)*a(5,3)+a(4,3)*a(5,4)*a(3,5)-a(3,5)*a(4,4)*a(5,3)-a(3,4)*a(4,3)*a(5,5)-a(3,3)*a(4,5)*a(5,4);
  d4_1234 = a(2,1)*d3_234-a(2,2)*d3_134+a(2,3)*d3_124-a(2,4)*d3_123;
  d4_1235 = a(2,1)*d3_235-a(2,2)*d3_135+a(2,3)*d3_125-a(2,5)*d3_123;
  d4_1245 = a(2,1)*d3_245-a(2,2)*d3_145+a(2,4)*d3_125-a(2,5)*d3_124;
  d4_1345 = a(2,1)*d3_345-a(2,3)*d3_145+a(2,4)*d3_135-a(2,5)*d3_134;
  d4_2345 = a(2,2)*d3_345-a(2,3)*d3_245+a(2,4)*d3_235-a(2,5)*d3_234;
  d5 = a(1,1)*d4_2345-a(1,2)*d4_1345+a(1,3)*d4_1245-a(1,4)*d4_1235+a(1,5)*d4_1234;
  if d5 == 0
    result = 'The minor rank of matrix A is 4';
  else
    result = 'The minor rank of matrix A is 5';
  end
end
%


A = [3 -5 2 7 -1;
3 8 1 2 5;
7 -8 4 2 6;
2 19 0 9 3;
-18 6 -9 6 -25];

disp(mi_1(A));

