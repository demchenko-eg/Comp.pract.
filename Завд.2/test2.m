warning off
clc


%%%%%%%%%%  Завдання №2  %%%%%%%%%%%%%%%%
max_lenght = 175
min_lenght = 0
vect_lenght = input('');
if vect_lenght > max_lenght || vect_lenght < 0
  disp('no no no');
else
  correct = false;
  while ~correct
    random_x = randi([-175, 175]);
    random_y = randi([-175, 175]);
    random_z = randi([-175, 175]);
    rand_Vect_lenght = sqrt((random_x^2)+(random_y^2)+(random_z)^2);
    if rand_Vect_lenght == vect_lenght
      disp(['vector: ', '(', num2str(random_x), ' ,', num2str(random_y), ' ,', num2str(random_z), ')']);
      correct = true;
    else
      continue
    end
  end
end
