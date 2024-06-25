#!/usr/bin/env wolframscript
(* ::Package:: *)

p=ParametricPlot3D[{u*Cos[v],u*Sin[v],v},{u,0,4},{v,0,2*Pi}, PlotRange->{{-5,5},{-5,5},{0,6}},PlotStyle->Magenta];
q=ParametricPlot3D[{Sqrt[s^2+1]*Cos[t],Sqrt[s^2+1]*Sin[t],ArcSinh[t]},{s,0,4},{t,0,2*Pi}, PlotRange->{{-5,5},{-5,5},{0,6}},PlotStyle->Blue];
Show[p,q,ImageResolution->300]
