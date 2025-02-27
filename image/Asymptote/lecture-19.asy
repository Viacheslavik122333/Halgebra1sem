if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="lecture-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import markers;
unitsize(2.7cm);
pair O = (-1,0), X = (1, 0), B = (0.3, 0);
real a = 45;
transform r=rotate(a,O);
dot("$M(x,y)$",r*B, NE);
dot("$O$", O, NW);
label("$x$", X, E);
path g = X -- O -- r*B;
draw(g, BeginArrow, EndArrow);

markangle(scale(1.15)*Label("$\varphi$"),B,O,r*B,radius=1.3cm,Arrow(TeXHead));
