%Facts
vehicle(car).
vehicle(boat).
vehicle(airplane).
land(car).
fly(airplane).
sail(boat).
fuel_efficient(hybrid).
zero_emission(electric).
is_a(hybrid_car,car).
is_a(aqua,hybrid_car).
is_a(electric_car,car).
is_a(leaf,electric_car).
is_a(sail_boat,boat).
is_a(jet,airplane).

%Rules
fuel(X):-write('This vehicle does not require fuel therefore :'),is_a(X,boat),fail.
vehicle(X):-fuel(X).
vehicle(boat):-write('This vehicle does not travel on land therefore :'),sail(X),fail.
zero_emission(X):-write('This vehicle does not require fuel therefore :'),fuel(X),fail.
wheels(X):-fly(X);land(X).
fly(X):-is_a(X,airplane).
fly(X):-is_a(X,airplane);write('This vehicle does not fly therefore :'),fail.
low_emission(X):-is_a(X,hybrid_car),fuel_efficient(hybrid).
no_emission(X):-is_a(X,electric_car),zero_emission(electric).
