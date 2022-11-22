meta:
  id: dict_of__aux_types__string_disp__config_lc_base_intee
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - config_lc_base_intee
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_aux_types__string_disp__config_lc_base_intee
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_aux_types__string_disp__config_lc_base_intee:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: disp__config_lc_base_intee
  disp__config_lc_base_intee:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_lc_base_intee
            1: config_lc_gadget_intee
            _: aux_types::error
  config_lc_gadget_intee:
    seq:
      - id: base
        type: config_lc_base_intee
    instances:
      # Base class fields
      trigger_shape_in:
        value: base.trigger_shape_in
      trigger_shape_in_height:
        value: base.trigger_shape_in_height
      trigger_shape_out:
        value: base.trigger_shape_out
      trigger_shape_out_height:
        value: base.trigger_shape_out_height
      trigger_shape_in_offset:
        value: base.trigger_shape_in_offset
      trigger_shape_out_offset:
        value: base.trigger_shape_out_offset
      trigger_shape_free_interaction:
        value: base.trigger_shape_free_interaction
      trigger_shape_free_interaction_height:
        value: base.trigger_shape_free_interaction_height
      trigger_shape_free_interaction_offset:
        value: base.trigger_shape_free_interaction_offset
