c1 = 0;
c2 = 0;
seaterm = 'the angry wizard resembles a dragon';
E1 = strsplit(seaterm);
for r = 1:4436
    incount(r) = sum(strcmp(E1,vocabulary(1,r)));
end
for q = 1:1734
    text_1 = sim                                                                                                                                                                            【【  pilarc1(counts(q,:),incount)
    text_2 = similarc2(counts(q,:),incount)
if text_1 > c1
    c1 = text_1;
    q1 = q;
end
    if text_2 > c2
        c2 = text_2;
        q2 = q;
    end
end
output1=documents(q1);
output2=documents(q2);
disp(c1);
disp(c2);
disp(output1);
disp(output2);
  
