LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY brentkung_32bit_adder IS
PORT ( A,B : IN STD_LOGIC_VECTOR(31 downto 0);
       Cin : IN STD_LOGIC; 
       Sum : OUT STD_LOGIC_VECTOR(31 downto 0);
	   Cout: OUT STD_LOGIC);
END brentkung_32bit_adder;

-- architecture of brentkung_32bit_adder begining

ARCHITECTURE a1 of brentkung_32bit_adder is
--component boxbff

COMPONENT boxbff
PORT ( inboxbff : IN STD_LOGIC ; 
       outboxbff : out STD_LOGIC );
					
END COMPONENT;
--component boxblck

COMPONENT boxblck
PORT ( Gac,Pac,Gc1b,Pc1b : IN STD_LOGIC; 
       Gab,Pab : out STD_LOGIC );
END COMPONENT;
--component boxgry

COMPONENT boxgry
PORT ( Gac,Pac,Gcab : IN STD_LOGIC; 
       Gab : out STD_LOGIC );
END COMPONENT;

-- start of definition signals used

signal G,P: std_logic_vector(31 downto 0);
signal SG00: STD_LOGIC; 
signal SG10,SG10p: STD_LOGIC;
signal SG2p,SP2p,SG20: STD_LOGIC; 
signal SG32,SP32,SG30p,SG30: STD_LOGIC; 
signal SG4,SP4,SG40: STD_LOGIC; 
signal SG54p,SP54p,SG54,SP54,SG50p,SG50: STD_LOGIC;
signal SG6,SP6,SG60: STD_LOGIC;
signal SG76,SP76,SG74,SP74,SG70p,SG70: STD_LOGIC;
signal SG8,SP8,SG80: STD_LOGIC;
signal SG98p,SP98p,SG98,SP98,SG90p,SG90: STD_LOGIC; 
signal SG10pp,SP10pp,SG100: STD_LOGIC; 
signal SG1110,SP1110,SG118p,SP118p,SG118,SP118,SG110p,SG110: STD_LOGIC;
signal SG12pp,SP12pp,SG120: STD_LOGIC; 
signal SG1312p,SP1312p,SG1312,SP1312,SG130p,SG130: STD_LOGIC; 
signal SG14pp,SP14pp,SG140: STD_LOGIC; 
signal SG1514,SP1514,SG1512,SP1512,SG158,SP158,SG150p,SG150:STD_LOGIC;
signal SG16pp,SP16pp,SG160: STD_LOGIC; 
signal SG1716p,SP1716p,SG1716,SP1716,SG170p,SG170: STD_LOGIC; 
signal SG18pp,SP18pp,SG180: STD_LOGIC; 
signal SG1918,SP1918,SG1916p,SP1916p,SG1916,SP1916,SG190p,SG190: STD_LOGIC; 
signal SG20pp,SP20pp,SG200: STD_LOGIC; 
signal SG2120p,SP2120p,SG2120,SP2120,SG210p,SG210: STD_LOGIC; 
signal SG22pp,SP22pp,SG220: STD_LOGIC; 
signal SG2322,SP2322,SG2320,SP2320,SG2316p,SP2316p,SG2316,SP2316,SG230p,SG230:STD_LOGIC; 
signal SG24pp,SP24pp,SG240: STD_LOGIC; 
signal SG2524p,SP2524p,SG2524,SP2524,SG250p,SG250: STD_LOGIC; 
signal SG26pp,SP26pp,SG260: STD_LOGIC; 
signal SG2726,SP2726,SG2724p,SP2724p,SG2724,SP2724,SG270p,SG270: STD_LOGIC; 
signal SG28pp,SP28pp,SG280: STD_LOGIC; 
signal SG2928p,SP2928p,SG2928,SP2928,SG290p,SG290: STD_LOGIC; 
signal SG30pp,SP30pp,SG300: STD_LOGIC; 
signal SG3130,SP3130,SG3128,SP3128,SG3124,SP3124,SG3116,SP3116,SG310p,SG310:STD_LOGIC; 
signal SG32pp,SP32pp:STD_LOGIC;

