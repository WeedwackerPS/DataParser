meta:
  id: config_ability_action_token
  imports:
    - ../../aux_types
    - ../../EnumType/enum__action_token_type
seq:
  - id: bit_field
    type: u1
  - id: cancel_with_entity_tick_lod
    type: aux_types::vlq_base128_le_s
    if: has_field_cancel_with_entity_tick_lod
  - id: channel_id
    type: aux_types::vlq_base128_le_s
    if: has_field_channel_id
  - id: weight
    type: aux_types::vlq_base128_le_s
    if: has_field_weight
  - id: token_cost_type
    type: aux_types::vlq_base128_le_s
    if: has_field_token_cost_type
  - id: token_type
    type: enum__action_token_type
    if: has_field_token_type
instances:
  has_field_cancel_with_entity_tick_lod: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_channel_id: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_weight: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_token_cost_type: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_token_type: # Field №4
    value: (bit_field & 0b10000) != 0