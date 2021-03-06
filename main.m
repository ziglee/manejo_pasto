clear all; close all; clc;

f01 = Forrageira('Braquiarão',2,2,1,800,2,3,2,11,12,2,1);
f02 = Forrageira('Decumbens',2,2,2,800,3,3,2,10,10,3,1);
f03 = Forrageira('Humidicola',2,3,2,700,3,3,2,4,9,3,1);
f04 = Forrageira('Dictyoneura',2,3,3,800,3,3,2,10,15,2,1);
forrageiras = [f01; f02; f03; f04];

p0001 = Pasto(1,0,30,40,900,2,0);
p0002 = Pasto(2,0,30,40,900,3,1);
p0003 = Pasto(3,0,30,50,900,1,0);
p0004 = Pasto(4,0,20,60,900,2,1);
p0005 = Pasto(5,0,10,70,900,3,0);
pastos = [p0001; p0002; p0003; p0004; p0005];

NITER = 500;
[proposta, notafinal] = avaliacao(500, pastos, forrageiras);
