%�˳������ڼ���tji��Ҳ��Ů��������������Ⱦ���
clc
clear all
load('aik.txt')%��������������������
load('djk.txt')%����Ů������Ҫ�����
A=aik;
D=djk;
k=1;%k=1,2,3,4,5,�ֱ��ʾ��ò�������
for j=1:10 %��Ů������Ҫ�����ĵ�һ�п�ʼ��Ҳ��ѡȡ��һ��Ů����Ҫ��
   for i=1:10 %�������Ļ�����������ĵ�һ�п�ʼ��Ҳ��ѡȡ��һ������������
    if (A(i,k)==D(j,k)) %����tji�ļ��㷨�򣬷������
        T(j,i)=1
    elseif (D(i,k)>A(j,k))
        T(j,i)=-2^(A(i,k)-D(j,k))
    else T(j,i)=2^(A(j,k)-D(i,k))
    end
   end
end