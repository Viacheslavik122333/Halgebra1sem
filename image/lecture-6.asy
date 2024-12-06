if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="lecture-6";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(2cm);
import graph;
filldraw(Circle((0,0),1), white);
pair O = (0,0);
dot("$O$", O, SW);
draw((-1.25,0)--(1.4,0), Arrow);
draw((0,-1.25)--(0,1.4), Arrow);
label("$Re(z)$",(1.35, 0), SE);
label("$Im(z)$",(0, 1.35), NW);
pair w0 = (1, 0);

real a = 120;
real b = -120;
transform r1=rotate(a,O);
transform r2=rotate(b,O);

draw("$w_0$", w0, NE);
draw("$w_1$",r1*w0,NW);
draw("$w_2$",r2*w0,SW);

draw(w0--r1*w0--r2*w0--cycle);

draw(O--r1*w0, Arrow);

// label("$\sqrt{\rho}$",(0.5, 0.27), NW);

path p = scale(0.23)*(dir(w0){up}..dir(r1*w0));

draw(scale(1.15)*Label("$\frac{2\pi}{3}$"), p, Arrow(TeXHead));

