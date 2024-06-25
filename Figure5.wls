#!/usr/bin/env wolframscript
(* ::Package:: *)

w=15*Pi/8;
h=-Sin[w]/(1+Cos[w]);
B=0;
m=Sqrt[2/(1+Cos[w])];
r[s_] := Sqrt[1+B^2+2B*Sin[s]];
f[s_,t_] := t/m-h*NIntegrate[(1+B*Sin[u])/(Sqrt[1+B^2+2B*Sin[u]+h^2]*(1+B^2+2B*Sin[u])),{u, 0, s}];
g[s_] := NIntegrate[((1+B*Sin[a])*Sqrt[1+B^2+2B*Sin[a]+h^2])/(1+B^2+2*B*Sin[a]),{a, 0, s}];
p1=ParametricPlot3D[{r[s]Cos[f[s,t]], r[s] Sin[f[s,t]], g[s]+h*f[s,t]}, {s, 0,5},
{t, 0, 2Pi}, PlotRange->{{-1,1},{-1,1},{0,6}}];
Show[p1,ImageResolution->300]
(*The remaining moments of transformation may be obtained by setting parameter w to 0, 9Pi/8, 11Pi/8, 3Pi/2 and 7Pi/4, respectively.*)
