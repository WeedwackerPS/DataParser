meta:
  id: trigger_attack_target_map_event
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_action
    - ../../../../EnumType/enum__target_type
    - ../../../Common/config_attack_info
    - ../../../../aux_types
    - ../../../Common/Disp/disp__config_base_attack_pattern
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: u1
  - id: attack_target_map_event
    type: config_attack_target_map_event
    if: has_field_attack_target_map_event
instances:
  has_field_attack_target_map_event: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  token:
    value: base.token
  target:
    value: base.target
  other_targets:
    value: base.other_targets
  do_off_stage:
    value: base.do_off_stage
  do_after_die:
    value: base.do_after_die
  can_be_handled_on_recover:
    value: base.can_be_handled_on_recover
  mute_remote_action:
    value: base.mute_remote_action
  predicates:
    value: base.predicates
  predicates_foreach:
    value: base.predicates_foreach
types:
  config_attack_target_map_event:
    seq:
      - id: bit_field
        type: u1
      - id: attack_pattern
        type: disp__config_base_attack_pattern
        if: has_field_attack_pattern
      - id: attack_info_map
        type: dict_of__enum__target_type_config_attack_info
        if: has_field_attack_info_map
    instances:
      has_field_attack_pattern: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_attack_info_map: # Field №1
        value: (bit_field & 0b10) != 0
  dict_of__enum__target_type_config_attack_info:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__target_type_config_attack_info
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__target_type_config_attack_info:
    seq:
      - id: key
        type: enum__target_type
      - id: value
        type: config_attack_info
