{  
  mainBar = { 
    layer = "top"; 
    position = "top";
    height = 32;
    output = [ "eDP-1" "HDMI-A-1" ];
    modules-left = [ "wlr/taskbar" ];
    modules-center = [ "tray" ];
    modules-right = [ "battery" "bluetooth" "network" "memory" "temperature" "clock" ];
  };
}

