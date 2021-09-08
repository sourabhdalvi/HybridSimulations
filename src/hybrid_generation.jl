PSI.get_subcomponent_var_types(::SubComponentActivePowerLBDualVariable) = [PSY.RenewableGen, PSY.ThermalGen, PSY.ElectricLoad]
PSI.get_subcomponent_var_types(::SubComponentActivePowerUBDualVariable) = [PSY.RenewableGen, PSY.ThermalGen, PSY.ElectricLoad]
PSI.get_subcomponent_var_types(::SubComponentReactivePowerLBDualVariable) = [PSY.RenewableGen, PSY.Storage, PSY.ThermalGen, PSY.ElectricLoad]
PSI.get_subcomponent_var_types(::SubComponentReactivePowerUBDualVariable) = [PSY.RenewableGen, PSY.Storage, PSY.ThermalGen, PSY.ElectricLoad]
PSI.get_subcomponent_var_types(::SubComponentActivePowerInLBDualVariable) = [PSY.Storage]
PSI.get_subcomponent_var_types(::SubComponentActivePowerInUBDualVariable) = [PSY.Storage]
PSI.get_subcomponent_var_types(::SubComponentActivePowerOutLBDualVariable) = [PSY.Storage]
PSI.get_subcomponent_var_types(::SubComponentActivePowerOutUBDualVariable) = [PSY.Storage]
PSI.get_subcomponent_var_types(::SubComponentEnergyLBDualVariable) = [PSY.Storage]
PSI.get_subcomponent_var_types(::SubComponentEnergyUBDualVariable) = [PSY.Storage]


########################### SubComponentActivePowerLBDualVariable, HybridSystem #################################

