meta:
  id: dict_of__aux_types__vlq_base128_le_u_disp__config_coop_base_node
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__aux_types__vlq_base128_le_s__length_u
    - ../../EnumType/enum__coop_action_type
    - ../../EnumType/enum__coop_node_type
    - ../../EnumType/enum__coop_cond_type
    - ../Common/config_talk_scheme
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_aux_types__vlq_base128_le_u_disp__config_coop_base_node
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_aux_types__vlq_base128_le_u_disp__config_coop_base_node:
    seq:
      - id: key
        type: aux_types::vlq_base128_le_u
      - id: value
        type: disp__config_coop_base_node
  disp__config_coop_base_node:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_coop_base_node
            1: config_coop_talk_node
            2: config_coop_cond_node
            3: config_coop_select_node
            4: config_coop_action_node
            5: config_coop_end_node
            _: aux_types::error
  config_coop_base_node:
    seq:
      - id: bit_field
        type: u1
      - id: coop_node_id
        type: aux_types::vlq_base128_le_u
        if: has_field_coop_node_id
      - id: coop_node_type
        type: enum__coop_node_type
        if: has_field_coop_node_type
      - id: next_node_array
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_next_node_array
    instances:
      has_field_coop_node_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_coop_node_type: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_next_node_array: # Field №2
        value: (bit_field & 0b100) != 0
  config_coop_talk_node:
    seq:
      - id: base
        type: config_coop_base_node
      - id: bit_field
        type: u1
      - id: talk_id
        type: aux_types::vlq_base128_le_u
        if: has_field_talk_id
      - id: talk_config
        type: config_talk_scheme
        if: has_field_talk_config
    instances:
      has_field_talk_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_talk_config: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      coop_node_id:
        value: base.coop_node_id
      coop_node_type:
        value: base.coop_node_type
      next_node_array:
        value: base.next_node_array
  config_coop_cond_node:
    seq:
      - id: base
        type: config_coop_base_node
      - id: bit_field
        type: u1
      - id: coop_cond_grp
        type: coop_cond_group
        if: has_field_coop_cond_grp
    instances:
      has_field_coop_cond_grp: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      coop_node_id:
        value: base.coop_node_id
      coop_node_type:
        value: base.coop_node_type
      next_node_array:
        value: base.next_node_array
  config_coop_select_node:
    seq:
      - id: base
        type: config_coop_base_node
      - id: bit_field
        type: u1
      - id: select_list
        type: array_of__coop_select_node_content__length_u
        if: has_field_select_list
    instances:
      has_field_select_list: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      coop_node_id:
        value: base.coop_node_id
      coop_node_type:
        value: base.coop_node_type
      next_node_array:
        value: base.next_node_array
  config_coop_action_node:
    seq:
      - id: base
        type: config_coop_base_node
      - id: bit_field
        type: u1
      - id: action_list
        type: array_of__config_coop_action__length_u
        if: has_field_action_list
    instances:
      has_field_action_list: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      coop_node_id:
        value: base.coop_node_id
      coop_node_type:
        value: base.coop_node_type
      next_node_array:
        value: base.next_node_array
  array_of__config_coop_action__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_coop_action
        repeat: expr
        repeat-expr: length.value

  config_coop_action:
    seq:
      - id: bit_field
        type: u1
      - id: action_type
        type: enum__coop_action_type
        if: has_field_action_type
      - id: param
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_param
    instances:
      has_field_action_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_param: # Field №1
        value: (bit_field & 0b10) != 0

  config_coop_end_node:
    seq:
      - id: base
        type: config_coop_base_node
      - id: bit_field
        type: u1
      - id: save_point_id
        type: aux_types::vlq_base128_le_u
        if: has_field_save_point_id
    instances:
      has_field_save_point_id: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      coop_node_id:
        value: base.coop_node_id
      coop_node_type:
        value: base.coop_node_type
      next_node_array:
        value: base.next_node_array
  coop_cond_group:
    seq:
      - id: bit_field
        type: u1
      - id: cond_comb_type
        type: enum__logic_type
        if: has_field_cond_comb_type
      - id: coop_cond_list
        type: array_of__coop_cond__length_u
        if: has_field_coop_cond_list
    instances:
      has_field_cond_comb_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_coop_cond_list: # Field №1
        value: (bit_field & 0b10) != 0
  array_of__coop_cond__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: coop_cond
        repeat: expr
        repeat-expr: length.value

  coop_cond:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__coop_cond_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_param: # Field №1
        value: (bit_field & 0b10) != 0
  array_of__coop_select_node_content__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: coop_select_node_content
        repeat: expr
        repeat-expr: length.value

  coop_select_node_content:
    seq:
      - id: bit_field
        type: u1
      - id: dialog_id
        type: aux_types::vlq_base128_le_u
        if: has_field_dialog_id
      - id: show_cond
        type: coop_cond_group
        if: has_field_show_cond
      - id: enable_cond
        type: coop_cond_group
        if: has_field_enable_cond
    instances:
      has_field_dialog_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_show_cond: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_enable_cond: # Field №2
        value: (bit_field & 0b100) != 0
