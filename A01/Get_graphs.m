load("table_values.mat")
sol1_t = readtable("sol1_55.txt");

%escolhe a tabela que queres tabalhar testes109018 ou testes105938
table = testes109018;
n1 = 1:51;
nt = (1:1:100);
%arrays sol_1
n_moves_1 = table2array(sol1_t([1:51],3));
efford_1 = table2array(sol1_t([1:51],4));
times_1 = table2array(sol1_t([1:51],5));
%arrays sol_2
n_moves_2 = table2array(table(:,7));
efford_2 = table2array(table(:,8));
times_2 = table2array(table(:,9));
%arrays sol_3
n_moves_3 = table2array(table(:,11));
efford_3 = table2array(table(:,12));
times_3 = table2array(table(:,13));
%arrays sol_4
n_moves_4 = table2array(table(:,15));
efford_4 = table2array(table(:,16));
times_4 = table2array(table(:,17));

plot(n1,times_1);


