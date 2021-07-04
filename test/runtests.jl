using YaoEGraph
using YaoHIR, YaoLocations
using YaoHIR: X, Y, Z, H
circ = Chain(Gate(X, Locations(1)), Gate(X, Locations(1)), Gate(Y, Locations(2)))
H2 = Chain(Gate(H, Locations(1)), Gate(H, Locations(1)))
simplify!(circ)
simplify!(H2)