PSI.get_variable_binary(::SubComponentActivePowerLBDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::SubComponentActivePowerLBDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0
PSI.get_variable_lower_bound(::SubComponentActivePowerLBDualVariable, d::PSY.HybridSystem, _) = 0.0

########################### SubComponentActivePowerUBDualVariable, HybridSystem #################################

PSI.get_variable_binary(::SubComponentActivePowerUBDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::SubComponentActivePowerUBDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0
PSI.get_variable_lower_bound(::SubComponentActivePowerUBDualVariable, d::PSY.HybridSystem, _) = 0.0

########################### SubComponentReactivePowerLBDualVariable, HybridSystem #################################

PSI.get_variable_binary(::SubComponentReactivePowerLBDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::SubComponentReactivePowerLBDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0
PSI.get_variable_lower_bound(::SubComponentReactivePowerLBDualVariable, d::PSY.HybridSystem, _) = 0.0

########################### SubComponentReactivePowerUBDualVariable, HybridSystem #################################

PSI.get_variable_binary(::SubComponentReactivePowerUBDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::SubComponentReactivePowerUBDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0
PSI.get_variable_lower_bound(::SubComponentReactivePowerUBDualVariable, d::PSY.HybridSystem, _) = 0.0

########################### SubComponentActivePowerInLBDualVariable, HybridSystem #################################

PSI.get_variable_binary(::SubComponentActivePowerInLBDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::SubComponentActivePowerInLBDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0
PSI.get_variable_lower_bound(::SubComponentActivePowerInLBDualVariable, d::PSY.HybridSystem, _) = 0.0

########################### SubComponentActivePowerInUBDualVariable, HybridSystem #################################

PSI.get_variable_binary(::SubComponentActivePowerInUBDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::SubComponentActivePowerInUBDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0
PSI.get_variable_lower_bound(::SubComponentActivePowerInUBDualVariable, d::PSY.HybridSystem, _) = 0.0

########################### SubComponentActivePowerOutLBDualVariable, HybridSystem #################################

PSI.get_variable_binary(::SubComponentActivePowerOutLBDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::SubComponentActivePowerOutLBDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0
PSI.get_variable_lower_bound(::SubComponentActivePowerOutLBDualVariable, d::PSY.HybridSystem, _) = 0.0

########################### SubComponentActivePowerOutUBDualVariable, HybridSystem #################################

PSI.get_variable_binary(::SubComponentActivePowerOutUBDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::SubComponentActivePowerOutUBDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0
PSI.get_variable_lower_bound(::SubComponentActivePowerOutUBDualVariable, d::PSY.HybridSystem, _) = 0.0

########################### SubComponentEnergyLBDualVariable, HybridSystem #################################

PSI.get_variable_binary(::SubComponentEnergyLBDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::SubComponentEnergyLBDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0
PSI.get_variable_lower_bound(::SubComponentEnergyLBDualVariable, d::PSY.HybridSystem, _) = 0.0

########################### SubComponentEnergyUBDualVariable, HybridSystem #################################

PSI.get_variable_binary(::SubComponentEnergyUBDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::SubComponentEnergyUBDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0
PSI.get_variable_lower_bound(::SubComponentEnergyUBDualVariable, d::PSY.HybridSystem, _) = 0.0

########################### PowerOutBalanceDualVariable, HybridSystem #################################

PSI.get_variable_binary(::PowerOutBalanceDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::PowerOutBalanceDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0

########################### EnergyBalanceDualVariable, HybridSystem #################################

PSI.get_variable_binary(::EnergyBalanceDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::EnergyBalanceDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0

########################### PowerOutBalanceSlackVariable, HybridSystem #################################

PSI.get_variable_binary(::PowerOutBalanceSlackVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::PowerOutBalanceSlackVariable, ::Type{PSY.HybridSystem}, _) = 1.0
PSI.get_variable_lower_bound(::PowerOutBalanceSlackVariable, d::PSY.HybridSystem, _) = 0.0

########################### PowerOutBalanceSlackDualVariable, HybridSystem #################################

PSI.get_variable_binary(::PowerOutBalanceSlackDualVariable, ::Type{PSY.HybridSystem}, _) = false
PSI.get_variable_sign(::PowerOutBalanceSlackDualVariable, ::Type{PSY.HybridSystem}, _) = 1.0
PSI.get_variable_lower_bound(::PowerOutBalanceSlackDualVariable, d::PSY.HybridSystem, _) = 0.0



################################# Hybrid complementary constraint #################################

function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{PowerBalanceReservations},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    names = [PSY.get_name(d) for d in devices if !isnothing(PSY.get_storage(d))]
    pin_var = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ACTIVE_POWER_IN, H))
    pout_var = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ACTIVE_POWER_OUT, H))
    
    cons_name = PSI.make_constraint_name(POWER_BALANCE_RESERVATIONS, H)
    constraint = PSI.add_cons_container!(psi_container, cons_name, names, time_steps)
    for d in devices, t in time_steps
        name = PSY.get_name(d)
        idx = PSI.get_index(name, t, PSY.Storage)
        constraint[name, t] = JuMP.@constraint(psi_container.JuMPmodel,
            [pin_var[idx], pout_var[idx]] in JuMP.SOS1()
        )
    end
    return
end

function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{SubComponentActivePowerInComplements},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    names = [PSY.get_name(d) for d in devices if !isnothing(PSY.get_storage(d))]
    pin_var = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ACTIVE_POWER_IN, H))
    dual_lb = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_IN_LB_DUAL, H))
    dual_ub = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_IN_UB_DUAL, H))
    
    lb_name = PSI.middle_rename(PSI.make_constraint_name(SUBCOMPONENT_ACTIVE_POWER_IN_COMPLEMENTS, H), PSI.PSI_NAME_DELIMITER, "lb")
    ub_name = PSI.middle_rename(PSI.make_constraint_name(SUBCOMPONENT_ACTIVE_POWER_IN_COMPLEMENTS, H), PSI.PSI_NAME_DELIMITER, "ub")
    
    constraint_lb = PSI.add_cons_container!(psi_container, lb_name, names, time_steps)
    constraint_ub = PSI.add_cons_container!(psi_container, ub_name, names, time_steps)
    
    for d in devices, t in time_steps
        if !isnothing(PSY.get_storage(d))
            name = PSY.get_name(d)
            limits = PSY.get_input_active_power_limits(PSY.get_storage(d))
            idx = PSI.get_index(name, t, PSY.Storage)
            constraint_lb[name, t] = JuMP.@constraint(psi_container.JuMPmodel,
                [(limits.min - pin_var[idx]), dual_lb[idx]] in JuMP.SOS1()
            )
            constraint_ub[name, t] = JuMP.@constraint(psi_container.JuMPmodel,
                [(pin_var[idx] -limits.max) , dual_ub[idx]] in JuMP.SOS1()
            )
        end
    end
    return
end

function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{SubComponentActivePowerOutComplements},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    names = [PSY.get_name(d) for d in devices if !isnothing(PSY.get_storage(d))]
    pout_var = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ACTIVE_POWER_OUT, H))
    dual_lb = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_OUT_LB_DUAL, H))
    dual_ub = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_OUT_UB_DUAL, H))
    
    lb_name = PSI.middle_rename(PSI.make_constraint_name(SUBCOMPONENT_ACTIVE_POWER_OUT_COMPLEMENTS, H), PSI.PSI_NAME_DELIMITER, "lb")
    ub_name = PSI.middle_rename(PSI.make_constraint_name(SUBCOMPONENT_ACTIVE_POWER_OUT_COMPLEMENTS, H), PSI.PSI_NAME_DELIMITER, "ub")
    
    constraint_lb = PSI.add_cons_container!(psi_container, lb_name, names, time_steps)
    constraint_ub = PSI.add_cons_container!(psi_container, ub_name, names, time_steps)
    
    for d in devices, t in time_steps
        if !isnothing(PSY.get_storage(d))
            name = PSY.get_name(d)
            limits = PSY.get_output_active_power_limits(PSY.get_storage(d))
            idx = PSI.get_index(name, t, PSY.Storage)
            constraint_lb[name, t] = JuMP.@constraint(psi_container.JuMPmodel, 
                [(limits.min - pout_var[idx]), dual_lb[idx]] in JuMP.SOS1()
            )
            constraint_ub[name, t] = JuMP.@constraint(psi_container.JuMPmodel, 
                [(pout_var[idx] - limits.max) , dual_ub[idx]] in JuMP.SOS1()
            )
        end
    end
    return
