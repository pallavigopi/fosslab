#!/bin/bash
pdftotext -layout -nopgbrk result_MDL.pdf result_MDL.txt 
grep -E 'MDL16CS|TCE16CS006' result_MDL.txt>temp.txt
grep 'CS120(' result_MDL.txt>temp2.txt
cat -n  temp.txt>temp3.txt
cat -n  temp2.txt>temp4.txt
join temp3.txt temp4.txt>results.txt
rm temp3.txt temp4.txt
join -1 2 -2 6 results.txt c4b.txt>results2.txt
sed -i 's/(O),/ 10 /g; s/(A+),/ 9 /g; s/(A),/ 8.5 /g; s/(B+),/ 8 /g; s/(B),/ 7 /g; s/(C),/ 6 /g; s/(P),/ 5 /g; s/(F),/ 0 /g' results2.txt
sed -i 's/(O)/ 10 /g; s/(A+)/ 9 /g; s/(A)/ 8.5 /g; s/(B+)/ 8 /g; s/(B)/ 7 /g; s/(C)/ 6 /g; s/(P)/ 5 /g; s/(F)/ 0 /g' results2.txt
awk '{sum=0; sum=sum+($4*4+$6*4+$8*3+$10*1+$12*1+$14*4+$16*3+$18*3+$20*1); {printf("%s %s %d %d %.2f %s %s %s \n",$1,$22,$23,$24,sum/24,$26,$27,$28)}}' results2.txt>sem2.txt
pdftotext -layout -nopgbrk result_s1.pdf result_s1.txt 
grep -E 'MDL16CS|TCE16CS006' result_s1.txt>temp.txt
grep 'CS110(' result_s1.txt>temp2.txt
cat -n  temp.txt>temp3.txt
cat -n  temp2.txt>temp4.txt
join temp3.txt temp4.txt>results.txt
rm temp3.txt temp4.txt
join -1 2 -2 6 results.txt c4b.txt>result2.txt
sed -i 's/(O),/ 10 /g; s/(A+),/ 9 /g; s/(A),/ 8.5 /g; s/(B+),/ 8 /g; s/(B),/ 7 /g; s/(C),/ 6 /g; s/(P),/ 5 /g; s/(F),/ 0 /g' result2.txt
sed -i 's/(O)/ 10 /g; s/(A+)/ 9 /g; s/(A)/ 8.5 /g; s/(B+)/ 8 /g; s/(B)/ 7 /g; s/(C)/ 6 /g; s/(P)/ 5 /g; s/(F)/ 0 /g' result2.txt
awk '{sum=0; sum=sum+($4*4+$6*4+$8*3+$10*3+$12*3+$14*3+$16*1+$18*1+$20*1); {printf("%s %s %d %d %.2f %s %s %s \n",$1,$22,$23,$24,sum/23,$26,$27,$28)}}' result2.txt>sem1.txt
join -o 1.1 1.2 1.3 1.4 1.5 2.5 1.6 1.7 1.8 sem1.txt sem2.txt>y1.txt
echo "KTU_Reg_No Rollno S1 S2 CGPA Name">final.txt
awk '{sum=0; sum=sum+($5+$6); {printf("%s %d %.2f %.2f %.2f %s %s %s\n",$1,$4,$5,$6,sum/2,$7,$8,$9)}}' y1.txt>>final.txt
cat final.txt
rm sem1.txt sem2.txt temp.txt results2.txt results.txt y1.txt result2.txt temp2.txt
rm result_MDL.txt result_s1.txt

