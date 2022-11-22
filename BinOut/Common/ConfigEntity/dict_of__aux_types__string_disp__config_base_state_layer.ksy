meta:
  id: dict_of__aux_types__string_disp__config_base_state_layer
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - disp__config_base_state_id_info
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_aux_types__string_disp__config_base_state_layer
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_aux_types__string_disp__config_base_state_layer:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: disp__config_base_state_layer
  disp__config_base_state_layer:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_base_state_layer
            1: config_normal_state_layer
            _: aux_types::error
  config_base_state_layer:
    seq:
      - id: bit_field
        type: u1
      - id: layer_index
        type: aux_types::vlq_base128_le_s
        if: has_field_layer_index
      - id: layer_index_name
        type: aux_types::string
        if: has_field_layer_index_name
    instances:
      has_field_layer_index: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_layer_index_name: # Field №1
        value: (bit_field & 0b10) != 0
  config_normal_state_layer:
    seq:
      - id: base
        type: config_base_state_layer
      - id: bit_field
        type: u1
      - id: state_i_ds
        type: dict_of__aux_types__string_disp__config_base_state_id_info
        if: has_field_state_i_ds
    instances:
      has_field_state_i_ds: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      layer_index:
        value: base.layer_index
      layer_index_name:
        value: base.layer_index_name
  dict_of__aux_types__string_disp__config_base_state_id_info:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_disp__config_base_state_id_info
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_disp__config_base_state_id_info:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: disp__config_base_state_id_info