end

function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{SubComponentEnergyComplements},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    names = [PSY.get_name(d) for d in devices if !isnothing(PSY.get_storage(d))]
    e_var = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ENERGY, H))
    dual_lb = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ENERGY_LB_DUAL, H))
    dual_ub = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ENERGY_UB_DUAL, H))
    
    lb_name = PSI.middle_rename(PSI.make_constraint_name(SUBCOMPONENT_ENERGY_COMPLEMENTS, H), PSI.PSI_NAME_DELIMITER, "lb")
    ub_name = PSI.middle_rename(PSI.make_constraint_name(SUBCOMPONENT_ENERGY_COMPLEMENTS, H), PSI.PSI_NAME_DELIMITER, "ub")
    
    constraint_lb = PSI.add_cons_container!(psi_container, lb_name, names, time_steps)
    constraint_ub = PSI.add_cons_container!(psi_container, ub_name, names, time_steps)
    
    for d in devices, t in time_steps
        if !isnothing(PSY.get_storage(d))
            name = PSY.get_name(d)
            idx = PSI.get_index(name, t, PSY.Storage)
            limits = PSY.get_state_of_charge_limits(PSY.get_storage(d))
            constraint_lb[name, t] = JuMP.@constraint(psi_container.JuMPmodel, 
                [(limits.min - e_var[idx]), dual_lb[idx]] in JuMP.SOS1()
            )
            constraint_ub[name, t] = JuMP.@constraint(psi_container.JuMPmodel, 
                [(e_var[idx] - limits.max), dual_ub[idx]] in JuMP.SOS1()
            )
        end
    end
    return
