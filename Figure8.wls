#!/usr/bin/env wolframscript
(* ::Package:: *)

w=0;
h=1.25*Sin[w]/(3.25-1.25*Cos[w]);
B=3/(3.25-1.25*Cos[w]);
m=Sqrt[2/(3.25-1.25*Cos[w])];
r[s_] := Sqrt[1+B^2+2B*Sin[s]];
f[s_,t_] := t/m-h*NIntegrate[(1+B*Sin[u])/(Sqrt[1+B^2+2B*Sin[u]+h^2]*(1+B^2+2B*Sin[u])),{u, 0, s}];
g[s_] := NIntegrate[((1+B*Sin[a])*Sqrt[1+B^2+2B*Sin[a]+h^2])/(1+B^2+2*B*Sin[a]),{a, 0, s}];
p1=ParametricPlot3D[{r[s]Cos[f[s,t]], r[s] Sin[f[s,t]], g[s]+h*f[s,t]}, {s, 0,15},
{t, 0, 2Pi}, PlotRange->{{-5,5},{-5,5},{0,15}}];
Show[p1,ImageResolution->300]
(*The remaining moments of transformation may be obtained by setting parameter w to Pi/16, Pi/8, Pi/4, 3Pi/8 and Pi/2, respectively.*)
