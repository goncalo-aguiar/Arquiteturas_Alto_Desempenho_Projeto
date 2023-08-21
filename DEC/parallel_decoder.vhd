LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY simpleLogic;
USE simpleLogic.all;

ENTITY parallel_decoder IS
  PORT (x: IN STD_LOGIC_VECTOR(7 downto 0);
        m: OUT STD_LOGIC_VECTOR(3 downto 0);
		  v: OUT STD_LOGIC
		  );
END parallel_decoder;

ARCHITECTURE logicFunction OF parallel_decoder IS
	
	
	SIGNAL m3_c: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL m3_z: STD_LOGIC;
	SIGNAL m3_o: STD_LOGIC;
	SIGNAL m3_v: STD_LOGIC;
	
	
	SIGNAL m2_c: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL m2_z: STD_LOGIC;
	SIGNAL m2_o: STD_LOGIC;
	SIGNAL m2_v: STD_LOGIC;
	
	
	SIGNAL m1_c: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL m1_z: STD_LOGIC;
	SIGNAL m1_o: STD_LOGIC;
	SIGNAL m1_v: STD_LOGIC;
	
	
	SIGNAL m0_c: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL m0_z: STD_LOGIC;
	SIGNAL m0_o: STD_LOGIC;
	SIGNAL m0_v: STD_LOGIC;
	
	SIGNAL m_v:  STD_LOGIC ;
	SIGNAL m_partial_encoder:  STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL result_partial_encoder:  STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL comp :  STD_LOGIC_VECTOR(7 downto 0);
	
	SIGNAL c_pop :  STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL comp2 :  STD_LOGIC;
	
	COMPONENT popCounter_8bit
		PORT (d: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			  c: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT partial_encoder
		PORT (m: IN STD_LOGIC_VECTOR(3 downto 0);
        o:   OUT STD_LOGIC_VECTOR(7 downto 0));
	END COMPONENT;
	
	
BEGIN

	-- m3 
	m3_c(0) <= x(0) xor x(1);
	m3_c(1) <= x(2) xor x(3);
	m3_c(2) <= x(4) xor x(5);
	m3_c(3) <= x(6) xor x(7);
	
	m3_o    <= (m3_c(1) and m3_c(0) and (m3_c(3) or m3_c(2))) or (m3_c(3) and m3_c(2) and (m3_c(1) or m3_c(0)));
	m3_z    <= ((not m3_c(3)) and (not m3_c(2)) and ((not m3_c(1)) or (not m3_c(0)))) or ((not m3_c(1)) and (not m3_c(0)) and ((not m3_c(3)) or (not m3_c(2))));
	m3_v	  <= not (m3_o or m3_z);
	
	-- m2 
	m2_c(0) <= x(0) xor x(2);
	m2_c(1) <= x(1) xor x(3);
	m2_c(2) <= x(4) xor x(6);
	m2_c(3) <= x(5) xor x(7);
	m2_o    <= (m2_c(1) and m2_c(0) and (m2_c(3) or m2_c(2))) or (m2_c(3) and m2_c(2) and (m2_c(1) or m2_c(0)));
	m2_z    <= ((not m2_c(3)) and (not m2_c(2)) and ((not m2_c(1)) or (not m2_c(0)))) or ((not m2_c(1)) and (not m2_c(0)) and ((not m2_c(3)) or (not m2_c(2))));
	m2_v	  <= not (m2_o or m2_z);

	-- m1 
	m1_c(0) <= x(0) xor x(4);
	m1_c(1) <= x(1) xor x(5);
	m1_c(2) <= x(2) xor x(6);
	m1_c(3) <= x(3) xor x(7);
	m1_o    <= (m1_c(1) and m1_c(0) and (m1_c(3) or m1_c(2))) or (m1_c(3) and m1_c(2) and (m1_c(1) or m1_c(0)));
	m1_z    <=((not m1_c(3)) and (not m1_c(2)) and ((not m1_c(1)) or (not m1_c(0)))) or ((not m1_c(1)) and (not m1_c(0)) and ((not m1_c(3)) or (not m1_c(2))));
	m1_v	  <= not (m1_o or m1_z);

	-- m0 
	m_partial_encoder <= m3_o &  m2_o &  m1_o & '0';
	part_encoder: partial_encoder PORT MAP (m_partial_encoder(3 downto 0),result_partial_encoder(7 downto 0));
	comp(0) <= x(0) xor result_partial_encoder(0);
	comp(1) <= x(1) xor result_partial_encoder(1);
	comp(2) <= x(2) xor result_partial_encoder(2);
	comp(3) <= x(3) xor result_partial_encoder(3);
	comp(4) <= x(4) xor result_partial_encoder(4);
	comp(5) <= x(5) xor result_partial_encoder(5);
	comp(6) <= x(6) xor result_partial_encoder(6);
	comp(7) <= x(7) xor result_partial_encoder(7);
	
	pop: popCounter_8bit  PORT MAP (comp(7 downto 0),c_pop(3 downto 0));
	m0_o <= c_pop(2) xor c_pop(3);
	
	m_v <= not (m3_v or m2_v or m1_v);
	v<=m_v;
	m <= (m3_o and m_v) & (m2_o and m_v) & (m1_o and m_v) & (m0_o and m_v);
	
	
END logicFunction;