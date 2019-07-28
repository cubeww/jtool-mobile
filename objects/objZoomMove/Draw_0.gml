/// @desc 绘制缩放级别
scrDrawConfig(c_black, 1, fBold, fa_center, fa_middle);
draw_self();
draw_text(x + 96, y, "Drag\n" + string_format(1 / global.zoomLevelLast, 2, 2) + "X");
