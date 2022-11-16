meta:
  id: enum__velocity_force_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: velocity_force_type
enums:
  velocity_force_type:
    0: retreat_type
    1: retreat_air_type
    2: rush_move_type
    3: wind_zone_type
    4: airflow_type
    5: rise_type
    6: speedup_type
    7: airflow_acc_type
    8: inertia_type
    9: fixed_rush_move_type
    10: light_core_type_normal
    11: light_core_type_accelerate
