module YaoEGraph

using Metatheory
using Metatheory.EGraphs
using TermInterface

@metatheory_init

# Custom type APIs for the GATExpr
using YaoHIR

include("term_interface.jl")

end