end

function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{RenewableComponentActivePowerComplements},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    names = [PSY.get_name(d) for d in devices if !isnothing(PSY.get_renewable_unit(d))]
    p_var = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ACTIVE_POWER, H))
    dual_lb = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_LB_DUAL, H))
    dual_ub = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_UB_DUAL, H))
    
    lb_name = PSI.middle_rename(PSI.make_constraint_name(RENEWABLE_COMPONENT_ACTIVE_POWER_COMPLEMENTS, H), PSI.PSI_NAME_DELIMITER, "lb")
    ub_name = PSI.middle_rename(PSI.make_constraint_name(RENEWABLE_COMPONENT_ACTIVE_POWER_COMPLEMENTS, H), PSI.PSI_NAME_DELIMITER, "ub")
    
    constraint_lb = PSI.add_cons_container!(psi_container, lb_name, names, time_steps)
    constraint_ub = PSI.add_cons_container!(psi_container, ub_name, names, time_steps)
    
    for d in devices, t in time_steps
        if !isnothing(PSY.get_renewable_unit(d))
            name = PSY.get_name(d)
            idx = PSI.get_index(name, t, PSY.RenewableGen)

            multiplier =  PSY.get_max_active_power(PSY.get_renewable_unit(d))
            param = PSI.get_parameter_array(PSI.get_parameter_container(psi_container, :P__max_active_power__HybridSystem_max_active_power))

            constraint_lb[name, t] = JuMP.@constraint(psi_container.JuMPmodel, 
                [-p_var[idx], dual_lb[idx]] in JuMP.SOS1()
            )
            var = JuMP.@variable(psi_container.JuMPmodel, base_name = "re_ts_{$(name), $(t)}")
            JuMP.@constraint(psi_container.JuMPmodel, var == param[name, t] )

            constraint_ub[name, t] = JuMP.@constraint(psi_container.JuMPmodel,
                [(p_var[idx] - var), dual_ub[idx]] in JuMP.SOS1()
            )
        end
    end
    return
end


function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{PowerOutBalanceSlackComplements},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    names = [PSY.get_name(d) for d in devices ]
    var = PSI.get_variable(psi_container, PSI.make_variable_name(POWER_OUT_BALANCE_SLACK, H))
    dual = PSI.get_variable(psi_container, PSI.make_variable_name(POWER_OUT_BALANCE_SLACK_DUAL, H))
    
    constraint = PSI.add_cons_container!(psi_container, PSI.make_constraint_name(POWER_OUT_BALANCE_SLACK_COMPLEMENTS, H), names, time_steps)
    
    for d in devices, t in time_steps
        name = PSY.get_name(d)
        constraint[name, t] = JuMP.@constraint(psi_container.JuMPmodel, 
            [-var[name, t], dual[name, t]] in JuMP.SOS1()
        )
    end
    return
end

################################# Hybrid Stationary constraint #################################

function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{SubComponentActivePowerInStationary},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    names = [PSY.get_name(d) for d in devices if !isnothing(PSY.get_storage(d))]
    resolution = PSI.model_resolution(psi_container)
    fraction_of_hour = Dates.value(Dates.Minute(resolution)) / PSI.MINUTES_IN_HOUR
    δ_power_balance = PSI.get_variable(psi_container, PSI.make_variable_name(POWER_OUT_BALANCE_DUAL, H))
    δ_energy_balance = PSI.get_variable(psi_container, PSI.make_variable_name(ENERGY_BALANCE_DUAL, H))
    δ_pin_lb = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_IN_LB_DUAL, H))
    δ_pin_ub = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_IN_UB_DUAL, H))

    cons_name = PSI.make_constraint_name(SUBCOMPONENT_ACTIVE_POWER_IN_STATIONARY, H)
    constraint = PSI.add_cons_container!(psi_container, cons_name, names, time_steps)
    
    for d in devices, t in time_steps
        if !isnothing(PSY.get_storage(d))
            name = PSY.get_name(d)
            cost = PSY.get_operation_cost(PSY.get_storage(d))
            idx = PSI.get_index(name, t, PSY.Storage)
            efficiency = PSY.get_efficiency(PSY.get_storage(d))
            constraint[name, t] = JuMP.@constraint(psi_container.JuMPmodel, 
              δ_power_balance[name, t] - (δ_energy_balance[name, t]*efficiency.in*fraction_of_hour) 
                + δ_pin_lb[idx] - δ_pin_ub[idx] == 0.0
            )
        end
    end
    return
