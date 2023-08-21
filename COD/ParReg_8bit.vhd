LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ParReg_8bit IS
  PORT (nSet: IN STD_LOGIC;
			nRst: IN STD_LOGIC;
        clk: IN STD_LOGIC;
        D: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        Q: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END ParReg_8bit;

ARCHITECTURE structure OF ParReg_8bit IS
    COMPONENT flipFlopDPET
    PORT (clk, D: IN STD_LOGIC;
          nSet, nRst: IN STD_LOGIC;
          Q, nQ: OUT STD_LOGIC);
  END COMPONENT;
BEGIN
  ff0: flipFlopDPET PORT MAP (clk, D(0), nSet, nRst, Q(0));
  ff1: flipFlopDPET PORT MAP (clk, D(1), nSet, nRst, Q(1));
  ff2: flipFlopDPET PORT MAP (clk, D(2), nSet, nRst, Q(2));
  ff3: flipFlopDPET PORT MAP (clk, D(3), nSet, nRst, Q(3));
  ff4: flipFlopDPET PORT MAP (clk, D(4), nSet, nRst, Q(4));
  ff5: flipFlopDPET PORT MAP (clk, D(5), nSet, nRst, Q(5));
  ff6: flipFlopDPET PORT MAP (clk, D(6), nSet, nRst, Q(6));
  ff7: flipFlopDPET PORT MAP (clk, D(7), nSet, nRst, Q(7));

END structure;
