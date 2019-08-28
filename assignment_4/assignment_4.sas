data burn_data;
label TimeFollowed='Time (in days) until infection'
 Treatment='Treatment Group';
*infile 'H:\Werk\Survival Analysis\survival_analysis\assignment_4\section1_6.dat';
/*
Z1 Treatment: 0-routine bathing 1-Body cleansing
Z2 Gender (0=male 1=female)
Z3 Race: 0=nonwhite 1=white
Z4 Percentage of total surface area burned
Z5 Burn site indicator: head 1=yes, 0=no
Z6 Burn site indicator: buttock 1=yes, 0=no
Z7 Burn site indicator: trunk 1=yes, 0=no
Z8 Burn site indicator: upper leg 1=yes, 0=no
Z9 Burn site indicator: lower leg 1=yes, 0=no
Z10 Burn site indicator: respiratory tract 1=yes, 0=no
Z11 Type of burn: 1=chemical, 2=scald, 3=electric, 4=flame
T1 Time to excision or on study time
D1 Excision indicator: 1=yes 0=no
T2 Time to prophylactic antibiotic treatment or on study time
D2 Prophylactic antibiotic treatment: 1=yes 0=no
T3 Time to straphylocous aureaus infection or on study time
D3 Straphylocous aureaus infection: 1=yes 0=no
*/
input Patient_ID Treatment Gender Race Perc_Area_Burned BSI_Head BSI_Butt BSI_Trunk BSI_Upper BSI_Lower BSI_Resp TOB TTE Excision_Ind TTPAT PAT TTSAI SAI @@;
cards;
    1   0   0   0   15   0   0   1   1   0   0   2   12   0   12   0   12   0
    2   0   0   1   20   0   0   1   0   0   0   4    9   0    9   0    9   0
    3   0   0   1   15   0   0   0   1   1   0   2   13   0   13   0    7   1
    4   0   0   0   20   1   0   1   0   0   0   2   11   1   29   0   29   0
    5   0   0   1   70   1   1   1   1   0   0   2   28   1   31   0    4   1
    6   0   0   1   20   1   0   1   0   0   0   4   11   0   11   0    8   1
    7   0   0   1    5   0   0   0   0   0   1   4   12   0   12   0   11   1
    8   0   0   1   30   1   0   1   1   0   0   4    8   1   34   0    4   1
    9   0   0   1   25   0   1   0   1   1   0   4   10   1   53   0    4   1
   10   0   0   1   20   0   1   0   1   0   0   4    7   0    1   1    7   0
   11   0   0   1   30   1   0   1   0   0   1   4    7   1   21   1   44   1
   12   0   0   0   20   0   0   1   0   0   1   4   20   0    1   1   20   0
   13   0   0   1   25   0   0   1   1   1   0   4   12   1   32   0   32   0
   14   0   0   1   70   0   0   0   0   0   1   4   16   0   16   0   16   0
   15   0   0   1   20   1   0   1   0   0   0   4   39   0   39   0   39   0
   16   0   0   0   10   1   0   1   0   0   1   4   23   1   34   0   34   0
   17   0   0   1   10   1   0   0   0   0   0   4    8   0    8   0    8   0
   18   0   0   1   15   0   0   0   0   0   0   4   15   0   15   0    6   1
   19   0   0   1   10   0   0   0   0   0   1   4    8   0    8   0    8   0
   20   0   0   1   15   0   0   0   0   1   0   4   24   1   32   0   32   0
   21   0   0   1   16   0   0   1   0   0   0   4   25   1   22   1   43   0
   22   0   1   1   55   1   0   1   1   0   0   4   14   1    3   1   56   0
   23   0   0   1   20   1   0   1   1   0   0   4   24   1   47   0   11   1
   24   0   0   0   30   0   0   0   1   1   0   4    6   1   43   0   43   0
   25   0   0   1   40   0   1   0   1   1   0   1   25   0    3   1   25   0
   26   0   0   1   15   1   0   1   1   0   0   4   12   0   12   0   12   0
   27   0   1   1   50   0   0   1   0   0   1   4   15   1   53   0   32   1
   28   0   0   1   40   1   0   1   1   0   0   4   18   1   52   0   51   1
   29   0   1   1   45   0   1   1   1   1   0   4   13   1   11   1   21   0
   30   0   1   0   40   0   1   1   1   1   0   2   29   0    2   1   29   0
   31   0   0   1   28   0   0   1   0   0   0   2    7   0    7   0    3   1
   32   0   0   1   19   1   0   1   0   0   0   3   16   0   16   0   16   0
   33   0   0   1   15   0   0   1   0   0   0   2   10   0   10   0    3   1
   34   0   0   1    5   0   0   1   0   1   0   3    6   0    6   0    4   1
   35   0   1   1   35   0   0   1   0   0   0   4    8   1   43   0    7   1
   36   0   0   1    2   1   0   1   0   0   0   1    1   1   27   0   27   0
   37   0   1   1    5   0   0   1   0   0   0   2   18   0   18   0   18   0
   38   0   0   1   55   1   0   1   0   0   1   4    6   1    5   1   47   1
   39   0   0   0   10   0   0   0   1   0   0   2   19   1   29   0   29   0
   40   0   0   1   15   0   0   1   0   0   0   4    5   0    5   0    5   0
   41   0   1   1   20   1   0   1   0   0   1   4    1   1    4   1   97   0
   42   0   1   0   30   1   0   1   1   0   1   4   15   1   28   0   28   0
   43   0   0   1   25   1   1   1   1   0   1   4   14   1    4   1    7   1
   44   0   0   1   95   1   1   1   1   1   1   4    9   0    9   0    3   1
   45   0   1   1   30   0   0   0   0   1   0   4    1   1   39   0   39   0
   46   0   0   1   15   1   0   1   0   0   0   4   10   0   10   0   10   0
   47   0   0   1   20   0   1   1   1   0   0   4    6   1    5   1   46   0
   48   0   1   1    6   0   0   1   0   0   0   2   13   1   28   0   28   0
   49   0   0   1   15   0   0   1   0   0   1   4   11   1   21   0   21   0
   50   0   0   1    7   0   0   1   1   0   0   1    8   1   17   1   38   0
   51   0   0   1   13   0   0   1   1   1   0   4   10   0   10   0   10   0
   52   0   0   1   25   1   0   1   0   0   1   4    6   1   40   0    5   1
   53   0   0   1   25   1   0   1   0   1   1   4   18   1   22   0    9   1
   54   0   1   1   20   1   0   1   0   0   1   4   16   1   16   1   21   1
   55   0   1   1   25   0   0   1   1   0   0   4    7   1   26   0   26   0
   56   0   0   1   95   1   0   1   1   1   1   4   14   0   14   0   14   0
   57   0   0   1   17   1   0   1   0   0   0   4   16   0   16   0   16   0
   58   0   0   1    3   0   0   1   0   1   0   3    4   0    4   0    1   1
   59   0   0   1   15   1   0   1   0   0   0   4   19   0    6   1   19   0
   60   0   0   1   65   1   1   1   1   1   1   4   21   1    8   1   10   1
   61   0   1   1   15   1   0   1   1   1   1   4   18   0   18   0   18   0
   62   0   0   1   40   1   0   1   0   0   0   3   31   0   31   0   13   1
   63   0   0   1   45   1   0   1   1   0   1   4   11   1   24   1   40   0
   64   0   1   0   35   0   0   1   1   0   0   4    4   1    5   1   47   0
   65   0   0   1   85   1   1   1   1   0   1   4   12   1    8   1    9   1
   66   0   1   1   15   0   1   0   1   0   1   4   11   1   35   0   19   1
   67   0   0   1   70   0   1   1   1   1   0   2   23   1    8   1   60   0
   68   0   0   1    6   1   0   0   0   0   1   4    7   0    7   0    7   0
   69   0   0   1   20   0   0   1   0   0   0   4   19   1   26   0    6   1
   70   0   1   1   36   1   0   1   0   1   1   4   16   1   20   1   23   1
   71   1   1   1   50   1   1   1   0   1   0   4   15   0    1   1   15   0
   72   1   0   1   21   1   0   1   0   0   0   4    6   1   13   1   23   0
   73   1   0   1   16   1   0   1   0   0   0   4    2   1    9   0    9   0
   74   1   1   1    3   0   0   1   0   0   0   4    6   1   14   0   14   0
   75   1   0   1    5   1   0   1   0   0   0   3    8   0    8   0    2   1
   76   1   0   1   32   0   1   1   1   0   1   4   18   1   51   0   18   1
   77   1   0   1   38   0   1   1   1   0   0   4   12   1   22   0   22   0
   78   1   0   1   16   1   0   1   0   0   0   4    7   1   16   0   16   0
   79   1   1   1    9   0   1   0   1   0   0   4    6   1    2   1    2   1
   80   1   0   1   17   0   1   1   0   0   0   2   10   1   10   1   22   0
   81   1   0   1   22   1   0   1   0   0   0   4   12   1   20   0    5   1
   82   1   0   1   10   0   0   1   0   0   0   4    5   1    5   1   14   0
   83   1   0   1   12   1   0   1   0   0   0   4   12   0   12   0   12   0
   84   1   0   1   80   1   1   1   1   1   1   4    6   1    4   1   41   0
   85   1   1   1   15   0   0   1   1   0   0   4    9   1    9   1   21   0
   86   1   0   1   50   1   0   1   0   0   1   4   18   1    7   1   56   0
   87   1   0   1   50   1   1   1   1   1   1   4    7   1   42   1   67   0
   88   1   0   1   15   1   0   1   0   0   0   3   11   0   11   0   11   0
   89   1   0   1    8   1   0   1   0   0   0   4    9   1   17   0   17   0
   90   1   1   1   45   1   1   1   1   0   0   1   11   1   11   1   18   1
   91   1   0   1   20   0   1   1   1   0   1   4    6   1    6   1   14   1
   92   1   0   1    5   0   0   1   0   1   0   3    4   1    8   0    5   1
   93   1   0   1   25   0   0   1   0   0   0   2    5   1   10   0    5   1
   94   1   0   1   40   0   1   1   1   0   0   4   11   1    8   1   31   0
   95   1   0   1    4   0   0   1   0   1   0   3    9   1    7   1   23   0
   96   1   0   1   25   0   0   1   1   0   1   4    4   1   14   1   46   0
   97   1   1   1   20   0   0   1   0   1   0   4    5   1    1   1   38   0
   98   1   1   1   26   0   0   1   0   0   1   4    8   1    3   1   35   0
   99   1   0   1   10   0   1   1   1   0   0   4   13   1   21   0   21   0
  100   1   1   1   85   1   1   1   1   0   1   4   11   0    3   1   11   0
  101   1   0   1   75   1   0   1   1   1   0   4   29   1   49   0   16   1
  102   1   0   0    5   0   0   1   0   1   0   1   13   0   13   0   13   0
  103   1   0   1   20   1   0   1   0   0   0   4    1   1   12   0   12   0
  104   1   1   1    8   0   1   0   1   1   0   4    6   1    6   1   13   0
  105   1   1   1   10   0   0   1   0   0   1   4    6   1   23   0   23   0
  106   1   0   1   10   0   0   0   0   1   1   4    3   1   31   0   31   0
  107   1   1   0    2   0   0   1   0   0   0   1    2   1    2   1   10   0
  108   1   0   0    5   0   0   0   0   1   0   2    4   1    4   1   17   0
  109   1   0   1   10   1   0   0   0   1   0   4    5   1   18   0   18   0
  110   1   0   1   18   0   0   1   1   1   0   4    6   1    5   1   33   0
  111   1   0   1   20   1   0   1   1   0   0   4    9   1    8   1   17   0
  112   1   0   1   80   1   1   1   1   1   1   4    4   1   11   1   13   0
  113   1   0   0   17   1   0   1   1   1   1   4    5   1    4   1   35   0
  114   1   0   0   35   1   0   1   0   0   0   4    7   1    7   1   71   0
  115   1   0   1   50   1   0   1   0   1   1   4   11   0   11   0    3   1
  116   1   0   0   20   0   0   1   0   0   0   4    6   1   31   1   42   1
  117   1   0   1   25   0   1   1   1   0   0   3    8   0    8   0    5   1
  118   1   0   1   20   0   0   0   1   0   1   1    3   1    2   1   30   0
  119   1   0   1   20   0   0   1   1   0   0   4    6   1   38   0   38   0
  120   1   0   1   10   1   0   1   0   0   0   4   16   0   16   0   16   0
  121   1   0   0   15   1   0   1   0   0   0   2   20   0   20   0   20   0
  122   1   0   1   15   0   0   1   0   1   0   4   30   0    2   1   30   0
  123   1   0   1   15   0   0   1   0   0   0   4    2   1    7   0    7   0
  124   1   0   1   20   0   0   1   1   0   0   2    8   1    6   1   22   0
  125   1   0   1   13   1   0   1   0   0   0   4   13   0    4   1    5   1
  126   1   0   1   25   1   0   1   0   0   1   4   13   1    1   1   31   0
  127   1   0   1   25   0   0   1   1   0   1   4   17   0   17   0   10   1
  128   1   0   1    8   1   0   1   0   0   0   4   14   0   14   0   14   0
  129   1   1   1   30   1   0   1   0   0   1   4   13   0    5   1   13   0
  130   1   0   1   40   0   1   1   1   1   0   4   24   0    7   1   17   1
  131   1   1   1   12   0   1   1   1   1   0   1   14   1   21   0   21   0
  132   1   0   1   15   0   0   1   0   0   0   4    8   1   19   1   25   0
  133   1   0   1   25   1   0   1   0   0   0   4   23   0   23   0    8   1
  134   1   0   1   15   0   0   1   0   0   0   4   17   1   17   0   11   1
  135   1   0   0   20   0   0   1   1   1   0   4   19   1   31   0   31   0
  136   1   0   1   22   0   1   1   0   0   0   4   14   1   20   0   20   0
  137   1   0   1   15   1   0   1   0   1   0   4   15   1   22   0   22   0
  138   1   0   1    7   1   0   1   0   0   0   3   13   0    3   1   13   0
  139   1   0   1   30   0   1   1   1   1   0   2   49   0   49   0    4   1
  140   1   0   1   20   1   0   1   0   0   1   4   14   0   10   1   14   0
  141   1   1   1   35   1   0   1   0   0   1   4    6   1    5   1   49   0
  142   1   0   0   10   0   0   1   0   0   0   4   12   0   12   0   12   0
  143   1   0   1    8   0   0   1   0   1   0   3   14   0    1   1   14   0
  144   1   0   1   13   0   0   0   0   1   0   4   32   1   38   0   38   0
  145   1   1   0   10   0   1   1   1   0   0   2   12   1   13   1   41   0
  146   1   0   1    8   0   0   0   1   1   0   4   10   1   18   0   18   0
  147   1   0   1    7   1   0   1   0   0   0   4    8   0    8   0    8   0
  148   1   0   1   52   1   0   1   1   1   1   4   15   1   39   1   76   0
  149   1   1   1   14   0   1   1   1   1   0   4    8   1   62   0   62   0
  150   1   1   1    7   0   0   1   0   0   0   1    5   1   17   0   17   0
  151   1   1   1   20   1   0   1   0   0   0   4    7   1    6   1   17   1
  152   1   0   1   15   0   0   0   1   1   1   4   19   1    3   1   42   0
  153   1   0   1   10   0   0   1   0   0   0   4   10   0   10   0    2   1
  154   1   0   1   35   1   1   1   0   0   0   4   10   1   27   0   27   0
;
run;

proc print data=burn_data;
run;

proc lifetest data=burn_data plot=(s);
time TTSAI*SAI(0);
strata Treatment;
run;
