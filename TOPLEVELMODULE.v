module TOPLEVELMODULE (
                        W_Data , W_En , R_En , wclk , wrst , rclk , rrst,
                        R_Data , Full , Empty
);

//parameters definesion for generic code 
parameter DATADEPTH = 45;
parameter DATAWIDTH = 32;

//input output declaration
input wire [DATAWIDTH-1 : 0] W_Data;
input wire W_En , R_En , wclk , wrst , rclk , rrst;
output wire [DATAWIDTH-1 : 0] R_Data;
output wire Full , Empty;

//internall signals and regs
wire [($clog2(DATADEPTH)) - 1 : 0] rptr , GrayRPtr , SyncGrayRPtr , SyncBinRPtr ,
                                   wptr , GrayWPtr , SyncGrayWPtr , SyncBinWPtr ;
wire    WE_ , aFull  , Dir ,
        RE_ , aEmpty  ;


//representation
dual_port_ram dual_port_ram_instance (.wclken(WE_) , .wclk(wclk) , .waddr(wptr) , .raddr(rptr) , .wdata(W_Data) , .rdata(R_Data));
WE_ WE_instance (.W_En(W_En) , .Full(aFull) , .W_En_(WE_));
RE_ RE_instance (.R_En(R_En) , .Empty(aEmpty) , .R_En_(RE_));
waddr_fullcheck waddr_fullcheck_instance (.w_rst(wrst) , .wclk(wclk) , .afull(aFull) , .WE_(WE_) , .wptr(wptr) , .Full(Full));
raddr_emptycheck raddr_emptycheck_instance ( .r_rst(rrst) , .rclk(rclk) , .aempty(aEmpty) , .RE_(RE_) , .rptr(rptr) , .Empty(Empty) );
comparator full_comparator ( .B_R_address(SyncBinRPtr) , .B_W_address(wptr) , .direction(Dir) , .aempty( ) , .afull(aFull) );
comparator empty_comparator ( .B_R_address(rptr) , .B_W_address(SyncBinWPtr) , .direction(Dir) , .aempty(aEmpty) , .afull() );
//direction wd_direction ( .B_R_address(SyncGrayRPtr) , .B_W_address(GrayWPtr) , .w_rst(wrst), .direction(WDir) );
//direction rd_direction ( .B_R_address(GrayRPtr) , .B_W_address(SyncGrayWPtr) , .w_rst(rrst), .direction(RDir) );
direction direction_instance (.G_R_address(GrayRPtr) , .G_W_address(GrayWPtr) , .w_rst(wrst), .direction(Dir) );
G2B G2B11 (.gray_data_in(SyncGrayRPtr) , .bin_data_out(SyncBinRPtr));
G2B G2B22 (.gray_data_in(SyncGrayWPtr) , .bin_data_out(SyncBinWPtr));
B2G B2G11 (.clk_in(rclk) , .rst(rrst) , .bin_data_in(rptr) , .gray_data_out(GrayRPtr));
B2G B2G22 (.clk_in(wclk) , .rst(wrst) , .bin_data_in(wptr) , .gray_data_out(GrayWPtr));
double_synch double_synch11 (.clk_in(wclk) , .rst(wrst) , .data_in(GrayRPtr) , .data_out(SyncGrayRPtr));
double_synch double_synch22 (.clk_in(rclk) , .rst(rrst) , .data_in(GrayWPtr) , .data_out(SyncGrayWPtr));


endmodule