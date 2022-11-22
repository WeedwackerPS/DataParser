meta:
  id: config_avatar
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__aux_types__vlq_base128_le_s__length_u
    - ../Common/ConfigEntity/config_character
    - ../Common/config_footprint
    - config_avatar_shoot
    - config_avatar_audio
seq:
  - id: base
    type: config_character
  - id: bit_field
    type: u1
  - id: shoot_config
    type: config_avatar_shoot
    if: has_field_shoot_config
  - id: audio
    type: config_avatar_audio
    if: has_field_audio
  - id: controller_assembly
    type: config_avatar_controller_assembly
    if: has_field_controller_assembly
  - id: move_state_effect
    type: config_move_state_effect
    if: has_field_move_state_effect
  - id: perform
    type: config_avatar_perform
    if: has_field_perform
instances:
  has_field_shoot_config: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_audio: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_controller_assembly: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_move_state_effect: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_perform: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  combat:
    value: base.combat
  equip_controller:
    value: base.equip_controller
  abilities:
    value: base.abilities
  state_layers:
    value: base.state_layers
  face:
    value: base.face
  part_control:
    value: base.part_control
  billboard:
    value: base.billboard
  bind_emotions:
    value: base.bind_emotions
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
  config_avatar_controller_assembly:
    seq:
      - id: bit_field
        type: u1
      - id: controller_path
        type: aux_types::string
        if: has_field_controller_path
      - id: normal_move_subs
        type: aux_types::string
        if: has_field_normal_move_subs
      - id: weapon_move_subs
        type: aux_types::string
        if: has_field_weapon_move_subs
      - id: skill_subs
        type: config_avatar_controller_assembly_skill_subs
        if: has_field_skill_subs
    instances:
      has_field_controller_path: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_normal_move_subs: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_weapon_move_subs: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_skill_subs: # Field №3
        value: (bit_field & 0b1000) != 0
  config_avatar_controller_assembly_skill_subs:
    seq:
      - id: bit_field
        type: u1
      - id: skill01_subs
        type: aux_types::string
        if: has_field_skill01_subs
      - id: skill02_subs
        type: aux_types::string
        if: has_field_skill02_subs
      - id: skill03_subs
        type: aux_types::string
        if: has_field_skill03_subs
      - id: skill04_subs
        type: aux_types::string
        if: has_field_skill04_subs
    instances:
      has_field_skill01_subs: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_skill02_subs: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_skill03_subs: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_skill04_subs: # Field №3
        value: (bit_field & 0b1000) != 0
  config_move_state_effect:
    seq:
      - id: bit_field
        type: u1
      - id: footprint
        type: config_footprint
        if: has_field_footprint
    instances:
      has_field_footprint: # Field №0
        value: (bit_field & 0b1) != 0
  config_avatar_perform:
    seq:
      - id: bit_field
        type: u1
      - id: standby
        type: config_standby_perform
        if: has_field_standby
    instances:
      has_field_standby: # Field №0
        value: (bit_field & 0b1) != 0
  config_standby_perform:
    seq:
      - id: bit_field
        type: u1
      - id: min_time
        type: f4
        if: has_field_min_time
      - id: max_time
        type: f4
        if: has_field_max_time
      - id: perform_i_ds
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_perform_i_ds
    instances:
      has_field_min_time: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_max_time: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_perform_i_ds: # Field №2
        value: (bit_field & 0b100) != 0
