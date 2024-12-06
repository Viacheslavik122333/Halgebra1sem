if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="lecture-3";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1.5cm);
pair [] i;
i[0] = (0, 0); i[1] = (1, 0); i[2] = (2, 0); i[3] = (3, 0); i[4] = (4, 0); i[5] = (5, 0); i[6] = (6, 0);
dot("$\sigma^{-1}(i)$", i[1], S);
dot("$i$", i[2], S);
dot("$\sigma(i)$", i[3], S);
dot("$\sigma^{2}(i)$", i[4], S);

path p1=i[0]{dir(rotate(-131)*(i[0]-((i[1]-i[0])/2+i[0])))}..i[1];
draw(p1,Arrow(TeXHead));

path p2=i[1]{dir(rotate(-131)*(i[1]-((i[2]-i[1])/2+i[1])))}..i[2];
draw(p2,Arrow(TeXHead));
draw(Label("$\sigma$"),p2, N);

path p3=i[2]{dir(rotate(-131)*(i[2]-((i[3]-i[2])/2+i[2])))}..i[3];
draw(p3,Arrow(TeXHead));
draw(Label("$\sigma$"),p3, N);

path p4=i[3]{dir(rotate(-131)*(i[3]-((i[4]-i[3])/2+i[3])))}..i[4];
draw(p4,Arrow(TeXHead));
draw(Label("$\sigma$"),p4, N);

path p5=i[4]{dir(rotate(-131)*(i[4]-((i[5]-i[4])/2+i[4])))}..i[5];
draw(p5,Arrow(TeXHead));
draw(Label("$\sigma$"),p5, N);
