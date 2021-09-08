function PSI.construct_device!(
    psi_container::PSI.OptimizationContainer,
    sys::PSY.System,
    model::PSI.DeviceModel{T, HybridBiLevelDispatch},
    ::Type{S},
) where {T <: PSY.HybridSystem, S <: PM.AbstractActivePowerModel}
    devices = PSI.get_available_components(T, sys)

    if !PSI.validate_available_devices(T, devices)
        return
    end

    # Variables
    PSI.add_variables!(psi_container, PSI.ActivePowerOutVariable, devices, HybridBiLevelDispatch())
    PSI.add_variables!(
        psi_container,
        PSI.SubComponentActivePowerInVariable,
        devices,
        HybridBiLevelDispatch(),
    )
    PSI.add_variables!(
        psi_container,
        PSI.SubComponentActivePowerOutVariable,
        devices,
        HybridBiLevelDispatch(),
    )
    PSI.add_variables!(
        psi_container,
        PSI.SubComponentActivePowerVariable,
        devices,
        HybridBiLevelDispatch(),
    )
   
    PSI.add_variables!(psi_container, PSI.SubComponentEnergyVariable, devices, HybridBiLevelDispatch())
    PSI.add_variables!(
        psi_container,
        PSI.SubComponentReserveVariable,
        devices,
        HybridBiLevelDispatch(),
    )
    PSI.add_variables!(psi_container, PowerOutBalanceSlackVariable, devices, HybridBiLevelDispatch())

    # Dual Variable
    PSI.add_variables!(psi_container, PowerOutBalanceDualVariable, devices, HybridBiLevelDispatch())
    PSI.add_variables!(psi_container, EnergyBalanceDualVariable, devices, HybridBiLevelDispatch())
    
    PSI.add_variables!(psi_container, SubComponentActivePowerLBDualVariable, devices, HybridBiLevelDispatch())
    PSI.add_variables!(psi_container, SubComponentActivePowerUBDualVariable, devices, HybridBiLevelDispatch())
    PSI.add_variables!(psi_container, SubComponentActivePowerInLBDualVariable, devices, HybridBiLevelDispatch())
    PSI.add_variables!(psi_container, SubComponentActivePowerInUBDualVariable, devices, HybridBiLevelDispatch())
    PSI.add_variables!(psi_container, SubComponentActivePowerOutLBDualVariable, devices, HybridBiLevelDispatch())
    PSI.add_variables!(psi_container, SubComponentActivePowerOutUBDualVariable, devices, HybridBiLevelDispatch())
    PSI.add_variables!(psi_container, SubComponentEnergyLBDualVariable, devices, HybridBiLevelDispatch())
    PSI.add_variables!(psi_container, SubComponentEnergyUBDualVariable, devices, HybridBiLevelDispatch())
    PSI.add_variables!(psi_container, PowerOutBalanceSlackDualVariable, devices, HybridBiLevelDispatch())
    # Initial Conditions
    PSI.initial_conditions!(psi_container, devices, HybridBiLevelDispatch())

    # Constraints
    # Hybrid inter-connection limits
    PSI.add_constraints!(
        psi_container,
        PSI.RangeConstraint,
        PSI.ActivePowerOutVariable,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.add_constraints!(
        psi_container,
        PowerBalanceReservations,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
#     Subcomponent variable bounds 
    PSI.add_constraints!(
        psi_container,
        PSI.RangeConstraint,
        PSI.SubComponentActivePowerInVariable,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.add_constraints!(
        psi_container,
        PSI.RangeConstraint,
        PSI.SubComponentActivePowerOutVariable,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.add_constraints!(
        psi_container,
        PSI.RenewableGenRangeConstraint,
        PSI.SubComponentActivePowerVariable,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    
    PSI.energy_capacity_constraints!(psi_container, devices, model, S, PSI.get_feedforward(model))
    PSI.add_constraints!(
        psi_container,
        PSI.EnergyBalanceConstraint,
        PSI.SubComponentEnergyVariable,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.add_constraints!(
        psi_container,
        PowerBalanceOutConstriant,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.feedforward!(psi_container, devices, model, PSI.get_feedforward(model))
    
    # Complementarity constraints
    PSI.add_constraints!(
        psi_container,
        SubComponentActivePowerInComplements,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.add_constraints!(
        psi_container,
        SubComponentActivePowerOutComplements,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.add_constraints!(
        psi_container,
        SubComponentEnergyComplements,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.add_constraints!(
        psi_container,
        RenewableComponentActivePowerComplements,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.add_constraints!(
        psi_container,
        PowerOutBalanceSlackComplements,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )

     # Stationary Condition constraints
    PSI.add_constraints!(
        psi_container,
        SubComponentActivePowerInStationary,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.add_constraints!(
        psi_container,
        SubComponentActivePowerOutStationary,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.add_constraints!(
        psi_container,
        SubComponentEnergyStationary,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )  
    PSI.add_constraints!(
        psi_container,
        RenewableComponentActivePowerStationary,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.add_constraints!(
        psi_container,
        ActivePowerOutSlackStationary,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )

    # Cost Function
    PSI.add_constraints!(
        psi_container,
        StrongDualityConstraint,
        devices,
        model,
        S,
        PSI.get_feedforward(model),
    )
    PSI.cost_function!(psi_container, devices, model, S, PSI.get_feedforward(model))

    return
end