end

function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{SubComponentActivePowerOutStationary},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    resolution = PSI.model_resolution(psi_container)
    fraction_of_hour = Dates.value(Dates.Minute(resolution)) / PSI.MINUTES_IN_HOUR
    names = [PSY.get_name(d) for d in devices if !isnothing(PSY.get_storage(d))]

    δ_power_balance = PSI.get_variable(psi_container, PSI.make_variable_name(POWER_OUT_BALANCE_DUAL, H))
    δ_energy_balance = PSI.get_variable(psi_container, PSI.make_variable_name(ENERGY_BALANCE_DUAL, H))
    δ_pout_lb = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_OUT_LB_DUAL, H))
    δ_pout_ub = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_OUT_UB_DUAL, H))
    
    cons_name = PSI.make_constraint_name(SUBCOMPONENT_ACTIVE_POWER_OUT_STATIONARY, H)
    constraint = PSI.add_cons_container!(psi_container, cons_name, names, time_steps)
    
    for d in devices, t in time_steps
        if !isnothing(PSY.get_storage(d))
            name = PSY.get_name(d)
            cost = PSY.get_operation_cost(PSY.get_storage(d))
            efficiency = PSY.get_efficiency(PSY.get_storage(d))
            idx = PSI.get_index(name, t, PSY.Storage)
            constraint[name, t] = JuMP.@constraint(psi_container.JuMPmodel, 
                cost.discharging - δ_power_balance[name, t] + (δ_energy_balance[name, t]*fraction_of_hour/efficiency.out)
                + δ_pout_lb[idx] - δ_pout_ub[idx] == 0.0
                )
        end
    end
    return
end

function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{RenewableComponentActivePowerStationary},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    names = [PSY.get_name(d) for d in devices if !isnothing(PSY.get_renewable_unit(d))]

    δ_power_balance = PSI.get_variable(psi_container, PSI.make_variable_name(POWER_OUT_BALANCE_DUAL, H))
    δ_p_lb = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_LB_DUAL, H))
    δ_p_ub = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_UB_DUAL, H))
    
    cons_name = PSI.make_constraint_name(RENEWABLE_COMPONENT_ACTIVE_POWER_STATIONARY, H)
    constraint = PSI.add_cons_container!(psi_container, cons_name, names, time_steps)
    
    for d in devices, t in time_steps
        if !isnothing(PSY.get_renewable_unit(d))
            name = PSY.get_name(d)
            idx = PSI.get_index(name, t, PSY.RenewableGen)
            constraint[name, t] = JuMP.@constraint(psi_container.JuMPmodel, 
              - δ_power_balance[name, t] + δ_p_lb[idx] - δ_p_ub[idx]  == 0.0
            )
        end
    end
    return
end


