

module tang_nano_9k_uart_interface_%dfifo_depth_%dIO_%dacc_data_width
(
  input clk_27mhz,
  input button_s1,
  input uart_rx,
  output [6-1:0] led,
  output uart_tx
);

  // Reset signal control
  wire sw_rst;
  wire rst;
  assign rst = |{ sw_rst, ~button_s1 };

  // Start signal control
  wire start;

  // rx signals and controls
  wire rx_bsy;

  // tx signals and controls
  wire tx_bsy;

  // LED assigns. In this board the leds are activated by 0 signal
  // led[0] = rx
  // led[1] = rx_bsy
  // led[2] = tx
  // led[3] = tx_bsy
  // led[4] = rst
  // led[5] = start
  assign led[0] = uart_rx;
  assign led[1] = ~rx_bsy;
  assign led[2] = uart_tx;
  assign led[3] = ~tx_bsy;
  assign led[4] = ~rst;
  assign led[5] = ~start;

  // Input data protocol controller

  // Input data protocol controller

endmodule

