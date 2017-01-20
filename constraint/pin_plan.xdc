# on board single-end clock, 100MHz
set_property PACKAGE_PIN E3 [get_ports clk_p]
set_property IOSTANDARD LVCMOS33 [get_ports clk_p]

# Reset active high SW4.1 User button South
set_property IOSTANDARD LVCMOS33 [get_ports rst_top]
set_property PACKAGE_PIN C12 [get_ports rst_top]

# UART Pins
set_property PACKAGE_PIN C4 [get_ports rxd]
set_property IOSTANDARD LVCMOS33 [get_ports rxd]
set_property PACKAGE_PIN D4 [get_ports txd]
set_property IOSTANDARD LVCMOS33 [get_ports txd]
set_property PACKAGE_PIN E5 [get_ports cts]
set_property IOSTANDARD LVCMOS33 [get_ports cts]
set_property PACKAGE_PIN D3 [get_ports rts]
set_property IOSTANDARD LVCMOS33 [get_ports rts]

# SD/SPI Pins
#set_property PACKAGE_PIN D2 [get_ports spi_cs]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_cs]
#set_property PACKAGE_PIN B1 [get_ports spi_sclk]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_sclk]
#set_property PACKAGE_PIN C1 [get_ports spi_mosi]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_mosi]
#set_property PACKAGE_PIN C2 [get_ports spi_miso]
#set_property IOSTANDARD LVCMOS33 [get_ports spi_miso]
#set_property PACKAGE_PIN E2 [get_ports sd_reset]
#set_property IOSTANDARD LVCMOS33 [get_ports sd_reset]
set_property PACKAGE_PIN B1 [get_ports sd_sclk]
set_property IOSTANDARD LVCMOS33 [get_ports sd_sclk]
set_property PACKAGE_PIN E2 [get_ports sd_reset]
set_property IOSTANDARD LVCMOS33 [get_ports sd_reset]
set_property PACKAGE_PIN A1 [get_ports sd_detect]
set_property IOSTANDARD LVCMOS33 [get_ports sd_detect]
set_property PACKAGE_PIN C1 [get_ports sd_cmd]
set_property IOSTANDARD LVCMOS33 [get_ports sd_cmd]
set_property PACKAGE_PIN C2 [get_ports {sd_dat[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sd_dat[0]}]
set_property PACKAGE_PIN E1 [get_ports {sd_dat[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sd_dat[1]}]
set_property PACKAGE_PIN F1 [get_ports {sd_dat[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sd_dat[2]}]
set_property PACKAGE_PIN D2 [get_ports {sd_dat[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sd_dat[3]}]

# Flash/SPI Pins
set_property PACKAGE_PIN L13 [get_ports flash_ss]
set_property IOSTANDARD LVCMOS33 [get_ports flash_ss]
set_property PACKAGE_PIN K17 [get_ports {flash_io[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {flash_io[0]}]
set_property PACKAGE_PIN K18 [get_ports {flash_io[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {flash_io[1]}]
set_property PACKAGE_PIN L14 [get_ports {flash_io[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {flash_io[2]}]
set_property PACKAGE_PIN M14 [get_ports {flash_io[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {flash_io[3]}]
#
set_property PACKAGE_PIN H17 [get_ports {o_led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led[0]}]
set_property PACKAGE_PIN K15 [get_ports {o_led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led[1]}]
set_property PACKAGE_PIN J13 [get_ports {o_led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led[2]}]
set_property PACKAGE_PIN N14 [get_ports {o_led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led[3]}]
set_property PACKAGE_PIN R18 [get_ports {o_led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led[4]}]
set_property PACKAGE_PIN V17 [get_ports {o_led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led[5]}]
set_property PACKAGE_PIN U17 [get_ports {o_led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led[6]}]
set_property PACKAGE_PIN U16 [get_ports {o_led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {o_led[7]}]

create_generated_clock -name msoc/clock_divider0/SD_CLK_O_reg/Q -source [get_pins clk_gen/clk_msoc] -divide_by 2 -add -master_clock clk_msoc_clk_wiz_0 [get_pins msoc/clock_divider0/SD_CLK_O_reg/Q]
