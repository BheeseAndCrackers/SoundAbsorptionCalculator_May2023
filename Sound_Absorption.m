%getting general dimensions of room
%Absorbtion @ 1KHZ
clc
clear

LF=input("Please enter the length of the floor in feet.\n");
WF=input("Please enter the width of the floor in feet.\n");
H=input("Please enter the height of the room in feet.\n");

V=LF*WF*H;
AF=LF*WF;

    
materials=input("Please enter the material of the floor. Please type one of the following:\n" + ...
    " Carpet\n Concrete\n Wood\n Tile\n Brick\n\n ", "s");

switch materials
    case "Carpet"
        EAF=0.15*AF;
    case "Concrete"
        EAF=0.06*AF;
    case "Wood"
        EAF=0.06*AF;
    case "Tile"
        EAF=0.01*AF;
    case "Brick"
        EAF=0.04*AF;
    otherwise
        disp("Invalid input. Please try again.");
end
%Total effective area
TotalEA=EAF;

%areaCeiling==areaFloor
AC=AF;


materials=input("Please enter the material of the ceiling. Please type one of the following:\n" + ...
    " Plaster\n Concrete\n Wood\n Fiberglass\n Brick\n\n ", "s");


switch materials
    case "Plaster"
        EAC=0.05*AC;
    case "Concrete"
        EAC=0.06*AC;
    case "Wood"
        EAC=0.06*AC;
    case "Fiberglass"
        EAC=0.9*AC;
    case "Brick"
        EAC=0.04*AC;
    otherwise
        disp("Invalid input. Please try again.");
end


TotalEA=[TotalEA,EAC];

L1=input("Please enter the length of Wall 1 in feet.\n");
W1=input("Please enter the width of Wall 1 in feet.\n");

A1=L1*W1;


materials=input("Please enter the material of Wall 1. Please type one of the following:\n" + ...
    " Plaster\n Concrete\n Wood\n Fiberglass\n Brick\n\n ", "s");

switch materials
    case "Plaster"
        EA1=0.05*A1;
    case "Concrete"
        EA1=0.06*A1;
    case "Wood"
        EA1=0.06*A1;
    case "Fiberglass"
        EA1=0.9*A1;
    case "Brick"
        EA1=0.04*A1;
    otherwise
        disp("Invalid input. Please try again.");
end


TotalEA=[TotalEA,EA1];

L2=input("Please enter the length of Wall 2 in feet.\n");
W2=input("Please enter the width of Wall 2 in feet.\n");

A2=L2*W2;


materials=input("Please enter the material of Wall 2. Please type one of the following:\n" + ...
    " Plaster\n Concrete\n Wood\n Fiberglass\n Brick\n\n ", "s");

switch materials
    case "Plaster"
        EA2=0.05*A2;
    case "Concrete"
        EA2=0.06*A2;
    case "Wood"
        EA2=0.06*A2;
    case "Fiberglass"
        EA2=0.9*A2;
    case "Brick"
        EA2=0.04*A2;
    otherwise
        disp("Invalid input. Please try again.");
end


TotalEA=[TotalEA,EA2];

L3=input("Please enter the length of Wall 3 in feet.\n");
W3=input("Please enter the width of Wall 3 in feet.\n");

A3=L3*W3;

materials=input("Please enter the material of Wall 3. Please type one of the following:\n" + ...
    " Plaster\n Concrete\n Wood\n Fiberglass\n Brick\n\n ", "s");

switch materials
    case "Plaster"
        EA3=0.05*A3;
    case "Concrete"
        EA3=0.06*A3;
    case "Wood"
        EA3=0.06*A3;
    case "Fiberglass"
        EA3=0.9*A3;
    case "Brick"
        EA3=0.04*A3;
    otherwise
        disp("Invalid input. Please try again.");
end

TotalEA=[TotalEA,EA3];

L4=input("Please enter the length of Wall 4 in feet.\n");
W4=input("Please enter the width of Wall 4 in feet.\n");

A4=L4*W4;

materials=input("Please enter the material of Wall 4. Please type one of the following:\n" + ...
    " Plaster\n Concrete\n Wood\n Fiberglass\n Brick\n\n ", "s");

switch materials
    case "Plaster"
        EA4=0.05*A4;
    case "Concrete"
        EA4=0.06*A4;
    case "Wood"
        EA4=0.06*A4;
    case "Fiberglass"
        EA4=0.9*A4;
    case "Brick"
        EA4=0.04*A4;
    otherwise
        disp("Invalid input. Please try again.");      
end

TotalEA=[TotalEA,EA4];

SurfaceAreas=[AF,AC,A1,A2,A3,A4];
S=sum(SurfaceAreas);
A=sum(TotalEA);

TotalAbsorbtion=(A/S)

if TotalAbsorbtion >= 0.2
    RT60=-0.049*(V/(S*log(1-TotalAbsorbtion)))
else
    RT60=0.049*(V/A)
end 

[c,ind]=max(TotalEA);
explode=zeros(1,6);
explode(ind)=1;

labels={'Floor','Ceiling','Wall 1','Wall 2','Wall 3','Wall 4'};

pie(TotalEA,explode)

legend(labels,'Location','northeastoutside','Orientation','vertical');
title("Effective Absorbtion Area of Each Surface");

    