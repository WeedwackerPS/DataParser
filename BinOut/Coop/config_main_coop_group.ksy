meta:
  id: config_main_coop_group
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__coop_temperament_type
    - dict_of__aux_types__vlq_base128_le_u_disp__config_coop_base_node
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: coop_interaction_map
    type: dict_of__aux_types__vlq_base128_le_u_config_coop_interaction_group
    if: has_field_coop_interaction_map
  - id: sub_start_point_map
    type: dict_of__aux_types__vlq_base128_le_u_coop_sub_start_point
    if: has_field_sub_start_point_map
  - id: save_point_map
    type: dict_of__aux_types__vlq_base128_le_u_coop_save_point
    if: has_field_save_point_map
  - id: confidence_value
    type: aux_types::vlq_base128_le_u
    if: has_field_confidence_value
  - id: max_confidence_value
    type: aux_types::vlq_base128_le_u
    if: has_field_max_confidence_value
  - id: temperament_map
    type: dict_of__enum__coop_temperament_type_coop_temperament
    if: has_field_temperament_map
  - id: use_confidence
    type: u1
    if: has_field_use_confidence
  - id: use_temperament
    type: u1
    if: has_field_use_temperament
  - id: coop_temp_value_map
    type: dict_of__aux_types__vlq_base128_le_u_coop_temp_value
    if: has_field_coop_temp_value_map
instances:
  has_field_coop_interaction_map: # Field №0
    value: (bit_field.value & 0b000000001) != 0
  has_field_sub_start_point_map: # Field №1
    value: (bit_field.value & 0b000000010) != 0
  has_field_save_point_map: # Field №2
    value: (bit_field.value & 0b000000100) != 0
  has_field_confidence_value: # Field №3
    value: (bit_field.value & 0b000001000) != 0
  has_field_max_confidence_value: # Field №4
    value: (bit_field.value & 0b000010000) != 0
  has_field_temperament_map: # Field №5
    value: (bit_field.value & 0b000100000) != 0
  has_field_use_confidence: # Field №6
    value: (bit_field.value & 0b001000000) != 0
  has_field_use_temperament: # Field №7
    value: (bit_field.value & 0b010000000) != 0
  has_field_coop_temp_value_map: # Field №8
    value: (bit_field.value & 0b100000000) != 0
types:
  dict_of__aux_types__vlq_base128_le_u_config_coop_interaction_group:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_u_config_coop_interaction_group
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_u_config_coop_interaction_group:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_u
      - id: value
        type: config_coop_interaction_group
  dict_of__aux_types__vlq_base128_le_u_coop_sub_start_point:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_u_coop_sub_start_point
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_u_coop_sub_start_point:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_u
      - id: value
        type: coop_sub_start_point
  dict_of__aux_types__vlq_base128_le_u_coop_save_point:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_u_coop_save_point
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_u_coop_save_point:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_u
      - id: value
        type: coop_save_point
  dict_of__enum__coop_temperament_type_coop_temperament:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__coop_temperament_type_coop_temperament
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__coop_temperament_type_coop_temperament:
    seq:
      - id: key
        type: enum__coop_temperament_type
      - id: value
        type: coop_temperament
  dict_of__aux_types__vlq_base128_le_u_coop_temp_value:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__vlq_base128_le_u_coop_temp_value
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__vlq_base128_le_u_coop_temp_value:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_u
      - id: value
        type: coop_temp_value
  config_coop_interaction_group:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: coop_map
        type: dict_of__aux_types__vlq_base128_le_u_disp__config_coop_base_node
        if: has_field_coop_map
      - id: start_node_id
        type: aux_types::vlq_base128_le_u
        if: has_field_start_node_id
      - id: fail_node_id
        type: aux_types::vlq_base128_le_u
        if: has_field_fail_node_id
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_coop_map: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_start_node_id: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_fail_node_id: # Field №3
        value: (bit_field & 0b1000) != 0
  coop_sub_start_point:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: coop_interaction_id
        type: aux_types::vlq_base128_le_u
        if: has_field_coop_interaction_id
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_coop_interaction_id: # Field №1
        value: (bit_field & 0b10) != 0
  coop_save_point:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: is_end
        type: u1
        if: has_field_is_end
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_is_end: # Field №1
        value: (bit_field & 0b10) != 0
  coop_temperament:
    seq:
      - id: bit_field
        type: u1
      - id: value
        type: aux_types::vlq_base128_le_u
        if: has_field_value
      - id: ratio
        type: f4
        if: has_field_ratio
    instances:
      has_field_value: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_ratio: # Field №1
        value: (bit_field & 0b10) != 0
  coop_temp_value:
    seq:
      - id: bit_field
        type: u1
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: value
        type: aux_types::vlq_base128_le_u
        if: has_field_value
      - id: is_coop_var
        type: u1
        if: has_field_is_coop_var
    instances:
      has_field_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_value: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_is_coop_var: # Field №2
        value: (bit_field & 0b100) != 0
