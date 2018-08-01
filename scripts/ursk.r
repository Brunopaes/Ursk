tab = read.csv(file="/Users/brunopaes/Desktop/Ursk/data/lazer.csv", sep=";", dec=",")
names(tab) [1:2] = c("Código", "Gasto")
library(RColorBrewer)

media = c()
 
pop = tab$Gasto
mean(pop); var(pop); sd(pop);

cores = brewer.pal(11, "Spectral")
hist(main="Histograma da População", xlab="Gastos da População", ylab="Frequência", pop, col = cores) 

for (i in 1:5000) {
    amostra = c(sample(tab$Gasto, 10));
    media[i] = c(mean(amostra));
}

media10 = media
mean(media10); var(media10); sd(media10);

cores = brewer.pal(11, "RdYlGn")
hist(main="Histograma da Amostra (10 Elementos)", xlab="Gastos da Amostra", ylab="Frequência", media10, col = cores) 

for (i in 1:5000) {
    amostra = c(sample(tab$Gasto, 30));
    media[i] = c(mean(amostra));
}

media30 = media
mean(media30); var(media30); sd(media30);

cores = brewer.pal(11, "RdYlBu")
hist(main="Histograma da Amostra (30 Elementos)", xlab="Gastos da Amostra", ylab="Frequência", media30, col = cores) 

for (i in 1:5000) {
    amostra = c(sample(tab$Gasto, 50));
    media[i] = c(mean(amostra));
}

media50 = media
mean(media50); var(media50); sd(media50);

cores = brewer.pal(11, "RdGy")
hist(main="Histograma da Amostra (50 Elementos)", xlab="Gastos da Amostra", ylab="Frequência", media50, col = cores) 

for (i in 1:5000) {
    amostra = c(sample(tab$Gasto, 100));
    media[i] = c(mean(amostra));
}

media100 = media
mean(media100); var(media100); sd(media100);

cores = brewer.pal(11, "RdBu")
hist(main="Histograma da Amostra (100 Elementos)", xlab="Gastos da Amostra", ylab="Frequência", media100, col = cores) 

for (i in 1:5000) {
    amostra = c(sample(tab$Gasto, 200));
    media[i] = c(mean(amostra));
}

media200 = media
mean(media200); var(media200); sd(media200);

cores = brewer.pal(11, "PuOr")
hist(main="Histograma da Amostra (200 Elementos)", xlab="Gastos da Amostra", ylab="Frequência", media200, col = cores) 

for (i in 1:5000) {
    amostra = c(sample(tab$Gasto, 500));
    media[i] = c(mean(amostra));
}

media500 = media
mean(media500); var(media500); sd(media500);

cores = brewer.pal(11, "PRGn")
hist(main="Histograma da Amostra (500 Elementos)", xlab="Gastos da Amostra", ylab="Frequência", media500, col = cores) 

for (i in 1:5000) {
    amostra = c(sample(tab$Gasto, 1000));
    media[i] = c(mean(amostra));
}

media1k = media
mean(media1k); var(media1k); sd(media1k);

cores = brewer.pal(11, "PiYG")
hist(main="Histograma da Amostra (1000 Elementos)", xlab="Gastos da Amostra", ylab="Frequência", media1k, col = cores) 

for (i in 1:5000) {
    amostra = c(sample(tab$Gasto, 5000));
    media[i] = c(mean(amostra));
}

media5k = media
mean(media5k); var(media5k); sd(media5k);

cores = brewer.pal(11, "BrBG")
hist(main="Histograma da Amostra (5000 Elementos)", xlab="Gastos da Amostra", ylab="Frequência", media5k, col = cores) 

for (i in 1:5000) {
    amostra = c(sample(tab$Gasto, 20000));
    media[i] = c(mean(amostra));
}

media20k = media
mean(media20k); var(media20k); sd(media20k);

cores = brewer.pal(9, "Blues")
hist(main="Histograma da Amostra (20000 Elementos)", xlab="Gastos da Amostra", ylab="Frequência", media20k, col = cores) 

cores = c("#4B0082", "#800080", "#B22222", "#008B8B", "#FF4500", "#008000", "#FF6347", "#DC143C", "#00FA9A", "#FFD700")
nomes = c("População", "10 Elementos", "30 Elementos", "50 Elementos", "100 Elementos", "200 Elementos", "500 Elementos", "1k Elementos", "5k Elementos", "20k Elementos")
boxplot(main="Boxplot Comparativo", xlab=nomes, col=cores, pop, media10, media30, media50, media100, media200, media500, media1k, media5k, media20k)
