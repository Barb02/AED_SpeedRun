load("table_values.mat")
sol1_109018_t = readtable("sol1_55_109018.txt");
sol1_105937_t = readtable("sol1_55_105937.txt");

%escolhe a tabela que queres tabalhar testes109018 ou testes105938
%%
table = testes109018;
%%
table = testes105937;
%%
n1 = [1:50, 55];
nt = (1:1:100);
%arrays sol_1
n_moves_109018_1 = table2array(sol1_109018_t([1:51],3));
efford_109018_1 = table2array(sol1_109018_t([1:51],4));
times_109018_1 = table2array(sol1_109018_t([1:51],5));
n_moves_105937_1 = table2array(sol1_105937_t([1:51],3));
efford_105937_1 = table2array(sol1_105937_t([1:51],4));
times_105937_1 = table2array(sol1_105937_t([1:51],5));
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

plot(n1,times_109018_1,"-o");
hold on
plot(n1,times_105937_1,"-x")
plot(n1,2.^n1)
plot(n1,exp(n1/2))
legend("109018","105937","2^n","sqrt(e)^n")
title("Plain Recursion")
xlabel("Posição final")
ylabel("Tempo de execução (s)")
axis([0 60 0 6010])

