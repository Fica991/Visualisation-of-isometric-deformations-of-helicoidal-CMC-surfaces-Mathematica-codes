#!/usr/bin/env wolframscript
(* ::Package:: *)

p=ParametricPlot3D[{u*Cos[v],u*Sin[v],u+v},{u,0,2},{v,0,2*Pi}, PlotRange->{{-3,3},{-3,3},{0,8}}];
q=ParametricPlot3D[{Sqrt[s^2+1]*Cos[t+ArcTan[s]],Sqrt[s^2+1]*Sin[t+ArcTan[s]],s},{s,0,2},{t,0,2*Pi}, PlotRange->{{-3,3},{-3,3},{0,8}},PlotStyle->Magenta];
n=ParametricPlot3D[{Cos[t],Sin[t],1+t},{t,0,2*Pi},PlotStyle->Green];
m=ParametricPlot3D[{Sqrt[2]*Cos[t+Pi/4],Sqrt[2]*Sin[t+Pi/4],1},{t,0,2*Pi},PlotStyle->Red];
Show[p,q,n,m,ImageResolution->300]
