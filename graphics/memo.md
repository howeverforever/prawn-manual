# 畫圖方法

## fill 填滿
## stroke 塗邊

----

# 圖形
## line [p1.x, p1.y] [p2.x, p2.y]
p1, p2是兩端點

## rectangle [p.x, p.y] width height
p是左上角的點，width是x方向的長度、height是y方向的長度

## curve [x1, y1], [x2, y2], :bounds => [[x3,y3],[x4,y4]]
以(x1, y1), (x2, y2)為兩端點畫貝賽爾弧，bound設定為(x3, y3), (x4, y4)

## move_to x,y
錨點直接移動到x, y上

## line_to x,y
錨點滑到x, y上，路徑以直線畫

## curve_to [x,y], :bounds => [[x1,y1],[x2,y2]]
錨點滑到x,y上，路徑以(x1,y1), (x2,y2)為bound畫貝賽爾弧線

## vertical_line y1, y2, :at => x
相當於line [x, y1], [x, y2]

## horizontal_line x1, x2, :at => y
相當於line [x1, y], [x2, y]

## rounded_rectangle [p.x, p.y], width, height, radius
相當於rectangle，在於角落是半徑為radius的圓弧
