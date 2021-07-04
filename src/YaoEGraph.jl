module YaoEGraph

export simplify!

using Metatheory
using Metatheory.EGraphs
using TermInterface

@metatheory_init

# Custom type APIs for the GATExpr
using YaoHIR

include("term_interface.jl")
include("rules.jl")
include("simplify.jl")

end
