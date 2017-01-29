Uses Graph,Crt;

Const GetFillColor:FILLPATTERNTYPE=(255,255,255,255,255,255,255,255);R=20;sbrk      = 30;

procedure EgaVgaDriverProc; external;
{$L EGAVGA.OBJ }

PROCEDURE Off;
  BEGIN
  NOSOUND;
  DELAY(sbrk)
  END;


Procedure Beep;
Begin
Sound(150);
delay(4000);
End;                           

PROCEDURE Buzz(Long:Word);
  VAR
    counter : integer;
  BEGIN
    FOR counter := 1 TO Long DO
      BEGIN
        SOUND(100);
        DELAY(30);
        NOSOUND;
        DELAY(30)
      END
  END;
  PROCEDURE BBall(High,Low,Long :Word);
  VAR count : INTEGER;
  BEGIN
  count := Long;
  WHILE count > 1 do
    BEGIN
    SOUND(low - count * 2);
    DELAY((count *500) DIV 20);
    NOSOUND;
    DELAY(100);
    SOUND(high);
    DELAY((count * 500) div 15);
    NOSOUND;
    DELAY(150);
    count := count - 2
    END
  END;

  procedure BombsA(high, low, altitude : integer);
  var count : integer;
  begin
    count := low;
    while count <= high do
	  begin
	  sound(count);
	  delay((altitude div count) * 75);
	  count := count + 10
	  end;
    nosound;

    sound(40);
    delay(500);
    nosound;
    delay(100);

    sound(40);
    delay(500);
    nosound;
    delay(100);

    sound(40);
    delay(500);
    nosound;
    delay(100);

    sound(40);
    delay(3000);
    nosound
  end;

PROCEDURE BUZZED(LONG:INTEGER);
Var L:Integer;
Begin
For L:=1 to Long Do
Begin
Sound(50*L);
Delay(50);
Off;
Off;
Sound(10*L);
Delay(50);
NoSound;
End;
end;

Procedure Buzzeds(Long:Byte);
Var L:Byte;
Begin
For L:=1 To Long Do
BUZZED(L);
End;

 PROCEDURE BBLBeep(Tone:Word);
  VAR count : INTEGER;
  BEGIN
  Count:=20;
    BEGIN
    SOUND(Tone);
    DELAY((count *500) Div 20);
    NOSOUND;
    DELAY(500);
    SOUND(Tone);
    DELAY((count * 500) Div 20);
    NOSOUND;
    DELAY(698);
    SOUND(Tone);
    DELAY((count * 500) Div 10);
    NOSOUND;
    END;
  END;

procedure circleunit(x,x1,y,y1,sizex,sizey:integer);
const
  R = 50;
var
  Driver, Mode : Integer;
  Xasp, Yasp : Word;getlit:palettetype;
begin
  Driver := Detect;
  if GraphResult < 0 then Halt(1);
  GetAspectRatio(Xasp, Yasp);
  Sector(x,x1,
	 y1
	 ,
	  y
	  ,
	 sizex,sizey);
end;

