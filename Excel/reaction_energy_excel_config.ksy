meta:
  id: reaction_energy_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__element_reaction_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: type
    type: enum__element_reaction_type
    if: has_field_type
  - id: min_durability
    type: f4
    if: has_field_min_durability
  - id: max_durability
    type: f4
    if: has_field_max_durability
  - id: cost_ratio
    type: f4
    if: has_field_cost_ratio
  - id: config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_config_id
  - id: pool_size
    type: f4
    if: has_field_pool_size
  - id: pool_revive_period
    type: f4
    if: has_field_pool_revive_period
  - id: pool_revive_energy
    type: f4
    if: has_field_pool_revive_energy
  - id: is_persistent
    type: u1
    if: has_field_is_persistent
  - id: cost_period
    type: f4
    if: has_field_cost_period
  - id: drop_prob
    type: aux_types::vlq_base128_le_u
    if: has_field_drop_prob
instances:
  has_field_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_min_durability: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_max_durability: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_cost_ratio: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_config_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_pool_size: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_pool_revive_period: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_pool_revive_energy: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_is_persistent: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_cost_period: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_drop_prob: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