function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{SubComponentEnergyStationary},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    names = [PSY.get_name(d) for d in devices if !isnothing(PSY.get_storage(d))]

    δ_energy_balance = PSI.get_variable(psi_container, PSI.make_variable_name(ENERGY_BALANCE_DUAL, H))
    δ_e_lb = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ENERGY_LB_DUAL, H))
    δ_e_ub = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ENERGY_UB_DUAL, H))
    
    cons_name = PSI.make_constraint_name(SUBCOMPONENT_ENERGY_STATIONARY, H)
    constraint = PSI.add_cons_container!(psi_container, cons_name, names, time_steps)
    
    for d in devices
        if !isnothing(PSY.get_storage(d))
            name = PSY.get_name(d)
            for t in time_steps[1:end-1]
                idx = PSI.get_index(name, t, PSY.Storage)
                constraint[name, t] = JuMP.@constraint(psi_container.JuMPmodel, 
                   - δ_energy_balance[name, t+1] + δ_energy_balance[name, t] + δ_e_lb[idx] - δ_e_ub[idx] == 0
                )
            end
            T = time_steps[end]
            idx = PSI.get_index(name, T, PSY.Storage)
            constraint[name, T] = JuMP.@constraint(psi_container.JuMPmodel, 
                δ_energy_balance[name, T] + δ_e_lb[idx] - δ_e_ub[idx] == 0
            )
        end
    end
    return
end

function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{ActivePowerOutSlackStationary},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    names = [PSY.get_name(d) for d in devices]

    δ_pout_balance = PSI.get_variable(psi_container, PSI.make_variable_name(POWER_OUT_BALANCE_DUAL, H))
    δ_sout = PSI.get_variable(psi_container, PSI.make_variable_name(POWER_OUT_BALANCE_SLACK_DUAL, H))
    sout_var = PSI.get_variable(psi_container, PSI.make_variable_name(POWER_OUT_BALANCE_SLACK, H))
    cons_name = PSI.make_constraint_name(ACTIVE_POWER_OUT_SLACK_STATIONARY, H)
    constraint = PSI.add_cons_container!(psi_container, cons_name, names, time_steps)
    
    for d in devices
        name = PSY.get_name(d)
        cost = PSY.get_operation_cost(PSY.get_storage(d)).shortage_cost
        
        for t in time_steps
            idx = PSI.get_index(name, t, PSY.Storage)
            constraint[name, t] = JuMP.@constraint(psi_container.JuMPmodel, 
                - δ_pout_balance[name, t] + δ_sout[name, t]  ==  cost
            )
        end
    end
    return
end

################################# Hybrid Power Balance Constraints with Slacks #################################

function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{PowerBalanceOutConstriant},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    names = [PSY.get_name(d) for d in devices]

    pout_var = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.ACTIVE_POWER_OUT, H))
    pout_batt = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ACTIVE_POWER_OUT, H))
    pout_sub = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ACTIVE_POWER, H))
    sout_var = PSI.get_variable(psi_container, PSI.make_variable_name(POWER_OUT_BALANCE_SLACK, H))
    pin_var_batt = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ACTIVE_POWER_IN, H))
    
    cons_name = PSI.make_constraint_name(PSI.POWER_BALANCE_OUTFLOW, H)
    constraint = PSI.add_cons_container!(psi_container, cons_name, names, time_steps)
    
    for d in devices, t in time_steps
        name = PSY.get_name(d)
        idx = PSI.get_index(name, t, PSY.Storage)
        idx_re = PSI.get_index(name, t, PSY.RenewableGen)
        constraint[name, t] = JuMP.@constraint(psi_container.JuMPmodel, 
            pout_batt[idx] + sout_var[name, t]  + pout_sub[idx_re] - pin_var_batt[idx]  == pout_var[name, t] 
        )
    end

    return
end

################################# Hybrid Power Balance Constraints with Slacks #################################
abstract type StrongDualityConstraint <: PSI.ConstraintType end
const STRONG_DUALITY_CONSTRAINT = "strong_duality_constraint"

