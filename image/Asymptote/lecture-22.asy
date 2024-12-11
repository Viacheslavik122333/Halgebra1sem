if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="lecture-7";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(2cm);

dot("$O$", (0,0), NW);
dot("$z_0$", (0.4, 0.33));
dot("$z ?$", (0.8, 0.66));
dot("$z_1+z_0$", (1.22, 1.00));
draw((0.4, 0.33) -- (1.2, 0.99), Arrow(TeXHead));
draw((-0.25,0)--(2,0), Arrow);
draw((0,-0.25)--(0,1.6), Arrow);
label("$Re(z)$",(1.9, 0), SE);
label("$Im(z)$",(0, 1.5), NW);
