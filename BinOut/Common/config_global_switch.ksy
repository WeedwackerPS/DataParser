meta:
  id: config_global_switch
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: enable_multi_player
    type: u1
    if: has_field_enable_multi_player
  - id: enable_animator_interleave
    type: u1
    if: has_field_enable_animator_interleave
  - id: enable_mixin_modifier_detach_callback
    type: u1
    if: has_field_enable_mixin_modifier_detach_callback
  - id: enable_packet_process_time_limit
    type: u1
    if: has_field_enable_packet_process_time_limit
  - id: enable_ui_temp_fix
    type: u1
    if: has_field_enable_ui_temp_fix
  - id: enable_equip_data_item_fix
    type: u1
    if: has_field_enable_equip_data_item_fix
  - id: cache_entity_light_de_active
    type: u1
    if: has_field_cache_entity_light_de_active
  - id: enablemax_delay_packet_ms
    type: u1
    if: has_field_enablemax_delay_packet_ms
  - id: max_delay_packet_ms
    type: aux_types::vlq_base128_le_u
    if: has_field_max_delay_packet_ms
  - id: enable_force_sync_postion
    type: u1
    if: has_field_enable_force_sync_postion
  - id: max_force_distance
    type: f4
    if: has_field_max_force_distance
  - id: enable_ability_invoke_after_ready
    type: u1
    if: has_field_enable_ability_invoke_after_ready
instances:
  has_field_enable_multi_player: # Field №0
    value: (bit_field.value & 0b000000000001) != 0
  has_field_enable_animator_interleave: # Field №1
    value: (bit_field.value & 0b000000000010) != 0
  has_field_enable_mixin_modifier_detach_callback: # Field №2
    value: (bit_field.value & 0b000000000100) != 0
  has_field_enable_packet_process_time_limit: # Field №3
    value: (bit_field.value & 0b000000001000) != 0
  has_field_enable_ui_temp_fix: # Field №4
    value: (bit_field.value & 0b000000010000) != 0
  has_field_enable_equip_data_item_fix: # Field №5
    value: (bit_field.value & 0b000000100000) != 0
  has_field_cache_entity_light_de_active: # Field №6
    value: (bit_field.value & 0b000001000000) != 0
  has_field_enablemax_delay_packet_ms: # Field №7
    value: (bit_field.value & 0b000010000000) != 0
  has_field_max_delay_packet_ms: # Field №8
    value: (bit_field.value & 0b000100000000) != 0
  has_field_enable_force_sync_postion: # Field №9
    value: (bit_field.value & 0b001000000000) != 0
  has_field_max_force_distance: # Field №10
    value: (bit_field.value & 0b010000000000) != 0
  has_field_enable_ability_invoke_after_ready: # Field №11
    value: (bit_field.value & 0b100000000000) != 0