-- some dummy signals
signal dum0,dum1,dum2,dum3,dum4,dum5,dum6,dum7,dum8,dum9,dum10,dum11,dum12,dum13,dum14,dum15,dum16,dum17,dum18,dum19,dum20,dum21,dum22,dum23,dum24,dum25,dum26,dum27,dum28,dum29,dum30,dum31: STD_LOGIC;

-- end of definition signals used
begin

--pre processing steps

dum0<=A(0) nand B(0) after 150 ps;
G(0)<=not dum0 after 100 ps;
P(0)<=A(0) xor B(0) after 200 ps;
dum1<=A(1) nand B(1) after 150 ps;
G(1)<=not dum1 after 100 ps;
P(1)<=A(1) xor B(1) after 200 ps;
dum2<=A(2) nand B(2) after 150 ps;
G(2)<=not dum2 after 100 ps;
P(2)<=A(2) xor B(2) after 200 ps;
dum3<=A(3) nand B(3) after 150 ps;
G(3)<=not dum3 after 100 ps;
P(3)<=A(3) xor B(3) after 200 ps;
dum4<=A(4) nand B(4) after 150 ps;
G(4)<=not dum4 after 100 ps;
P(4)<=A(4) xor B(4) after 200 ps;
dum5<=A(5) nand B(5) after 150 ps;
G(5)<=not dum5 after 100 ps;
P(5)<=A(5) xor B(5) after 200 ps;
dum6<=A(6) nand B(6) after 150 ps;
G(6)<=not dum6 after 100 ps;
P(6)<=A(6) xor B(6) after 200 ps;
dum7<=A(7) nand B(7) after 150 ps;
G(7)<=not dum7 after 100 ps;
P(7)<=A(7) xor B(7) after 200 ps;
dum8<=A(8) nand B(8) after 150 ps;
G(8)<=not dum8 after 100 ps;
P(8)<=A(8) xor B(8) after 200 ps;
dum9<=A(9) nand B(9) after 150 ps;
G(9)<=not dum9 after 100 ps;
P(9)<=A(9) xor B(9) after 200 ps;
dum10<=A(10) nand B(10) after 150 ps;
G(10)<=not dum10 after 100 ps;
P(10)<=A(10) xor B(10) after 200 ps;
dum11<=A(11) nand B(11) after 150 ps;
G(11)<=not dum11 after 100 ps;
P(11)<=A(11) xor B(11) after 200 ps;
dum12<=A(12) nand B(12) after 150 ps;
G(12)<=not dum12 after 100 ps;
P(12)<=A(12) xor B(12) after 200 ps;
dum13<=A(13) nand B(13) after 150 ps;
G(13)<=not dum13 after 100 ps;
P(13)<=A(13) xor B(13) after 200 ps;
dum14<=A(14) nand B(14) after 150 ps;
G(14)<=not dum14 after 100 ps;
P(14)<=A(14) xor B(14) after 200 ps;
dum15<=A(15) nand B(15) after 150 ps;
G(15)<=not dum15 after 100 ps;
P(15)<=A(15) xor B(15) after 200 ps;
dum16<=A(16) nand B(16) after 150 ps;
G(16)<=not dum16 after 100 ps;
P(16)<=A(16) xor B(16) after 200 ps;
dum17<=A(17) nand B(17) after 150 ps;
G(17)<=not dum17 after 100 ps;
P(17)<=A(17) xor B(17) after 200 ps;
dum18<=A(18) nand B(18) after 150 ps;
G(18)<=not dum18 after 100 ps;
P(18)<=A(18) xor B(18) after 200 ps;
dum19<=A(19) nand B(19) after 150 ps;
G(19)<=not dum19 after 100 ps;
P(19)<=A(19) xor B(19) after 200 ps;
dum20<=A(20) nand B(20) after 150 ps;
G(20)<=not dum20 after 100 ps;
P(20)<=A(20) xor B(20) after 200 ps;
dum21<=A(21) nand B(21) after 150 ps;
G(21)<=not dum21 after 100 ps;
P(21)<=A(21) xor B(21) after 200 ps;
dum22<=A(22) nand B(22) after 150 ps;
G(22)<=not dum22 after 100 ps;
P(22)<=A(22) xor B(22) after 200 ps;
dum23<=A(23) nand B(23) after 150 ps;
G(23)<=not dum23 after 100 ps;
P(23)<=A(23) xor B(23) after 200 ps;
dum24<=A(24) nand B(24) after 150 ps;
G(24)<=not dum24 after 100 ps;
P(24)<=A(24) xor B(24) after 200 ps;
dum25<=A(25) nand B(25) after 150 ps;
G(25)<=not dum25 after 100 ps;
P(25)<=A(25) xor B(25) after 200 ps;
dum26<=A(26) nand B(26) after 150 ps;
G(26)<=not dum26 after 100 ps;
P(26)<=A(26) xor B(26) after 200 ps;
dum27<=A(27) nand B(27) after 150 ps;
G(27)<=not dum27 after 100 ps;
P(27)<=A(27) xor B(27) after 200 ps;
dum28<=A(28) nand B(28) after 150 ps;
G(28)<=not dum28 after 100 ps;
P(28)<=A(28) xor B(28) after 200 ps;
dum29<=A(29) nand B(29) after 150 ps;
G(29)<=not dum29 after 100 ps;
P(29)<=A(29) xor B(29) after 200 ps;
dum30<=A(30) nand B(30) after 150 ps;
G(30)<=not dum30 after 100 ps;
P(30)<=A(30) xor B(30) after 200 ps;
dum31<=A(31) nand B(31) after 150 ps;
G(31)<=not dum31 after 100 ps;
P(31)<=A(31) xor B(31) after 200 ps;



