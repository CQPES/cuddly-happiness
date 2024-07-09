@echo off
set CHEM=clhbr
set NUM=1

echo COPYING %CHEM% FILES
copy ..\..\testrun\%CHEM%\*.dat .
copy ..\..\testrun\%CHEM%\*.f* .


copy %CHEM%tr%NUM%.dat   poly.fu5
echo RUNNING %CHEM%tr%NUM% TEST RUN
poly_%CHEM%
echo CLEANING UP FILES
if exist poly.fu5  move poly.fu5  %CHEM%tr%NUM%.fu5
if exist poly.fu6  move poly.fu6  %CHEM%tr%NUM%.fu6
if exist poly.fu14 move poly.fu14 %CHEM%tr%NUM%.fu14
if exist poly.fu15 move poly.fu15 %CHEM%tr%NUM%.fu15
if exist poly.fu18 move poly.fu18 %CHEM%tr%NUM%.fu18
if exist poly.fu22 move poly.fu22 %CHEM%tr%NUM%.fu22
if exist poly.fu49 move poly.fu49 %CHEM%tr%NUM%.fu49
if exist esp.fu61  move esp.fu61  %CHEM%tr%NUM%.fu61

set NUM=2

copy %CHEM%tr%NUM%.dat   poly.fu5
echo RUNNING %CHEM%tr%NUM% TEST RUN
poly_%CHEM%
echo CLEANING UP FILES
if exist poly.fu5  move poly.fu5  %CHEM%tr%NUM%.fu5
if exist poly.fu6  move poly.fu6  %CHEM%tr%NUM%.fu6
if exist poly.fu14 move poly.fu14 %CHEM%tr%NUM%.fu14
if exist poly.fu15 move poly.fu15 %CHEM%tr%NUM%.fu15
if exist poly.fu18 move poly.fu18 %CHEM%tr%NUM%.fu18
if exist poly.fu22 move poly.fu22 %CHEM%tr%NUM%.fu22
if exist poly.fu29 move poly.fu29 %CHEM%tr%NUM%.fu29
if exist poly.fu49 move poly.fu49 %CHEM%tr%NUM%.fu49
if exist esp.fu61  move esp.fu61  %CHEM%tr%NUM%.fu61



set NUM=3

copy %CHEM%tr%NUM%.dat   poly.fu5
echo RUNNING %CHEM%tr%NUM% TEST RUN
poly_%CHEM%
echo CLEANING UP FILES
if exist poly.fu5  move poly.fu5  %CHEM%tr%NUM%.fu5
if exist poly.fu6  move poly.fu6  %CHEM%tr%NUM%.fu6
if exist poly.fu14 move poly.fu14 %CHEM%tr%NUM%.fu14
if exist poly.fu15 move poly.fu15 %CHEM%tr%NUM%.fu15
if exist poly.fu18 move poly.fu18 %CHEM%tr%NUM%.fu18
if exist poly.fu22 move poly.fu22 %CHEM%tr%NUM%.fu22
if exist poly.fu29 move poly.fu29 %CHEM%tr%NUM%.fu29
if exist poly.fu49 move poly.fu49 %CHEM%tr%NUM%.fu49
if exist esp.fu61  move esp.fu61  %CHEM%tr%NUM%.fu61


set NUM=4

copy %CHEM%tr%NUM%.dat   poly.fu5
echo RUNNING %CHEM%tr%NUM% TEST RUN
poly_%CHEM%
echo CLEANING UP FILES
if exist poly.fu5  move poly.fu5  %CHEM%tr%NUM%.fu5
if exist poly.fu6  move poly.fu6  %CHEM%tr%NUM%.fu6
if exist poly.fu14 move poly.fu14 %CHEM%tr%NUM%.fu14
if exist poly.fu15 move poly.fu15 %CHEM%tr%NUM%.fu15
if exist poly.fu18 move poly.fu18 %CHEM%tr%NUM%.fu18
if exist poly.fu22 move poly.fu22 %CHEM%tr%NUM%.fu22
if exist poly.fu29 move poly.fu29 %CHEM%tr%NUM%.fu29
if exist poly.fu49 move poly.fu49 %CHEM%tr%NUM%.fu49
if exist esp.fu61  move esp.fu61  %CHEM%tr%NUM%.fu61


set NUM=5

copy %CHEM%tr%NUM%.dat   poly.fu5
echo RUNNING %CHEM%tr%NUM% TEST RUN
poly_%CHEM%
echo CLEANING UP FILES
if exist poly.fu5  move poly.fu5  %CHEM%tr%NUM%.fu5
if exist poly.fu6  move poly.fu6  %CHEM%tr%NUM%.fu6
if exist poly.fu14 move poly.fu14 %CHEM%tr%NUM%.fu14
if exist poly.fu15 move poly.fu15 %CHEM%tr%NUM%.fu15
if exist poly.fu18 move poly.fu18 %CHEM%tr%NUM%.fu18
if exist poly.fu22 move poly.fu22 %CHEM%tr%NUM%.fu22
if exist poly.fu29 move poly.fu29 %CHEM%tr%NUM%.fu29
if exist poly.fu49 move poly.fu49 %CHEM%tr%NUM%.fu49
if exist esp.fu61  move esp.fu61  %CHEM%tr%NUM%.fu61

echo DONE RUNNING %CHEM% TEST RUNS


