function [ max_prods ] = maxproduct( A,n)
 
    [mpr,maxpR]=mpRows(A,n); 
        if mpr>-Inf
            maxpR=sortrows(maxpR,1); end;
    [mpc,maxpC]=mpRows(A',n);
        if mpc>-Inf 
            maxpC=sortrows(fliplr(maxpC),1);end;
    [mpd,maxpD]=mpDiags(A,n);
        if mpd>-Inf
            maxpD=sortrows(maxpD,1); end;
    [mpod,maxpOD]=mpDiags(fliplr(A),n);
        if mpod >-Inf 
            maxpOD=sortrows(maxpOD,1);end;
    
        for i=1:size(maxpOD,1)
        maxpOD(i,2)=size(A,2)-maxpOD(i,2)+1;
        end
        
        [mp,index]=max([mpr,mpc,mpd,mpod]);
    
        switch index
        case 1
            max_prods=maxpR;
        case 2
            max_prods=maxpC;
        case 3
            max_prods=maxpD;
        case 4
            max_prods=maxpOD;
    end
end

function [mp,max_prods]=mpRows(A,n)
    if n > size(A,2)
        mp=-Inf;
        max_prods=[];
        return
    end
    mp=-Inf;
    rows=size(A,1);
    cols=size(A,2);
    for i= 1:rows
        for j=1:cols-n+1
          thisprod=prod(A(i,j:j+n-1));
          
          if thisprod==Inf
              thisprod=-Inf;
          end
          
          if thisprod>mp
              mp=thisprod;
              max_prods(1:n,1)=i;
              max_prods(1:n,2)=j:j+n-1;
          end   
        end    
    end
       
end

function [mp,newxp]=mpDiags(A,n)
   
    d=diags(A,n);
    [mp,max_prods]=mpRows(d,n) ; 
    
    x=1:size(A,1);
    y=1:size(A,2);
    [RR,CC]=ndgrid(x,y);
    RR=diags(RR,n);
    CC=diags(CC,n);
    newxp=zeros(size(max_prods,1),2);
    
    for i=1:size(max_prods,1)
        newxp(i,1)=RR(max_prods(i,1),max_prods(i,2));
        newxp(i,2)=CC(max_prods(i,1),max_prods(i,2));
    end
end

function d=diags(A,n)
    rows=size(A,1);
    cols=size(A,2);
    
    if rows>cols
        A=A';
        rows=size(A,1);
        cols=size(A,2);
    end
    Aninf=-inf(rows,cols);
    Abig=[Aninf,A,Aninf];
    diagonals=zeros(rows,2*cols);
    
    for i = 1:2*cols
        for j=1:rows
            diagonals(j,i)=Abig(j,i+j-1);
        end
    end
    d=diagonals';  
end