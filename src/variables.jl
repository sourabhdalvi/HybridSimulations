### Dual variable defination
const POWER_OUT_BALANCE_DUAL = "δ_Pout_balance"
const ENERGY_BALANCE_DUAL = "δ_E_balance"
const SUBCOMPONENT_ACTIVE_POWER_IN_LB_DUAL = "δ_Pin_lb"
const SUBCOMPONENT_ACTIVE_POWER_IN_UB_DUAL = "δ_Pin_ub"
const SUBCOMPONENT_ACTIVE_POWER_OUT_LB_DUAL = "δ_Pout_lb"
const SUBCOMPONENT_ACTIVE_POWER_OUT_UB_DUAL = "δ_Pout_ub"
const SUBCOMPONENT_ENERGY_LB_DUAL = "δ_E_lb"
const SUBCOMPONENT_ENERGY_UB_DUAL = "δ_E_ub"
const SUBCOMPONENT_ACTIVE_POWER_LB_DUAL = "δ_P_lb"
const SUBCOMPONENT_ACTIVE_POWER_UB_DUAL = "δ_P_ub"
const SUBCOMPONENT_REACTIVE_POWER_LB_DUAL = "δ_Q_lb"
const SUBCOMPONENT_REACTIVE_POWER_UB_DUAL = "δ_Q_ub"
const POWER_OUT_BALANCE_SLACK = "S_out"
const POWER_OUT_BALANCE_SLACK_DUAL = "δ_S_out"


struct SubComponentActivePowerLBDualVariable <: PSI.SubComponentVariableType end
struct SubComponentActivePowerUBDualVariable <: PSI.SubComponentVariableType end

struct SubComponentReactivePowerLBDualVariable <: PSI.SubComponentVariableType end
struct SubComponentReactivePowerUBDualVariable <: PSI.SubComponentVariableType end

struct SubComponentActivePowerInLBDualVariable <: PSI.SubComponentVariableType end
struct SubComponentActivePowerInUBDualVariable <: PSI.SubComponentVariableType end

struct SubComponentActivePowerOutLBDualVariable <: PSI.SubComponentVariableType end
struct SubComponentActivePowerOutUBDualVariable <: PSI.SubComponentVariableType end

struct SubComponentEnergyLBDualVariable <: PSI.SubComponentVariableType end
struct SubComponentEnergyUBDualVariable <: PSI.SubComponentVariableType end

struct PowerOutBalanceDualVariable <: PSI.VariableType end
struct EnergyBalanceDualVariable <: PSI.VariableType end

struct PowerOutBalanceSlackVariable <: PSI.VariableType end
struct PowerOutBalanceSlackDualVariable <: PSI.VariableType end


PSI.make_variable_name(::Type{SubComponentActivePowerLBDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_P_lb")
PSI.make_variable_name(::Type{SubComponentActivePowerUBDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_P_ub")
PSI.make_variable_name(::Type{SubComponentReactivePowerLBDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_Q_lb")
PSI.make_variable_name(::Type{SubComponentReactivePowerUBDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_Q_lb")
PSI.make_variable_name(::Type{SubComponentActivePowerInLBDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_Pin_lb")
PSI.make_variable_name(::Type{SubComponentActivePowerInUBDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_Pin_ub")
PSI.make_variable_name(::Type{SubComponentActivePowerOutLBDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_Pout_lb")
PSI.make_variable_name(::Type{SubComponentActivePowerOutUBDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_Pout_ub")
PSI.make_variable_name(::Type{SubComponentEnergyLBDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_E_lb")
PSI.make_variable_name(::Type{SubComponentEnergyUBDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_E_ub")

PSI.make_variable_name(::Type{PowerOutBalanceDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_Pout_balance")
PSI.make_variable_name(::Type{EnergyBalanceDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_E_balance")
PSI.make_variable_name(::Type{PowerOutBalanceSlackVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "S_out")
PSI.make_variable_name(::Type{PowerOutBalanceSlackDualVariable}, ::Type{T}) where {T <: PSY.StaticInjection} = PSI.encode_symbol(T, "δ_S_out")