function PSI.add_constraints!(
    psi_container::PSI.OptimizationContainer,
    ::Type{StrongDualityConstraint},
    devices::IS.FlattenIteratorWrapper{H},
    ::PSI.DeviceModel{H, D},
    ::Type{S},
    feedforward::Union{Nothing, PSI.AbstractAffectFeedForward},
) where {H <: PSY.HybridSystem, D <: PSI.AbstractHybridFormulation, S <: PM.AbstractPowerModel}

    time_steps = PSI.model_time_steps(psi_container)
    names = [PSY.get_name(d) for d in devices]

    # primal variables
    pout_sub = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ACTIVE_POWER, H))
    pout_batt = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ACTIVE_POWER_OUT, H))
    pin_batt = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ACTIVE_POWER_IN, H))
    sout_var = PSI.get_variable(psi_container, PSI.make_variable_name(POWER_OUT_BALANCE_SLACK, H))
    e_var = PSI.get_variable(psi_container, PSI.make_variable_name(PSI.SUBCOMPONENT_ENERGY, H))
    
    # daul variables
    δ_pout_balance = PSI.get_variable(psi_container, PSI.make_variable_name(POWER_OUT_BALANCE_DUAL, H))
    δ_p_lb = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_LB_DUAL, H))
    δ_p_ub = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_UB_DUAL, H))
    δ_pin_lb = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_IN_LB_DUAL, H))
    δ_pin_ub = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_IN_UB_DUAL, H))
    δ_pout_lb = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_OUT_LB_DUAL, H))
    δ_pout_ub = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ACTIVE_POWER_OUT_UB_DUAL, H))
    δ_e_lb = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ENERGY_LB_DUAL, H))
    δ_e_ub = PSI.get_variable(psi_container, PSI.make_variable_name(SUBCOMPONENT_ENERGY_UB_DUAL, H))

    cons_name = PSI.make_constraint_name(STRONG_DUALITY_CONSTRAINT, H)
    constraint = PSI.add_cons_container!(psi_container, cons_name, [1])
    
    expr_lhs = JuMP.AffExpr(0.0)
    expr_rhs = JuMP.AffExpr(0.0)
    for d in devices, t in time_steps
        name = PSY.get_name(d)
        if !isnothing(PSY.get_storage(d))
            cost_sout = PSY.get_operation_cost(PSY.get_storage(d)).shortage_cost
            pin_limit = PSY.get_input_active_power_limits(PSY.get_storage(d))
            soc_limit = PSY.get_state_of_charge_limits(PSY.get_storage(d))
            pout_limit = PSY.get_output_active_power_limits(PSY.get_storage(d))
            cost_st = PSY.get_operation_cost(PSY.get_storage(d))
            idx_st = PSI.get_index(name, t, PSY.Storage)
            
            JuMP.add_to_expression!(expr_lhs, pout_batt[idx_st], cost_st.discharging)
            JuMP.add_to_expression!(expr_lhs, sout_var[name, t], -cost_sout)
            JuMP.add_to_expression!(expr_rhs, δ_pin_lb[idx_st], -pin_limit.min)
            JuMP.add_to_expression!(expr_rhs, δ_pin_ub[idx_st], pin_limit.max)
            JuMP.add_to_expression!(expr_rhs, δ_pout_lb[idx_st], -pout_limit.min)
            JuMP.add_to_expression!(expr_rhs, δ_pout_ub[idx_st], pout_limit.max)
            JuMP.add_to_expression!(expr_rhs, δ_e_lb[idx_st], -soc_limit.min)
            JuMP.add_to_expression!(expr_rhs, δ_e_ub[idx_st], soc_limit.max)
        end
        if !isnothing(PSY.get_renewable_unit(d))
            re_limit = PSY.get_rating(PSY.get_renewable_unit(d))
            idx_re = PSI.get_index(name, t, PSY.RenewableGen)
            JuMP.add_to_expression!(expr_rhs, δ_p_lb[idx_re], -0.0)
            JuMP.add_to_expression!(expr_rhs, δ_p_ub[idx_re], re_limit)
        end
        pcc_in = PSY.get_input_active_power_limits(d).max
        pcc_out = PSY.get_output_active_power_limits(d).max
        JuMP.add_to_expression!(expr_rhs, δ_pout_balance[name, t], pcc_out)
    end
    constraint[1] = JuMP.@constraint(psi_container.JuMPmodel, expr_lhs >= expr_rhs)
    return
end
