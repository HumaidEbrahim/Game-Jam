if (other.id != id) {
    // Calculate the angle to push this enemy away from the other one
    var angle = point_direction(other.x, other.y, x, y);
    var push_distance = 2; // Tweak as needed

    x += lengthdir_x(push_distance, angle);
    y += lengthdir_y(push_distance, angle);
}