#!/usr/bin/env wolframscript
(* ::Package:: *)

p=ParametricPlot3D[{r*Cos[s],r*Sin[s],s},{r,0,4},{s,0,2*Pi},PlotRange->{{-5,5},{-5,5},{0,8}}];
Show[p,ImageResolution->300]