procedure boy(x,y:integer);
begin
circleunit(99-34+x,99-69+y,360,0,20,20);
ellipse(110-34+x,90-69+y,70,69,7,5);
setcolor(6);
ellipse(110-34+x,90-69+y,70,69,7,5);
circleunit(110-34+x,90-69+y,0,0,50,50);
circle(110-34+x,90-69+y,3);
circleunit(90-34+x,90-69+y,0,0,50,50);
ellipse(90-34+x,90-69+y,70,69,7,5);
circle(90-34+x,90-69+y,3);
setcolor(8);
ellipse(99-34+x,99-69+y,70,69,4,5);
setcolor(2);
outtextxy(88-34+x,110-69+y,'ÀÄÙ');
setcolor(14);
outtextxy(75-34+x,100-69+y,'(');
outtextxy(120-34+x,100-69+y,')');
setcolor(6);
outtextxy(85-34+x,70-69+y,'ÜÜÜÜ');
outtextxy(85-34+x,77-69+y,'ß  ß');
setcolor(15);
outtextxy(91-34+x,118-69+y,'ÛÛ');
outtextxy(35-34+x,118-69+y,#15);
outtextxy(35-34+x,125-69+y,'º');
outtextxy(35-34+x,130-69+y,'º');
outtextxy(35-34+x,138-69+y,'ÈÍÍÍÍÍ');
outtextxy(155-34+x,118-69+y,#15);
outtextxy(155-34+x,125-69+y,'º');
outtextxy(155-34+x,130-69+y,'º');
outtextxy(115-34+x,138-69+y,'ÍÍÍÍÍ¼');
setcolor(6);
outtextxy(75-34+x,125-69+y,'ÜÛÛÛÛÜ');
outtextxy(75-34+x,130-69+y,'ÛÛÛÛÛÛ');
outtextxy(75-34+x,138-69+y,'ÛÛÛÛÛÛ');
outtextxy(75-34+x,146-69+y,'ÛÛÛÛÛÛ');
outtextxy(75-34+x,150-69+y,'ÛÛÛÛÛÛ');
outtextxy(75-34+x,156-69+y,'ÛÛÛÛÛÛ');
outtextxy(75-34+x,162-69+y,'ÛÛÛÛÛÛ');
setcolor(5);
outtextxy(75-34+x,170-69+y,'ÛÛÛÛÛÛ');
outtextxy(75-34+x,178-69+y,'Û    Û');
setcolor(15);
outtextxy(75-34+x,186-69+y,'º    º');
outtextxy(75-34+x,192-69+y,'º    º');
outtextxy(75-34+x,200-69+y,'º    º');
setcolor(7);
;outtextxy(75-34+x,208-69+y,'ÛÛ   ÛÛ');
end;

procedure EllipseFill(X,Y,RadiusX,RadiusY:Integer);
Var M:FILLPATTERNTYPE;
begin
GetfillPATTERN(M);
SetFillPATTERN(GetFillColor,GetColor);
FillEllipse(X,Y,RadiusX, RadiusY);
SetFillPATTERN(M,GetColor);
end;

  procedure hallalit(Startx,Starty,StartColor:integer);
  begin
  Ellipse(StartX, StartY, 0, 360, r, (r div 3)+2);
  Ellipse(StartX, StartY-4, 190, 357, r, r div 3);
  Line(StartX+7, StartY-6, StartX+10, StartY-12);
  Circle(StartX+10, StartY-12, 2);
  Line(StartX-7, StartY-6, StartX-10, StartY-12);
  Circle(StartX-10, StartY-12, 2);
  SetFillStyle(SolidFill , StartColor);
  FloodFill(StartX+1, StartY+4, GetColor);
  end;


Type
DirectionType=(LEFT,RIGHT);
GiraffeRec=Record
X,Y:Integer;
Color:Record
Giraffe,Blobs,Eye,Mouth:Byte;
End;
Direction:DirectionType;
End;

procedure Abort(Msg : string);
begin
  Writeln(Msg, ': ', GraphErrorMsg(GraphResult));
  Halt(1);
end;

Procedure ScanEgaVga;
Begin
  if RegisterBGIdriver(@EGAVGADriverProc) < 0 then
    Abort('EGA/VGA');
end;


Procedure FillRec(X,Y,X1,Y1:Integer);
Var M:Integer;
Begin
For M:=X to X1 Do
Line(M,Y,M,Y1);
End;

Procedure IVGA256;
var
  Driver, Mode, TestDriver,
  ErrCode  : Integer;M:Char;
{$F+}

function TestDetect : Integer;
{ Autodetect function. Assume hardware is
  always present. Return value = recommended
  default mode. }
begin
  TestDetect := 1;
end;
{$F-}
begin
Randomize;
  { Install the driver }
  TestDriver :=
    InstallUserDriver('VGA256', @TestDetect);
  if GraphResult <> grOk then
  begin
    WriteLn('Error installing TestDriver');
    Halt(1);
  end;
  Driver := Detect;
  InitGraph(Driver, Mode, '');
  ErrCode := GraphResult;
  if ErrCode <> grOk then
  begin
    WriteLn('Error during Init: ', ErrCode);
    Halt(1);
  end;
end;

procedure giraffe(M:GiraffeRec);
Var XR:Integer;
Begin
With M Do
Begin
If Direction=Left Then

Begin
SetColor(Color.Giraffe);
EllipseFill(20+X,20+Y,15,10);
SetColor(Color.Eye);
EllipseFill(15+X,15+Y,2,2);
EllipseFill(27+X,15+Y,2,2);
SetColor(Color.Mouth);
EllipseFill(20+X,25+Y,10,2);
SetColor(Color.Giraffe);
For XR:=1 To 10 Do
Line(30+X,17+XR+Y,65+X,50+XR+Y);
EllipseFill(70+X,50+Y,30,10);
For XR:=1 To 5 Do
Line(50+X+XR,50+Y,50+X+XR,80+Y);
For XR:=1 To 5 Do
Line(90+X+XR,50+Y,90+X+XR,80+Y);
For XR:=1 To 2 Do
Line(90+X+XR,50+Y,115+X+XR,58+Y);
For XR:=1 To 2 Do
Line(115+X+XR,58+Y,130+X+XR,65+Y);
SetColor(Color.Blobs);
EllipseFill(X+48,Y+48,5,3);
EllipseFill(X+68,Y+48,8,6);
EllipseFill(X+74,Y+48,3,8);
EllipseFill(X+87,Y+48,6,8);
EllipseFill(X+93,Y+68,3,6);
EllipseFill(X+54,Y+68,3,2);
EllipseFill(X+53,Y+78,2,2);
EllipseFill(X+54,Y+58,1,6);
EllipseFill(X+38,Y+30,2,4);
SetColor(Color.Giraffe);
End;

If Direction=Right Then

Begin
SetColor(Color.Giraffe);
EllipseFill(120+X,20+Y,15,10);
SetColor(Color.Eye);
EllipseFill(115+X,15+Y,2,2);
EllipseFill(127+X,15+Y,2,2);
SetColor(Color.Mouth);
EllipseFill(120+X,25+Y,10,2);
SetColor(Color.Giraffe);
For XR:=1 To 10 Do
Line(110+X,20+XR+Y,80+X,50+XR+Y);
EllipseFill(70+X,50+Y,30,10);
For XR:=1 To 5 Do
Line(50+X+XR,50+Y,50+X+XR,80+Y);
For XR:=1 To 5 Do
Line(90+X+XR,50+Y,90+X+XR,80+Y);
For XR:=1 To 2 Do
Line(40+X+XR,50+Y,15+X+XR,56+Y);
For XR:=1 To 2 Do
Line(15+X+XR,56+Y,0+X+XR,65+Y);
SetColor(Color.Blobs);
EllipseFill(X+48,Y+48,5,3);
EllipseFill(X+68,Y+48,8,6);
EllipseFill(X+74,Y+48,3,8);
EllipseFill(X+87,Y+48,6,8);
EllipseFill(X+93,Y+68,3,6);
EllipseFill(X+54,Y+68,3,2);
EllipseFill(X+53,Y+78,2,2);
EllipseFill(X+54,Y+58,1,6);
EllipseFill(X+98,Y+38,2,4);
SetColor(Color.Giraffe);
End;

End;
End;

procedure _graph(x,y,c:integer);
begin
setcolor(c);
fillrec(X,Y,X+3,Y+3);
end;

Procedure CFont(Letter:Char;X1,Y1:Integer);

Procedure LLetter;
Var X:Byte;
Begin
For X:=0 TO 7 DO _Graph(X1,Y1+X*3,Random(254)+1);
For X:=0 TO 4 DO _Graph(X1+X*3,Y1+21,Random(254)+1);
End;

Procedure CLetter;
Var X:Byte;
Begin
For X:=0 TO 7 DO _Graph(X1+X*3,Y1,Random(254)+1);
For X:=0 TO 7 DO _Graph(X1+X*3,Y1+21,Random(254)+1);
For X:=1 TO 7 DO _Graph(X1,Y1+X*3,Random(254)+1);
End;

Procedure OLETTER;
Var X:Byte;
Begin
CLETTER;
For X:=0 TO 7 DO _Graph(X1+21,Y1+X*3,Random(254)+1);
End;

Procedure RLetter;
Var X:Byte;
Begin
For X:=0 TO 5 DO _Graph(X1+X*3,Y1,Random(254)+1);
For X:=0 TO 7 DO _Graph(X1,Y1+X*3,Random(254)+1);
For X:=0 TO 4 DO _Graph(X1+X*3,Y1+9,Random(254)+1);
For X:=0 TO 2 DO _Graph(X1+15,Y1+X*3,Random(254)+1);
For X:=4 TO 5 DO _Graph(X1+15,Y1+X*3,Random(254)+1);
For X:=6 TO 7 DO _Graph(X1+18,Y1+X*3,Random(254)+1);
End;

Begin
RANDOMIZE;
Case Letter of
'C': CLETTER;
'O': OLETTER;
'L': LLETTER;
'R': RLETTER;
End;
End;

Procedure Continue;
Begin
CFONT('C',20,20);
CFONT('O',60,40);
CFONT('L',100,60);
CFONT('O',130,80);
CFONT('R',170,100);
End;

Procedure Dialog(M:String;X:Byte);
Begin
setcolor(7);
fillrec(50,0,GetMaxX-50,40);
setcolor(200);
fillrec(55,41,getmaxx-49,47);
fillrec(getmaxx-49,10,getmaxx-43,47);
setcolor(15);
fillrec(70,15,580,35);
SetColor(13);
OutTextXy(580,25,M);
SetColor(12);
If X=0 Then OutTextXy(Trunc(GetMaxX/2),10,'š‰…˜');
If X=1 Then OutTextXy(Trunc(GetMaxX/2),10,'„’');
End;

Procedure Talk;
Var M:Char;L:GiraffeRec;
Begin
Dialog('? ’™ „ ,„’ …Œ™',0);
M:=ReadKey;
Dialog('? Œ…š€ š‡‘™ „Œ€„ ‰Œ‘„ Œ‹ „ ,š‰…˜ ˜ƒ‘ Œ‹„',1);
M:=ReadKey;
Dialog('.‚‡Œ š…‰— …‰„ „„ ‰Œ‘„ ,€„ ? ‰Œ‘ „†‰€',0);
M:=ReadKey;
Dialog('.„Œ…™… ‰‘‰ „‹‘ ˜š…‰ ‰‰„š “…‘  ...? ‚‡Œ ‰Œ‘ 80 ‰…— ‰š',1);
M:=ReadKey;
Dialog('‰‰™ƒ…‡ ‰ —˜ Œ…‹„ ‰˜‡€ „ .‰‹‘ €˜… š€ „',0);
M:=ReadKey;
Dialog('.‰€‰‘ ‰…€š „…',0);
M:=ReadKey;
Dialog(':„Œ…™…  ‰‘‰',2);

With L DO
Begin
COLOR.BLOBS:=6;
COLOR.GIRAFFE:=14;
COLOR.EYE:=3;
COLOR.MOUTH:=4;
X:=340;
Y:=0;
Direction:=Left;
Giraffe(L);
Direction:=Right;
Giraffe(L);
End;
M:=ReadKey;
ClearDevice;
End;

Procedure Organ(X,Y,CO,CT:Integer);
Begin
SetColor(CO);
FillRec(X,Y,X+100,Y+40);
FillReC(X+100,Y+30,X+150,Y+40);
FillRec(X+10,Y+40,X+15,Y+80);
FillRec(X+90,Y+40,X+95,Y+80);
SetColor(CT);
OutTextXy(X+100,Y+20,'‚˜…€');
End;

Function CharAll(Char:Integer):integer;       {    ÛCharAllÛ ®To Sound Procedure¯ }
var j:string[1];b,c:integer;
begin
b:=Char-1;
if b=0 then c:=0;if b=1 then c:=33;if b=2 then c:=37;if b=3 then c:=39;if b=4 then c:=41;if b=5 then c:=44;
if b=6 then c:=46;if b=7 then c:=49;if b=8 then c:=52;if b=9 then c:=55;if b=10 then c:=58;if b=11 then c:=62;{-1}
if b=0 then c:=33;if b=1 then c:=34;if b=2 then c:=37;if b=3 then c:=39;if b=4 then c:=41;if b=5 then c:=44;
if b=6 then c:=46;if b=7 then c:=49;if b=8 then c:=52;if b=9 then c:=55;if b=10 then c:=58;if b=11 then c:=62;{-2}
if b=12 then c:=65;if b=13 then c:=69;if b=14 then c:=73;if b=15 then c:=78;if b=16 then c:=82;if b=87 then c:=92;
if b=18 then c:=98;if b=19 then c:=104;if b=20 then c:=110;if b=21 then c:=116;if b=22 then c:=58;if b=23 then c:=123;{-3}
if b=24 then c:=131;if b=25 then c:=139;if b=26 then c:=147;if b=27 then c:=156;if b=28 then c:=165;if b=29 then c:=175;
if b=30 then c:=185;if b=31 then c:=196;if b=32 then c:=208;if b=33 then c:=220;if b=34 then c:=233;if b=35 then c:=247;{-4}
if b=36 then c:=262;if b=37 then c:=277;if b=38 then c:=294;if b=39 then c:=311;if b=40 then c:=330;if b=41 then c:=349;
if b=42 then c:=370;if b=43 then c:=392;if b=44 then c:=415;if b=45 then c:=440;if b=46 then c:=466;if b=47 then c:=494;{-5}
if b=48 then c:=523;if b=49 then c:=554;if b=50 then c:=587;if b=51 then c:=622;if b=52 then c:=659;if b=53 then c:=698;
if b=54 then c:=740;if b=55 then c:=784;if b=56 then c:=831;if b=57 then c:=880;if b=58 then c:=932;if b=59 then c:=988;{-6}
if b=60 then c:=1046;if b=61 then c:=1109;if b=62 then c:=1175;if b=63 then c:=1244;if b=64 then c:=1318;
if b=65 then c:=1397;if b=66 then c:=1480;if b=67 then c:=1568;if b=68 then c:=1661;if b=69 then c:=1760;
if b=70 then c:=1865;if b=71 then c:=1976;{-7}
if b=72 then c:=2093;if b=73 then c:=2218;if b=74 then c:=2349;if b=75 then c:=2489;if b=76 then c:=2637;
if b=77 then c:=2794;if b=78 then c:=2960;if b=79 then c:=3136;if b=80 then c:=3322;if b=81 then c:=3520;
if b=82 then c:=3729;if b=83 then c:=3951;{-8}
if b=84 then c:=4186;if b=85 then c:=4435;if b=86 then c:=4699;if b=87 then c:=4978;if b=88 then c:=5274;
if b=89 then c:=5588;if b=90 then c:=5920;if b=91 then c:=6272;if b=92 then c:=6645;if b=93 then c:=7040;
if b=94 then c:=7459;if b=95 then c:=7902;
if b=96 then c:=8392;if b=97 then c:=8870;if b=98 then c:=9397;if b=99 then c:=9956;if b=100 then c:=10548;
if b=101 then c:=11175;if b=102 then c:=11840;if b=103 then c:=12544;if b=104 then c:=13290;if b=105 then c:=14080;
if b=106 then c:=14917;if b=107 then c:=15804;
CharAll:=c;
end;

Function GetSort(M:Integer):Integer;
Begin
GetSort:=0;
If M=01 Then GetSort:=01;
If M=02 Then GetSort:=03;
If M=03 Then GetSort:=05;
If M=04 Then GetSort:=06;
If M=05 Then GetSort:=08;
If M=06 Then GetSort:=10;
If M=07 Then GetSort:=12;
If M=08 Then GetSort:=02;
If M=09 Then GetSort:=04;
If M=10 Then GetSort:=05;
If M=11 Then GetSort:=07;
If M=12 Then GetSort:=09;
If M=13 Then GetSort:=11;
If M=13 Then GetSort:=12;
End;

Procedure PlayMusic;

Const Jonatan:Array[1..49] Of Byte=
(5,3,3,4,2,2,1,2,3,4,5,5,5,5,3,3,4,2,2,1,3,5,5,1,2,2,2,2,2,3,4,3,3,3,3,3,4,5,5,3,3,4,2,2,1,3,5,5,1);
      DelayJo:Array[1..49] Of Byte=
(1,1,2,1,1,2,1,1,1,1,1,1,2,1,1,2,1,1,2,1,1,1,1,2,1,1,1,1,1,1,2,1,1,1,1,1,1,2,1,1,2,1,1,2,1,1,1,1,2);
      LONDONB:Array[1..28] Of Byte=
(5,6,5,4,3,4,5,0,2,3,4,0,3,4,5,0,5,6,5,4,3,4,5,0,2,5,3,1);
      DelayLB:Array[1..28] Of Real=
(1.5,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1.5,1,1,1,1,1,1,1,2,2,1,3);
Var X:Byte;M:String[3];XL:String[20];Long:String[4];

Begin
For X:=1 To 49 Do
Begin
If DelayJo[X]=1 Then Long:=' ˜–—....===…ƒ,„˜,‰,„”,Œ…‘,„Œ,‰‘,PlayMusic,ˆ—„ š…‰'
		Else Long:='Š…˜€....===…ƒ,„˜,‰,„”,Œ…‘,„Œ,‰‘,ˆ—„ š…‰';
SetColor(1);
FillRec(0,200,GetMaxX,220);
XL:='ˆ—„ š…‰';
Case Jonatan[X] Of
1:M:=' …ƒ';
2:M:=' „˜';
3:M:=' ‰';
4:M:=' „”';
5:M:='Œ…‘';
Else M:='   ';
End;
SetColor(15);
OutTextXy(GetMaxX,210,XL+' :˜‰™ '+LONG+' '+M+' :…š');
Sound(CharAll(GetSort(Jonatan[X])+48));
Delay(DelayJo[X]*500);
NoSound;
Delay(20);
End;

For X:=1 To 28 Do
Begin
If DelayJo[X]=1 Then Long:=' ˜–—....===…ƒ,„˜,‰,„”,Œ…‘,„Œ,‰‘,PlayMusic,ˆ—„ š…‰'
		Else Long:='Š…˜€....===…ƒ,„˜,‰,„”,Œ…‘,„Œ,‰‘,ˆ—„ š…‰';
SetColor(1);
FillRec(0,200,GetMaxX,220);
XL:='…ƒ…Œ ˜™‚';
Case LONDONB[X] Of
1:M:=' …ƒ';
2:M:=' „˜';
3:M:=' ‰';
4:M:=' „”';
5:M:='Œ…‘';
6:M:=' „Œ';
Else M:='   ';
End;
SetColor(15);
OutTextXy(GetMaxX,210,XL+' :˜‰™ '+LONG+' '+M+' :…š');
If LondonB[x]=0 Then NoSound Else
Sound(CharAll(GetSort(LONDONB[X])+48));
Delay(Trunc(DelayLB[X]*500));
NoSound;
Delay(20);
End;

NoSound;
End;

Procedure GoodBye;
Var X,Y:Integer;
Begin
X:=0;
Y:=0;
While Y<>56 Do
Begin
Y:=Y+1;
X:=0;
While X<>8 Do
Begin
X:=X+1;
SetColor(Trunc(X));
OutTextXy(X*80,Y*10,'š…€˜š„Œ');
End;
End;
SetColor(14);
SetTextStyle(0,0,3);
OutTextXy(GetMaxX,30,'š…”˜‰''‚„ Œ„');
SetTextStyle(0,0,0);
End;

Var X,Y,X1:Integer;Xil:GiraffeRec;

Procedure Giraffes;
Label CoGi,EnGi;
Var Char1:Char;
Begin
Randomize;
OutTextXy(GetMaxX,10,'** 1-10 ''‘ „”˜‰''‚ ** š„ €€...š…”˜‰''‚„ Œ„ š€ ’…ˆ');
Delay(5000);
Giraffe(Xil);
Delay(5000);
ClearDevice;

For Y:=-40 TO Trunc(GetMaxY/40)*40-40 DO
Begin
Y:=Y+40;
For X:=510 DownTo 0 DO
Begin
If X<=0 Then Goto EnGi;
X:=X-10;
Xil.Color.Giraffe:=14;
Xil.Color.Blobs:=6;
Xil.Color.Eye:=3;
Xil.Color.Mouth:=4;
Xil.X:=X;
Xil.Y:=Y;
Giraffe(Xil);
SetColor(15);
Line(1,Y+82,GetMaxX,Y+82);
OutTextXy(GetMaxX,10,'**-’ˆ š…”˜‰''‚„ Œ„-**');
Xil.Color.Giraffe:=0;
Xil.Color.Blobs:=0;
Xil.Color.Eye:=0;
Xil.Color.Mouth:=0;
Xil.X:=X;
Xil.Y:=Y;
Giraffe(Xil);
End;
EnGi:
If Y>GetMaxY-80 Then Goto CoGi;
End;
CoGi:

For X1:=1 to 50 Do
Begin
For X:=1 To 1000 Do PutPixel(Random(GetMaxX),RanDom(GetMaxY),Random(15));
Xil.Color.Giraffe:=14;
Xil.Color.Blobs:=6;
Xil.Color.Eye:=3;
Xil.Color.Mouth:=4;
X:=Random(GetMaxX);
Xil.X:=X;
Y:=Random(GetMaxY);
Xil.Y:=Y;
Giraffe(Xil);
Delay(200);
Xil.Color.Giraffe:=0;
Xil.Color.Blobs:=0;
Xil.Color.Eye:=0;
Xil.Color.Mouth:=0;
Xil.X:=X;
Xil.Y:=Y;
Giraffe(Xil);
End;

Xil.Color.Giraffe:=14;
Xil.Color.Blobs:=6;
Xil.Color.Eye:=3;
Xil.Color.Mouth:=4;

For X:=1 To 100 Do
Begin
Xil.X:=Random(GetMaxX);

Giraffe(Xil);
End;

For X:=1 To 1000 Do
Begin
Xil.X:=Random(GetMaxX);
Xil.Y:=Random(GetMaxX);
Giraffe(Xil);
End;

ClearDevice;
Organ(0,0,8,7);
Xil.X:=121;
Xil.Y:=-9;
Giraffe(Xil);
Xil.X:=288;
Xil.Y:=-9;
Giraffe(Xil);
Xil.X:=428;
Xil.Y:=-9;
Giraffe(Xil);
SetColor(5);
FillRec(0,80,150,GetMaxY);
FillRec(150,73,GetMaxX,GetMaxY);
Xil.X:=348;
Xil.Y:=346;
Giraffe(Xil);
PlayMusic;
Delay(1000);
ClearDevice;
Giraffe(Xil);
Xil.Direction:=Right;
Xil.X:=0;
Giraffe(Xil);
Talk;
ClearDevice;
Xil.X:=348;
Xil.Y:=346;
GoodBye;
Xil.Direction:=Right;
Giraffe(Xil);
Xil.X:=400;
Xil.Y:=200;
Char1:=ReadKey;
Continue;
Delay(5000);
End;

Procedure Cat(X,Y:Integer);
Var X1:Integer;
Begin
Randomize;
SetColor(15);
EllipseFill(14+X,10+Y,14,10);
SetColor(Random(20)+1);
EllipseFill(9+X,3+Y,2,2);
EllipseFill(19+X,3+Y,2,2);
SetColor(4);
For X1:=0 To 4 Do
Arc(13+X,15-X1+Y,180,360,5);
SetColor(12);
EllipseFill(14+X,9+Y,2,2);
End;


Procedure Giraffes256;

Var X:LONGINT;Y,Y1:Byte;M:Char;

Begin
Xil.Direction:=LEFT;
Xil.Color.Giraffe:=100;
Xil.Color.Blobs:=112;
Xil.Color.Eye:=111;
Xil.Color.Mouth:=39;
Xil.X:=0;
Xil.Y:=0;
Giraffe(Xil);
Delay(3000);
CLeaRDEVICE;
For X:=1 TO 500 DO
Begin
setcolor(X);
FillRec(Random(GetMaxX),RanDom(GetMaxY),GetMaxX,GetMaxY);
End;
Xil.X:=100;
Xil.Y:=60;
For X:=0 TO 255 DO
Begin
setcolor(X);
FillRec(0,0,Trunc(GetMaxX/2),Trunc(GetMaxY/2));
setcolor(X*2);
FillRec(0,Trunc(GetMaxY/2),Trunc(GetMaxX/2),GetMaxY);
SetColor(Trunc(X/2));
FillRec(Trunc(GetMaxX/2),0,GetMaxX,Trunc(GetMaxY/2));
SetColor(Trunc(X/10));
FillRec(Trunc(GetMaxX/2),Trunc(GetMaxY/2),GetMaxX,GetMaxY);
Giraffe(Xil);
End;
For X:=1 To 100000 Do PutPixel(Random(GetMaxX),RanDom(GetMaxY),Random(225));
Xil.Color.Giraffe:=14;
Xil.Color.Blobs:=6;
Xil.Color.Eye:=3;
Xil.Color.Mouth:=4;
For X:=1 TO 1000 DO
Begin
IF RANDOM(2)=1 Then Xil.Direction:=LEFT Else Xil.Direction:=RIGHT;
Xil.X:=Random(GetMaxX);
Xil.Y:=Random(GetMaxY);
Giraffe(Xil);
End;
XIL.X:=0;
Xil.Y:=0;
for X:=1 TO 1000 DO
Begin
Xil.COLOR.Giraffe:=Random(255);
Xil.Color.Blobs:=Random(255);
Xil.Color.Eye:=Random(255);
Xil.Color.Mouth:=Random(255);
Giraffe(xil);
End;
ClearDevice;
Continue;
For X:=1 TO 10000 Do SetBkColor(Random(255));
X:=0;
SetBkColor(0);
ClearDevice;
  Repeat
  X:=X+1;
  setcolor(0);
  EllipseFill(150,100,150-X,150+X);
  setcolor(Random(255));
  EllipseFill(150,100-X,150-X,150+X);
  until 150-X=0;
Delay(5000);
For Y:=1 To 25 DO
Begin
For X:=0 To GetMaxX Do
Begin
SetColor(X);
Line(X*2,1,X,GetMaxY);
End;
For X:=0 To GetMaxY Do
Begin
SetColor(X);
Line(1,X*2,GetMaxX,X);
End;
End;
For Y:=1 To 25 DO
Begin
For X:=0 To GetMaxX Do
Begin
SetColor(X);
Line(X*2,1,X*2,GetMaxY);
End;
For X:=0 To GetMaxY Do
Begin
SetColor(X);
Line(1,X*2,GetMaxX,X*2);
End;
End;
ClearDevice;
For X:=1 TO 1000 Do
Begin
Cat(Random(GetMaxX),Random(GetMaxY));
IF RANDOM(2)=1 Then Xil.Direction:=LEFT Else Xil.Direction:=RIGHT;
Xil.X:=Random(GetMaxX);
Xil.Y:=Random(GetMaxY);
Giraffe(Xil);
Cat(Random(GetMaxX),Random(GetMaxY));
End;
ClearDevice;
For X:=1 TO 1000 Do
Begin
Cat(Random(GetMaxX),Random(GetMaxY));
Cat(Random(GetMaxX),Random(GetMaxY));
Cat(Random(GetMaxX),Random(GetMaxY));
Cat(Random(GetMaxX),Random(GetMaxY));
End;

While KeyPressed Do M:=ReadKey;

Xil.Direction:=LEFT;
Xil.Color.Giraffe:=100;
Xil.Color.Blobs:=112;
Xil.Color.Eye:=111;
Xil.Color.Mouth:=39;
Xil.X:=0;
Xil.Y:=0;

SetColor($5E);
SetLineStyle(UserBitLn,$C3,ThickWidth);
Circle(111,111,6);
Circle(170,111,6);
SetLineStyle(DottedLn,1,NormWidth);
Circle(140,150,60);
SetTextStyle(2,3,6);
OutTextxy(140,160,'<');
SetTextStyle(2,3,4);
OutTextxy(130,160,'[');
OutTextxy(120,160,'[');
SetTextStyle(2,3,6);
OutTextxy(105,160,'<');
OutTextxy(140,180,']');
SetTextStyle(2,3,4);
OutTextxy(130,180,']');
OutTextxy(120,180,']');
SetTextStyle(2,3,6);
OutTextxy(105,180,']');
SetTextStyle(2,0,6);
OutTextxy(100,170,'<');
OutTextxy(165,170,'>');
SetTextStyle(2,3,10);
OutTextXy(110,110,')');
SetTextStyle(2,3,2);
OutTextXy(128,125,'ø');
OutTextXy(134,125,'ø');
SetTextStyle(2,0,10);
OutTextXy(70,120,'{');
OutTextXy(200,120,'}');
While Not KeyPressed do begin SetBkColor(0);SetBkColor(14);SetBkColor(2);end;
cleardevice;
setbkcolor(0);
  setcolor(Random(255));
  MoveTo(0,0);
  While GetX<250 do begin
  MoveTo(GetX+1,GetY);
  Sound(CharAll(Random(12)+48));
  For X:= Random($2F) To Random($3E) do begin;
  SetLineStyle(DottedLn,Random($0EA6),NormWidth);
  Sound(CharAll(X+48));
  SetColor(Random(255));
  Rectangle(100+X, 100+X, 100-X, 100-X);
  If Random(X*10)=1 Then Y1:=Random(130)+120;
  If Random(X*5)=1 Then Y:=Random(200);
  hallalit(Y1,Y,Random(255));SetColor(0);hallalit(Y1,Y,0);
  SetColor(0);
  SetLineStyle(UserBitLn,Random($C3),ThickWidth);
  SetColor(Random(255));
  SetColor(0);
  Rectangle(Pred(100+X), Pred(100+X),
	    Succ(100-X), Succ(100-X));
  End;
  end;
  NoSound;
  Beep;
  Buzz(100);
  BBALL(100,150,30);    
  BombsA(500,1000,1000);
  BBLBeep(500);        
  Buzzed(150);
  Buzzeds(12);
  ClearDevice;
  SetColor(96);
  SetFillStyle(1,96);
  Boy(0,0);
Xil.Direction:=LEFT;
Xil.Color.Giraffe:=100;
Xil.Color.Blobs:=112;
Xil.Color.Eye:=111;
Xil.Color.Mouth:=39;
Xil.X:=120;
Xil.Y:=0;
  Giraffe(Xil);
  Organ(100,120,97,30);
  Readln;
End;

Begin
Xil.Direction:=LEFT;
Xil.Color.Giraffe:=14;
Xil.Color.Blobs:=6;
Xil.Color.Eye:=3;
Xil.Color.Mouth:=4;
Xil.X:=0;
Xil.Y:=0;
ScanEgaVga;
X:=0;
InitGraph(X,X,'');
SetTextJustify(RightText,CenterText);
Giraffes;
CloseGraph;
IVGA256;
Giraffes256;
CloseGraph;
End.