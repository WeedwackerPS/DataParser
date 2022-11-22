meta:
  id: config_character
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../ArrayType/array_of__aux_types__string__length_u
    - config_entity
    - config_combat
    - config_equip_controller
    - ../array_of__config_entity_ability_entry__length_u
    - dict_of__aux_types__string_disp__config_base_state_layer
    - config_part_controller
    - disp__config_billboard
seq:
  - id: base
    type: config_entity
  - id: bit_field
    type: u1
  - id: combat
    type: config_combat
    if: has_field_combat
  - id: equip_controller
    type: config_equip_controller
    if: has_field_equip_controller
  - id: abilities
    type: array_of__config_entity_ability_entry__length_u
    if: has_field_abilities
  - id: state_layers
    type: dict_of__aux_types__string_disp__config_base_state_layer
    if: has_field_state_layers
  - id: face
    type: config_face
    if: has_field_face
  - id: part_control
    type: config_part_controller
    if: has_field_part_control
  - id: billboard
    type: disp__config_billboard
    if: has_field_billboard
  - id: bind_emotions
    type: array_of__aux_types__string__length_u
    if: has_field_bind_emotions
instances:
  has_field_combat: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_equip_controller: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_abilities: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_state_layers: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_face: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_part_control: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_billboard: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_bind_emotions: # Field №7
    value: (bit_field & 0b10000000) != 0
  # Base class fields
  common:
    value: base.common
  head_control:
    value: base.head_control
  special_point:
    value: base.special_point
  custom_attack_shape:
    value: base.custom_attack_shape
  model:
    value: base.model
  dither:
    value: base.dither
  global_value:
    value: base.global_value
  entity_tags:
    value: base.entity_tags
types:
  config_face:
    seq:
      - id: bit_field
        type: u1
      - id: character_name
        type: aux_types::string
        if: has_field_character_name
      - id: base_face_animation
        type: aux_types::string
        if: has_field_base_face_animation
      - id: interval_face_animation
        type: aux_types::string
        if: has_field_interval_face_animation
      - id: min_interval
        type: f4
        if: has_field_min_interval
      - id: max_interval
        type: f4
        if: has_field_max_interval
    instances:
      has_field_character_name: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_base_face_animation: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_interval_face_animation: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_min_interval: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_max_interval: # Field №4
        value: (bit_field & 0b10000) != 0
