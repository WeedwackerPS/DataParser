meta:
  id: activity_skill_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__activity_skill_target
    - ../EnumType/enum__open_state_type
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: skill_target
    type: enum__activity_skill_target
    if: has_field_skill_target
  - id: ability_name
    type: aux_types::string
    if: has_field_ability_name
  - id: global_value_key
    type: aux_types::string
    if: has_field_global_value_key
  - id: energy_min
    type: aux_types::vlq_base128_le_u
    if: has_field_energy_min
  - id: energy_max
    type: aux_types::vlq_base128_le_u
    if: has_field_energy_max
  - id: cd_time
    type: f4
    if: has_field_cd_time
  - id: guide_time
    type: f4
    if: has_field_guide_time
  - id: skill_icon
    type: aux_types::string
    if: has_field_skill_icon
  - id: guide_key
    type: array_of__aux_types__string__length_u
    if: has_field_guide_key
  - id: guide_open_state
    type: enum__open_state_type
    if: has_field_guide_open_state
  - id: unable_text
    type: aux_types::vlq_base128_le_u
    if: has_field_unable_text
  - id: channel_text
    type: aux_types::vlq_base128_le_u
    if: has_field_channel_text
  - id: interrupt_text
    type: aux_types::vlq_base128_le_u
    if: has_field_interrupt_text
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_skill_target: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_ability_name: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_global_value_key: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_energy_min: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_energy_max: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_cd_time: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_guide_time: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_skill_icon: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_guide_key: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_guide_open_state: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_unable_text: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_channel_text: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_interrupt_text: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
