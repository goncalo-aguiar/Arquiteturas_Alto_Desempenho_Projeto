LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY control;
USE control.all;

LIBRARY ParReg_8bit;
USE ParReg_8bit.all;

library binCounter_3bit;
USE binCounter_3bit.all;

LIBRARY arithmetic;
USE arithmetic.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

ENTITY serial_encoder IS
  PORT (nGRst: IN STD_LOGIC;
		  clk:   IN STD_LOGIC;
		  mIn:   IN STD_LOGIC;
		  code:  OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
		
END serial_encoder;

ARCHITECTURE structure OF serial_encoder IS
	
	SIGNAL  s_f : STD_LOGIC_VECTOR(10 downto 0);
	SIGNAL INSet, iNRst, clkO: STD_LOGIC;
	SIGNAL  s_Q : STD_LOGIC;
	SIGNAL s_Qto8,s_and8,s_xor,s_xorIn,s_code : STD_LOGIC_VECTOR(7 downto 0);
	
	SIGNAL stat:  STD_LOGIC_VECTOR (2 DOWNTO 0);
	COMPONENT flipFlopDPET
	 PORT (clk, D: IN STD_LOGIC;
			 nSet, nRst: IN STD_LOGIC;
			 Q, nQ: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT binCounter_3bit
	 PORT (nRst: IN STD_LOGIC;
			 clk:  IN STD_LOGIC;
			 c:    OUT STD_LOGIC_VECTOR (2 DOWNTO 0));
  END COMPONENT;
	
	COMPONENT control
	  PORT (nGRst: IN STD_LOGIC;
        clk:   IN STD_LOGIC;
        add:   IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        nRst:  OUT STD_LOGIC;
        nSetO: OUT STD_LOGIC;
		  f:		OUT STD_LOGIC_VECTOR(10 downto 0);
        clkO:  OUT STD_LOGIC);
  END COMPONENT;
  
  COMPONENT gateAnd8
	PORT (x1, x2: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        y:      OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
  END COMPONENT;
  
    COMPONENT gateXor8
	PORT (x1, x2: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        y:      OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
  END COMPONENT;
  
   COMPONENT ParReg_8bit
	 PORT (nSet: IN STD_LOGIC;
			nRst: IN STD_LOGIC;
        clk: IN STD_LOGIC;
        D: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        Q: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
  END COMPONENT;
  
  
  
	
 
BEGIN
	ff:  flipFlopDPET PORT MAP (clk, mIn, '1', INRst, s_Q);
	bc:   binCounter_3bit PORT MAP (INRst, clk, stat);
	s_Qto8 <= (OTHERS=>s_Q);
	and8: gateAnd8 PORT MAP (s_Qto8, s_f(10 downto 3), s_and8);

   xor8: gateXor8 PORT MAP (s_and8, s_xorIn, s_xor);

	pr8:  ParReg_8bit PORT MAP ('1', INRst, clk, s_xor, s_xorIn);


	con: control  PORT MAP (nGRst, clk, stat, INRst, INSet, s_f,clkO);

	finalpr8: ParReg_8bit PORT MAP (INSet, '1', clkO, s_xor, s_code);
	code <= s_code;
	
	
END structure;