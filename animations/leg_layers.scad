include <../functions.scad>;

square_top=30;
shelves = [0, 0];
// 0 = round
// 1 = square
// 2 = leg_supports (square)
shelf_count = len(shelves);
leg_max=8;
leg_min=1;
leg_layers=leg_min+leg_max + floor(sin($t*180+180)*leg_max);
leg_count = 4; 
leg_height = 5.5; // bottom shelf
top_height = 18; //top to ground
min_leg = 2; //smallest size a leg can be
plywood = 0.75;
gap = 1/64;
gapp = gap*2;
pad = 0.1;
padd = pad*2;
leg_thick=plywood*leg_layers;

leg_support=4;

tree=2;

top = sqrt(2*pow((square_top/2),2))*2-leg_thick/2-gap; //diameter
bottom = top-6; //diameter
leg_angle = atan((top-bottom)/2/top_height);
echo("top is", top);

$fn=120;


// RENDER gif
module demo() {
    assemble();
}

demo();
