#!/usr/bin/env wolframscript
(* ::Package:: *)

B=2.6;
x1[t_] := Sqrt[1+2*B*Sin[t]+B^2];
y1[t_] := NIntegrate[(1+B*Sin[u])/Sqrt[1+2*B*Sin[u]+B^2], {u, 0, t}];
p=ParametricPlot3D[{x1[t]Cos[v], x1[t] Sin[v], y1[t]}, {t, 0, 8},
{v, 0, 2Pi}, PlotRange->{{-4,4},{-4,4},{0,8}}];
Show[p,ImageResolution->300]
(*The remaining moments of transformation may be obtained by setting parameter B to 0, 0.3, 0.8, 1 and 1.5, respectively.*)




