if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="lecture-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

texpreamble("\usepackage[T2A]{fontenc}\usepackage[utf8]{inputenc}
\usepackage{mathtext}\usepackage[russian]{babel}");
unitsize(0.48cm);
pair i1 = (-1, 0), O = (0, 0);
transform r=rotate(-120,O);
transform r2=rotate(120,O);
dot("$1$",i1, W);
dot("$2$",r*i1, NE);
dot("$3$",r*(r*i1), SE);

path p1=r*i1{dir(rotate(90)*(r*i1-O))}..i1;
draw(p1,Arrow(TeXHead));

path p2=r*(r*i1){dir(rotate(90)*(r*(r*i1)-O))}..r*i1;
draw(p2,Arrow(TeXHead));

path p3=i1{dir(rotate(90)*(i1-O))}..r2*i1;
draw(p3,Arrow(TeXHead));


pair a1 = (3, 0), b1 = (3, 0.7);
pair a2 = (5, 0), b2 = (5, 0.7);
pair a3 = (7, 0), b3 = (7, 0.7);

dot(scale(0.8)*Label("$4$"),a1, S);
dot(scale(0.8)*Label("$5$"),a2, S);
dot(scale(0.8)*Label("$6$"),a3, S);

path p4=a1{dir(rotate(90)*(a1-(3, 0.35)))}..b1;
path p5=b1{dir(rotate(90)*(b1-(3, 0.35)))}..a1;
draw(p4);
draw(p5,Arrow(TeXHead));

path p6=a2{dir(rotate(90)*(a2-(5, 0.35)))}..b2;
path p7=b2{dir(rotate(90)*(b2-(5, 0.35)))}..a2;
draw(p6);
draw(p7,Arrow(TeXHead));

path p8=a3{dir(rotate(90)*(a3-(7, 0.35)))}..b3;
path p9=b3{dir(rotate(90)*(b3-(7, 0.35)))}..a3;
draw(p8);
draw(p9,Arrow(TeXHead));