uut01: boxbff port map (Cin,SG00);
uut11: boxgry port map(G(0),P(0),Cin,SG10p);
uut12: boxbff port map (SG10p,SG10);
uut21: boxbff port map (G(1),SG2p);
uut22: boxbff port map (P(1),SP2p);
uut23: boxgry port map(SG2p,SP2p,SG10,SG20);
uut31: boxblck port map(G(2),P(2),G(1),P(1),SG32,SP32);
uut32: boxgry port map(SG32,SP32,SG10p,SG30p);
uut33: boxbff port map (SG30p,SG30);
uut41: boxbff port map (G(3),SG4);
uut42: boxbff port map (P(3),SP4);
uut43: boxgry port map(SG4,SP4,SG30,SG40);
uut51: boxblck port map(G(4),P(4),G(3),P(3),SG54p,SP54p);
uut52: boxbff port map (SG54p,SG54);
uut53: boxbff port map (SP54p,SP54);
uut54: boxgry port map(SG54,SP54,SG30,SG50p);
uut55: boxbff port map (SG50p,SG50);
uut61: boxbff port map (G(5),SG6);
uut62: boxbff port map (P(5),SP6);
uut63: boxgry port map(SG6,SP6,SG50p,SG60);
uut71: boxblck port map(G(6),P(6),G(5),P(5),SG76,SP76);
uut72: boxblck port map(SG76,SP76,SG54p,SP54p,SG74,SP74);
uut73: boxgry port map(SG74,SP74,SG30p,SG70p);
uut74: boxbff port map (SG70p,SG70);
uut81: boxbff port map (G(7),SG8);
uut82: boxbff port map (P(7),SP8);
uut83: boxgry port map(SG8,SP8,SG70,SG80);
uut91: boxblck port map(G(8),P(8),G(7),P(7),SG98p,SP98p);
uut92: boxbff port map (SG98p,SG98);
uut93: boxbff port map (SP98p,SP98);
uut94: boxgry port map(SG98,SP98,SG70,SG90p);
uut95: boxbff port map (SG90p,SG90);
uut101: boxbff port map (G(9),SG10pp);
uut102: boxbff port map (P(9),SP10pp);
uut103: boxgry port map(SG10pp,SP10pp,SG90p,SG100);
uut111: boxblck port map(G(10),P(10),G(9),P(9),SG1110,SP1110);
uut112: boxblck port map(SG1110,SP1110,SG98p,SP98p,SG118p,SP118p);
uut113: boxbff port map (SG118p,SG118);
uut114: boxbff port map (SP118p,SP118);
uut115: boxgry port map(SG118,SP118,SG70,SG110p);
uut116: boxbff port map (SG110p,SG110);
uut121: boxbff port map (G(11),SG12pp);
uut122: boxbff port map (P(11),SP12pp);
uut123: boxgry port map(SG12pp,SP12pp,SG110,SG120);
uut131: boxblck port map(G(12),P(12),G(11),P(11),SG1312p,SP1312p);
uut132: boxbff port map (SG1312p,SG1312);
uut133: boxbff port map (SP1312p,SP1312);
uut134: boxgry port map(SG1312,SP1312,SG110,SG130p);
uut135: boxbff port map (SG130p,SG130);
uut141: boxbff port map (G(13),SG14pp);
uut142: boxbff port map (P(13),SP14pp);
uut143: boxgry port map(SG14pp,SP14pp,SG130p,SG140);
uut151: boxblck port map(G(14),P(14),G(13),P(13),SG1514,SP1514);
uut152: boxblck port map(SG1514,SP1514,SG1312p,SP1312p,SG1512,SP1512);
uut153: boxblck port map(SG1512,SP1512,SG118p,SP118p,SG158,SP158);
uut154: boxgry port map(SG158,SP158,SG70p,SG150p);
uut155: boxbff port map (SG150p,SG150);
uut161: boxbff port map (G(15),SG16pp);
uut162: boxbff port map (P(15),SP16pp);
uut163: boxgry port map(SG16pp,SP16pp,SG150,SG160);
uut171: boxblck port map(G(16),P(16),G(15),P(15),SG1716p,SP1716p);
uut172: boxbff port map (SG1716p,SG1716);
uut173: boxbff port map (SP1716p,SP1716);
uut174: boxgry port map(SG1716,SP1716,SG150,SG170p);
uut175: boxbff port map (SG170p,SG170);
uut181: boxbff port map (G(17),SG18pp);
uut182: boxbff port map (P(17),SP18pp);
uut183: boxgry port map(SG18pp,SP18pp,SG170p,SG180);
uut191: boxblck port map(G(18),P(18),G(17),P(17),SG1918,SP1918);
uut192: boxblck port map(SG1918,SP1918,SG1716p,SP1716p,SG1916p,SP1916p);
uut193: boxbff port map (SG1916p,SG1916);
uut194: boxbff port map (SP1916p,SP1916);
uut195: boxgry port map(SG1916,SP1916,SG150,SG190p);
uut196: boxbff port map (SG190p,SG190);
uut201: boxbff port map (G(19),SG20pp);
uut202: boxbff port map (P(19),SP20pp);
uut203: boxgry port map(SG20pp,SP20pp,SG190p,SG200);
uut211: boxblck port map(G(20),P(20),G(19),P(19),SG2120p,SP2120p);
uut212: boxbff port map (SG2120p,SG2120);
uut213: boxbff port map (SP2120p,SP2120);
uut214: boxgry port map(SG2120,SP2120,SG190p,SG210p);
uut215: boxbff port map (SG210p,SG210);
uut221: boxbff port map (G(21),SG22pp);
uut222: boxbff port map (P(21),SP22pp);
uut223: boxgry port map(SG22pp,SP22pp,SG210p,SG220);
uut231: boxblck port map(G(22),P(22),G(21),P(21),SG2322,SP2322);
uut232: boxblck port map(SG2322,SP2322,SG2120p,SP2120p,SG2320,SP2320);
uut233: boxblck port map(SG2320,SP2320,SG1916p,SP1916p,SG2316p,SP2316p);
uut234: boxbff port map (SG2316p,SG2316);
uut235: boxbff port map (SP2316p,SP2316);
uut236: boxgry port map(SG2316,SP2316,SG150,SG230p);
uut237: boxbff port map (SG230p,SG230);
uut241: boxbff port map (G(23),SG24pp);
uut242: boxbff port map (P(23),SP24pp);
uut243: boxgry port map(SG24pp,SP24pp,SG230,SG240);
uut251: boxblck port map(G(24),P(24),G(23),P(23),SG2524p,SP2524p);
uut252: boxbff port map (SG2524p,SG2524);
uut253: boxbff port map (SP2524p,SP2524);
uut254: boxgry port map(SG2524,SP2524,SG230,SG250p);
uut255: boxbff port map (SG250p,SG250);
uut261: boxbff port map (G(25),SG26pp);
uut262: boxbff port map (P(25),SP26pp);
uut263: boxgry port map(SG26pp,SP26pp,SG250p,SG260);
uut271: boxblck port map(G(26),P(26),G(25),P(25),SG2726,SP2726);
uut272: boxblck port map(SG2726,SP2726,SG2524p,SP2524p,SG2724p,SP2724p);
uut273: boxbff port map (SG2724p,SG2724);
uut274: boxbff port map (SP2724p,SP2724);
uut275: boxgry port map(SG2724,SP2724,SG230p,SG270p);
uut276: boxbff port map (SG270p,SG270);
uut281: boxbff port map (G(27),SG28pp);
uut282: boxbff port map (P(27),SP28pp);
uut283: boxgry port map(SG28pp,SP28pp,SG270,SG280);
uut291: boxblck port map(G(28),P(28),G(27),P(27),SG2928p,SP2928p);
uut292: boxbff port map (SG2928p,SG2928);
uut293: boxbff port map (SP2928p,SP2928);
uut294: boxgry port map(SG2928,SP2928,SG270p,SG290p);
uut295: boxbff port map (SG290p,SG290);
uut301: boxbff port map (G(29),SG30pp);
uut302: boxbff port map (P(29),SP30pp);
uut303: boxgry port map(SG30pp,SP30pp,SG290p,SG300);
uut311: boxblck port map(G(30),P(30),G(29),P(29),SG3130,SP3130);
uut312: boxblck port map(SG3130,SP3130,SG2928p,SP2928p,SG3128,SP3128);
uut313: boxblck port map(SG3128,SP3128,SG2724p,SP2724p,SG3124,SP3124);
uut314: boxblck port map(SG3124,SP3124,SG2316p,SP2316p,SG3116,SP3116);
uut315: boxgry port map(SG3116,SP3116,SG150p,SG310p);
uut316: boxbff port map (SG310p,SG310);
uut321: boxbff port map (G(31),SG32pp);
uut322: boxbff port map (P(31),SP32pp);
uut323: boxgry port map(SG32pp,SP32pp,SG310,Cout);

