using YaoHIR: X, Y, Z, H

const naive = @theory begin
    Chain(Gate($X, locs), Chain(Gate($X, locs), C)) => C
    Chain(Gate($X, locs), Gate($X, locs)) => Chain()
    Chain(Gate($Y, locs), Chain(Gate($Y, locs), C)) => C
    Chain(Gate($Y, locs), Gate($Y, locs)) => Chain()
    Chain(Gate($Z, locs), Chain(Gate($Z, locs), C)) => C
    Chain(Gate($Z, locs), Gate($Z, locs)) => Chain()
    Chain(Gate($H, locs), Chain(Gate($H, locs), C)) => C
    Chain(Gate($H, locs), Gate($H, locs)) => Chain()
    Chain(Chain(C)) => Chain(C)
    Chain(C, Chain()) => C
end
