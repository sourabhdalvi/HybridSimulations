struct HybridBiLevelDispatch <: PSI.AbstractHybridFormulation end

# Using this cost struct for Storage as we need a cost for discharging/charging in the 
# hybrid sub-problem objective function but the HybridSystm cost is a MarketBidCost
# so this was the hack I used.
mutable struct HybridStorageCost <: PSY.OperationalCost
    variable::PSY.VariableCost
    fixed::Float64
    charging::Float64
    discharging::Float64
    shortage_cost::Float64
    surplus_cost::Float64
end