--post processing steps

sum(0)<= Cin xor P(0) after 200 ps;
sum(1)<= SG10 xor P(1) after 200 ps;
sum(2)<= SG20 xor P(2) after 200 ps;
sum(3)<= SG30 xor P(3) after 200 ps;
sum(4)<= SG40 xor P(4) after 200 ps;
sum(5)<= SG50 xor P(5) after 200 ps;
sum(6)<= SG60 xor P(6) after 200 ps;
sum(7)<= SG70 xor P(7) after 200 ps;
sum(8)<= SG80 xor P(8) after 200 ps;
sum(9)<= SG90 xor P(9) after 200 ps;
sum(10)<= SG100 xor P(10) after 200 ps;
sum(11)<= SG110 xor P(11) after 200 ps;
sum(12)<= SG120 xor P(12) after 200 ps;
sum(13)<= SG130 xor P(13) after 200 ps;
sum(14)<= SG140 xor P(14) after 200 ps;
sum(15)<= SG150 xor P(15) after 200 ps;
sum(16)<= SG160 xor P(16) after 200 ps;
sum(17)<= SG170 xor P(17) after 200 ps;
sum(18)<= SG180 xor P(18) after 200 ps;
sum(19)<= SG190 xor P(19) after 200 ps;
sum(20)<= SG200 xor P(20) after 200 ps;
sum(21)<= SG210 xor P(21) after 200 ps;
sum(22)<= SG220 xor P(22) after 200 ps;
sum(23)<= SG230 xor P(23) after 200 ps;
sum(24)<= SG240 xor P(24) after 200 ps;
sum(25)<= SG250 xor P(25) after 200 ps;
sum(26)<= SG260 xor P(26) after 200 ps;
sum(27)<= SG270 xor P(27) after 200 ps;
sum(28)<= SG280 xor P(28) after 200 ps;
sum(29)<= SG290 xor P(29) after 200 ps;
sum(30)<= SG300 xor P(30) after 200 ps;
sum(31)<= SG310 xor P(31) after 200 ps;

END a1;
