----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:12:22 08/24/2024 
-- Design Name: 
-- Module Name:    blink - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity blink is
    port (
        led1 : out std_logic;
        led2 : out std_logic;
        Reset : in std_logic;
        Clock : in std_logic);
end blink;


architecture Behavioral of blink is
    signal togl :  std_logic;
    signal count : integer range 0 to 500000 := 0;
begin
    process (clock)
    begin
        if Reset = '0' then
            count <= 0;
        elsif rising_edge(clock) then
            if (count <= 490000 ) then
                count <= count +1;
            else
                count <= 0;
                togl <= not togl;
            end if;
        end if;
    end process;
    
    led1 <= togl;
    led2 <= not togl;

end Behavioral;

