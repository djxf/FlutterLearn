scores<-read.csv(file="D:/math1.csv");
scores;#导入数据

xg <- cor(scores);
xg; #典型相关系数xg

s1<-xg[1:4,1:4];
s12<-xg[1:4,5:11];
s21<-t(s12);
s2<-xg[5:11,5:11];

s1; s12;  s21;  s2;
m1  <-  solve(s1)   %*% s12 %*% solve(s2)   %*% s21;
m1;

m2<-solve(s2) %*% s21 %*% solve(s1) %*% s12;
m2;

ev<-eigen (m1);
vec1<-ev$vectors;
n1<-4;
n2<-7;
num<-min(n1,n2);
ev; #求相关系数矩阵的特征根与特征向量
for (i in 1:n1){
    vec1[,i] <- vec1[,i] / sqrt(vec1[,i]    %*%  s1  %*%    matrix(vec1[,i]))
};

f1<-vec1;
f1;

for (i in 1:n1){
      for(j in 1:n1){
          s<-colSums(vec1)
          if(s[j]>0)
              f1[,j]=1
          else
              f1[,j]=-1
      }
};

vec1<-vec1*f1;
val1<-ev $values;
val1 <-sqrt (val1);
val1<-sort;
(val1,dec=T);
val1;
ind1<-order(-val1);
a<-vec1[,ind1[1:num]];
dcoef1<-val1[1:num];

ind1;   a;  dcoef1;
ew<-eigen(m2);
vec2<-ew$vectors;
ew;

for (i in 1:n2){
    vec2[,i] <- vec2[,i] / sqrt(vec2[,i]%*%s2%*%matrix(vec2[,i]))
};
f2<-vec2;f2;
for (i in 1:n2){
  for(j in 1:n2){
      s<-colSums(vec2)
      if(s[j]>0)
          f2[,j]=1
      else
          f2[,j]=-1
  }
};
s;
vec2<-vec2*f2;
val2<-ew $values;
val2 <-sqrt(val2);
val2<-sort(val2,dec=T);
val2;

ind2<-order(-val2);
b<-vec2[,ind2[1:num]];
dcoef2<-val2[1:num];
ind2;
b;
dcoef1;

rxu<-s1%*%a;
ryv<-s2%*%b;
rxv<-s12%*%b;
ryu<-s21%*%a;
rxu;ryv;rxv;ryu;

xu<-colSums(rxu*rxu)/n1;
xv<-colSums(rxv*rxv)/n1;
xu;
yu<-colSums(ryu*ryu)/n2;
yv<-colSums(ryv*ryv)/n2;
yu;
scores1<-scores[,1:4];
scores2<-scores[,5:11];
U<-as.matrix (scores1)%*%a;
V<-as.matrix (scores2)%*%b;
U;V;
plot(U[,1],V[,1])


#Bartlet检验
m<-4;
A<-rep(0,m);
w<-1;
for(i in m:1){
    w<-w*(1-val2[i])  ## 计算w 连乘计算W
    A[i]<--log(w)     ## 计算A[i]　取对数计算A[i]
    print(A[i])  ## 查看A[i]
}
s<-0;
for(i in 1:m){
    A[i]<-(43-i+1-1/2*(n1+n2+3)+s)*A[i]
    s<-s+1/val2[i]
    print(A[i])  ## 查看A[i]
}
A[i];s;