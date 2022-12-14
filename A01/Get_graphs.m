%% load data
load("table_values.mat")
sol1_109018_t = readtable("sol1_55_109018.txt");
sol1_105937_t = readtable("sol1_55_105937.txt");
n1 = [1:50, 55];
n2 = table2array(testes109018(:,1));
%% arrays sol_1
n_moves_109018_1 = table2array(sol1_109018_t([1:51],3));
efford_109018_1 = table2array(sol1_109018_t([1:51],4));
times_109018_1 = table2array(sol1_109018_t([1:51],5));
n_moves_105937_1 = table2array(sol1_105937_t([1:51],3));
efford_105937_1 = table2array(sol1_105937_t([1:51],4));
times_105937_1 = table2array(sol1_105937_t([1:51],5));
%% arrays sol_2
n_moves_109018_2 = table2array(testes109018(:,7));
efford_109018_2 = table2array(testes109018(:,8));
times_109018_2 = table2array(testes109018(:,9));
n_moves_105937_2 = table2array(testes105937(:,7));
efford_105937_2 = table2array(testes105937(:,8));
times_105937_2 = table2array(testes105937(:,9));
%% arrays sol_3
n_moves_109018_3 = table2array(testes109018(:,11));
efford_109018_3 = table2array(testes109018(:,12));
times_109018_3 = table2array(testes109018(:,13));
n_moves_105937_3 = table2array(testes105937(:,11));
efford_105937_3 = table2array(testes105937(:,12));
times_105937_3 = table2array(testes105937(:,13));
%% arrays sol_4
n_moves_109018_4 = table2array(testes109018(:,15));
efford_109018_4 = table2array(testes109018(:,16));
times_109018_4 = table2array(testes109018(:,17));
n_moves_105937_4 = table2array(testes105937(:,15));
efford_105937_4 = table2array(testes105937(:,16));
times_105937_4 = table2array(testes105937(:,17));
%% sol_1
figure(1)
plot(n1,efford_109018_1,"-o");
hold on
plot(n1,efford_105937_1,"-x")
legend("109018","105937")
title("Recursion 1-efford")
xlabel("Posição final")
ylabel("Efford")
figure(12)
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

%% sol_2
figure(2)
plot(n2,efford_109018_2,"-o");
hold on
plot(n2,efford_105937_2,"-x")
legend("109018","105937")
title("Recursion 2-efford")
xlabel("Posição final")
ylabel("Efford")
figure(22)
plot(n2,times_109018_2,"-o");
hold on
plot(n2,times_105937_2,"-x")
legend("109018","105937")
title("Recursion 2-times")
xlabel("Posição final")
ylabel("Tempo de execução (s)")
%% sol_3
figure(3)
plot(n2,efford_109018_3,"-o");
hold on
plot(n2,efford_105937_3,"-x")
legend("109018","105937")
title("Recursion 3-efford")
xlabel("Posição final")
ylabel("Efford")
figure(32)
plot(n2,times_109018_3,"-o");
hold on
plot(n2,times_105937_3,"-x")
legend("109018","105937")
title("Recursion 3-times")
xlabel("Posição final")
ylabel("Tempo de execução (s)")
%% sol_4
figure(4)
plot(n2,efford_109018_4,"-o");
hold on
plot(n2,efford_105937_4,"-x")
legend("109018","105937")
title("Check Speed limit-efford")
xlabel("Posição final")
ylabel("Efford")
figure(42)
plot(n2,times_109018_4,"-o");
hold on
plot(n2,times_105937_4,"-x")
legend("109018","105937")
title("Check Speed Limit-times")
xlabel("Posição final")
ylabel("Tempo de execução (s)")
%% all times
figure(5)
semilogy(n1,times_109018_1,"-o");
hold on;
semilogy(n2,times_109018_2,"-o");
semilogy(n2,times_109018_3,"-o");
semilogy(n2,times_109018_4,"-o");
semilogy(n1,times_105937_1,"-x")
semilogy(n2,times_105937_2,"-x")
semilogy(n2,times_105937_3,"-x")
semilogy(n2,times_105937_4,"-x")
legend("109018_1","109018_2","109018_3","109018_4","105937_1","105937_2","105937_3","105937_4")
title("Comparação de tempo dos vários métodos ")
xlabel("Posição final")
ylabel("Tempo de execução (s)")

