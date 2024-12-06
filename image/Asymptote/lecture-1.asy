if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="lecture-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

texpreamble("\usepackage[T2A]{fontenc}\usepackage[utf8]{inputenc}
\usepackage{mathtext}\usepackage[russian]{babel}");
unitsize(1cm);
pair i1 = (-1, 0), O = (0, 0);
transform r=rotate(-72,O);
transform r2=rotate(72,O);
dot("$i_1$",i1, W);
dot("$i_2$",r*i1, NW);
dot("$i_3$",r*(r*i1), NE);
dot("$i_m$",r2*i1,SW);

path p1=i1{dir(rotate(-90)*(i1-O))}..r*i1;
draw(p1,Arrow(TeXHead));

path p2=r*i1{dir(rotate(-90)*(r*i1-O))}..r*(r*i1);
draw(p2,Arrow(TeXHead));

path p3=r2*i1{dir(rotate(-90)*(r2*i1-O))}..r*(r2*i1);
draw(p3,Arrow(TeXHead));

path p4=r*(r*i1){dir(rotate(-90)*(r*(r*i1)-O))}..r2*(r2*i1);
draw(p4, dashed);

path p5=r2*(r2*i1){dir(rotate(-90)*(r2*(r2*i1)-O))}..r2*i1;
draw(p5,Arrow(TeXHead));

pair a = (3.5, 0), b = (3.5, 0.7);
dot(scale(0.8)*Label("$i$ не $k$"),a, S);

path p6=a{dir(rotate(-90)*(a-(3.5, 0.35)))}..b;
path p7=b{dir(rotate(-90)*(b-(3.5, 0.35)))}..a;

draw(p6);

draw(p7,Arrow(TeXHead));

