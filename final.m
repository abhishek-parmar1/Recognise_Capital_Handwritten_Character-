%transpose the matrix again because neural network excepts the features in
%a single column
check = check';

%call the neural network (net) and pass the features of the test image
result = net(check);

%check the result nd print the character in the result.txt file
    if result(1,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'A');
        fclose(fid);
    end
    
    if result(2,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'B');
        fclose(fid);
    end
    
    
    if result(3,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'C');
        fclose(fid);
    end
    
    
    if result(4,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'D');
        fclose(fid);
    end
    
    
    if result(5,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'E');
        fclose(fid);
    end
    
    
    if result(6,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'F');
        fclose(fid);
    end
    
    
    if result(7,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'G');
        fclose(fid);
    end
    
    
    if result(8,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'H');
        fclose(fid);
    end
    
    
    if result(9,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'I');
        fclose(fid);
    end
    
    
    if result(10,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'J');
        fclose(fid);
    end
    
    
    if result(11,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'K');
        fclose(fid);
    end
    
    
    if result(12,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'F');
        fclose(fid);
    end
    
    
    if result(13,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'M');
        fclose(fid);
    end
    
    
    if result(14,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'N');
        fclose(fid);
    end
    
    
    if result(15,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'O');
        fclose(fid);
    end
    
    
    if result(16,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'P');
        fclose(fid);
    end
    
    
    if result(17,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'Q');
        fclose(fid);
    end
    
    
    if result(18,1)==max(result)
        fid=fopen('result.txt','w');
         fprintf(fid,'R');
        fclose(fid);
    end
    
    
    if result(19,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'T');
        fclose(fid);
    end
    
    
    if result(20,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'U');
        fclose(fid);
    end
    
    
    if result(21,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'V');
        fclose(fid);
    end
    
    
    if result(22,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'W');
        fclose(fid);
    end
    
    if result(23,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'X');
        fclose(fid);
    end
    
    
    if result(24,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'Y');
        fclose(fid);
    end
    
    
    if result(25,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'Z');
        fclose(fid);
    end
    
    
    if result(26,1)==max(result)
        fid=fopen('result.txt','w');
        fprintf(fid,'S');
        fclose(fid);
    end

