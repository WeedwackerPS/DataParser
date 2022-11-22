meta:
  id: config_effect_pool
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: particle_system_budget_size
    type: aux_types::vlq_base128_le_u
    if: has_field_particle_system_budget_size
  - id: particle_system_budget_size_low_memory
    type: aux_types::vlq_base128_le_u
    if: has_field_particle_system_budget_size_low_memory
  - id: particle_system_budget_size_mid_memory
    type: aux_types::vlq_base128_le_u
    if: has_field_particle_system_budget_size_mid_memory
  - id: effectpool_budget_size
    type: aux_types::vlq_base128_le_u
    if: has_field_effectpool_budget_size
  - id: release_for_budget_time_threshold
    type: f4
    if: has_field_release_for_budget_time_threshold
  - id: release_for_budget_time_threshold_low_memory
    type: f4
    if: has_field_release_for_budget_time_threshold_low_memory
  - id: release_for_budget_time_threshold_mid_memory
    type: f4
    if: has_field_release_for_budget_time_threshold_mid_memory
  - id: release_budget_time_threshold_per_frame
    type: f4
    if: has_field_release_budget_time_threshold_per_frame
  - id: pool_items
    type: dict_of__aux_types__string_config_effect_pool_item
    if: has_field_pool_items
instances:
  has_field_particle_system_budget_size: # Field №0
    value: (bit_field.value & 0b000000001) != 0
  has_field_particle_system_budget_size_low_memory: # Field №1
    value: (bit_field.value & 0b000000010) != 0
  has_field_particle_system_budget_size_mid_memory: # Field №2
    value: (bit_field.value & 0b000000100) != 0
  has_field_effectpool_budget_size: # Field №3
    value: (bit_field.value & 0b000001000) != 0
  has_field_release_for_budget_time_threshold: # Field №4
    value: (bit_field.value & 0b000010000) != 0
  has_field_release_for_budget_time_threshold_low_memory: # Field №5
    value: (bit_field.value & 0b000100000) != 0
  has_field_release_for_budget_time_threshold_mid_memory: # Field №6
    value: (bit_field.value & 0b001000000) != 0
  has_field_release_budget_time_threshold_per_frame: # Field №7
    value: (bit_field.value & 0b010000000) != 0
  has_field_pool_items: # Field №8
    value: (bit_field.value & 0b100000000) != 0
types:
  dict_of__aux_types__string_config_effect_pool_item:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_effect_pool_item
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_effect_pool_item:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_effect_pool_item
  config_effect_pool_item:
    seq:
      - id: bit_field
        type: u1
      - id: preinstantiate_num_when_preload
        type: aux_types::vlq_base128_le_u
        if: has_field_preinstantiate_num_when_preload
      - id: max_used_size
        type: aux_types::vlq_base128_le_u
        if: has_field_max_used_size
    instances:
      has_field_preinstantiate_num_when_preload: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_max_used_size: # Field №1
        value: (bit_field & 0b10) != 0
