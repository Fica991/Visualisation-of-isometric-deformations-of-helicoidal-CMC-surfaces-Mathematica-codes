#!/usr/bin/env wolframscript
(* ::Package:: *)

h=0.95;
r[s_] := Sqrt[s^2+1-h^2];
f[s_,t_] := t-ArcTan[h*s/(Sqrt[1-h^2]*Sqrt[1+s^2])];
g[s_] := Sqrt[1-h^2]*ArcSinh[s]+h*ArcTan[h*s/(Sqrt[1-h^2]*Sqrt[1+s^2])];
p=ParametricPlot3D[{r[s]Cos[f[s,t]], r[s] Sin[f[s,t]], g[s]+h*f[s,t]}, {s, 0, 4},
{t, 0, 2Pi}, PlotRange->{{-5,5},{-5,5},{0,8}}];
Show[p,ImageResolution->300]
(*The remaining moments of transformation may be obtained by setting parameter h to 0, 0.2, 0.5 and 0.7, respectively.*)
