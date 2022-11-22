meta:
  id: config_audio_gadget
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
seq:
  - id: bit_field
    type: u1
  - id: paimon_speed_rtpc_key
    type: config_wwise_string
    if: has_field_paimon_speed_rtpc_key
  - id: vehicle_collision_rtpc
    type: config_wwise_string
    if: has_field_vehicle_collision_rtpc
instances:
  has_field_paimon_speed_rtpc_key: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_vehicle_collision_rtpc: # Field №1
    value: (bit_field & 0b10) != 0
