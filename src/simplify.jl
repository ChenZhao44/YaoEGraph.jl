function simplify(c::Chain; rules = naive, mod = @__MODULE__)
	eg = EGraph(c)

	settermtype!(eg, :Chain, 0, Chain)
	settermtype!(eg, :Chain, 1, Chain)
	settermtype!(eg, :Chain, 2, Chain)
	settermtype!(eg, :Gate, 2, Gate)
	settermtype!(eg, :Ctrl, 2, Ctrl)

	saturate!(eg, rules; mod = @__MODULE__)
	c_op = extract!(eg, astsize)
	return postprocess(c_op)
end