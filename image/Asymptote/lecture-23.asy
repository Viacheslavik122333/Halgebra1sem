if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="lecture-8";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(2cm);
import graph;
filldraw(Circle((0,0),1), white);
dot((0,0));
label(" $O$ ", (0.2, 0.09));
draw((-1.25,0)--(1.35,0), Arrow);
draw((0,-1.25)--(0,1.35), Arrow);
label("$Re(z)$",(1.35, 0), SE);
label("$Im(z)$",(0, 1.35), NW);
pair [] w;

w[0] = (0.7071067, 0.7071067);
w[1] = (-0.7071067, 0.7071067);
w[2] = (-0.7071067, -0.7071067);
w[3] = (0.7071067, -0.7071067);
dot("$w_{0}$",w[0], NE);
dot("$w_{1}$",w[1], NW);
dot("$w_{2}$",w[2], SW);
dot("$w_{3}$",w[3], SE);

draw((0, 0) -- w[0]);
draw((0, 0) -- w[1]);
draw((0, 0) -- w[2]);
draw((0, 0) -- w[3]);
