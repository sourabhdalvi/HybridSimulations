
const SUBCOMPONENT_ACTIVE_POWER_IN_COMPLEMENTS = "active_power_in_complements"
const SUBCOMPONENT_ACTIVE_POWER_OUT_COMPLEMENTS = "active_power_out_complements"
const SUBCOMPONENT_ENERGY_COMPLEMENTS = "energy_complements"
const RENEWABLE_COMPONENT_ACTIVE_POWER_COMPLEMENTS = "renewable_active_power_complements"
const POWER_OUT_BALANCE_SLACK_COMPLEMENTS = "Pout_balance_slack_complements"
const POWER_BALANCE_RESERVATIONS = "P_balance_reservations"
const SUBCOMPONENT_ACTIVE_POWER_IN_STATIONARY = "active_power_in_stationary"
const SUBCOMPONENT_ACTIVE_POWER_OUT_STATIONARY = "active_power_out_stationary"
const SUBCOMPONENT_ENERGY_STATIONARY = "energy_stationary"
const RENEWABLE_COMPONENT_ACTIVE_POWER_STATIONARY = "renewable_active_power_stationary"
const ACTIVE_POWER_OUT_SLACK_STATIONARY = "active_power_out_slack_stationary"

abstract type SubComponentActivePowerInComplements <: PSI.ConstraintType end
abstract type SubComponentActivePowerOutComplements <: PSI.ConstraintType end
abstract type SubComponentEnergyComplements <: PSI.ConstraintType end
abstract type RenewableComponentActivePowerComplements <: PSI.ConstraintType end
abstract type PowerOutBalanceSlackComplements <: PSI.ConstraintType end

abstract type SubComponentActivePowerInStationary <: PSI.ConstraintType end
abstract type SubComponentActivePowerOutStationary <: PSI.ConstraintType end
abstract type SubComponentEnergyStationary <: PSI.ConstraintType end
abstract type RenewableComponentActivePowerStationary <: PSI.ConstraintType end
abstract type ActivePowerOutSlackStationary <: PSI.ConstraintType end

abstract type PowerBalanceReservations <: PSI.ConstraintType end
abstract type PowerBalanceOutConstriant <: PSI.ConstraintType end
