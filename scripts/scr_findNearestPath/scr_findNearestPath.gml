function find_nearest_path(){
//scr_nearest_path_point(path, x, y)

/*\
| | Return the point on the given path, closest to the given coordinates (x, y).
| | The result is an array of length 2 of which the first element corresponds with the x coordinate
| | and the second element corresponds with the y coordinate.
| |
|-| This script assumes that the given path is not smooth, but exists of a finite amount of line segments only.
\*/

// rx = result x, what is the x coordinate of the current result
// ry = result y, what is the y coordinate of the current result
// d = distance, from (x, y) to the current result
// n = number, of points in the given path
var rx = path_get_point_x(argument0, 0);
var ry = path_get_point_y(argument0, 0);
var d = point_distance(rx, ry, argument1, argument2);
var n = path_get_number(argument0);

// x1 is the x coordinate of the previous path point
// y1 is the y coordinate of the previous path point
// x2 is the x coordinate of the current path point
// y2 is the y coordinate of the current path point
// td = temporary distance, is a variable that has multiple meanings
// p is the result of a dot product
// tx is the x coordinate of the point on the open line segment from (x1, y1) to (x2, x2)
//     if such a closest point exists and it is x2 otherwise
// ty is the y coordinate of the point on the open line segment from (x1, y1) to (x2, x2)]
//     if such a closest point exists and it is y2 otherwise
var x1, y1, x2 = rx, y2 = ry, td, p, tx, ty;
// Cycle through all the path points in order and find the closest point
for(var i = 1; i < n; i++) {
    x1 = x2;
    y1 = y2;
    x2 = path_get_point_x(argument0, i);
    y2 = path_get_point_y(argument0, i);
    // td holds the distance between (x1, y1) and (x2, y2) here
    td = point_distance(x1, y1, x2, y2);
    // Calculating the dot product of the vector from (x1, y1) to (x2, y2) and from (x1, y1) to (x, y)
    // and divide it by the size of the former vector
    // (x1, y1) + p * ((x, y) - (x1, y1)) is the projection of (x, y) onto the line through (x1, y1) and (x2, y2)
    // If this point lies on the half open line segment, then it is the closest point on the half open line segment to (x, y)
    p = ((x2 - x1) * (argument1 - x1) + (y2 - y1) * (argument2 - y1)) / td;
    // If the point lies on the open line segment
    if p > 0 && p < td {
        // Calculate the exact coordinates of this point
        tx = x1 + (x2 - x1) * p;
        ty = y1 + (y2 - y1) * p;
    } else {
        // Else, let tx and ty be x2 and y2
        tx = x2;
        ty = y2;
    }
    // td holds the distance between (x, y) and (tx, ty) here
    td = point_distance(tx, ty, argument1, argument2);
    // If the distance from (x, y) to (tx, ty) is better than the current result (rx, ry),
    // then update the results
    if td < d {
        d = td;
        rx = tx;
        ry = ty;
    }
}

// Return the results as array
var t;
t[1] = ry;
t[0] = rx;

return t;
}