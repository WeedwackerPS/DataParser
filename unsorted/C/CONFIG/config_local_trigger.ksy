types:
  config_local_trigger:
    seq:
      - id: base
        type: config_local_entity
      - id: bit_field
        type: u1
      - id: trigger_flag
        type: enum__trigger_flag
        if: has_field_trigger_flag
      - id: shape
        type: disp__config_base_shape
        if: has_field_shape
      - id: check_count
        type: aux_types::vlq_base128_le_s
        if: has_field_check_count
      - id: trigger_interval
        type: f4
        if: has_field_trigger_interval
      - id: vector_param
        type: vector
        if: has_field_vector_param
      - id: float_param
        type: f4
        if: has_field_float_param
      - id: string_param
        type: aux_types::string
        if: has_field_string_param
    instances:
      has_field_trigger_flag: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_shape: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_check_count: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_trigger_interval: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_vector_param: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_float_param: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_string_param: # Field №6
        value: (bit_field & 0b1000000) != 0
      # Base class fields
      check_dist:
        value: base.check_dist
      with_go:
        value: base.with_go
      type:
        value: base.type
      gadget_id:
        value: base.gadget_id
      area_id:
        value: base.area_id
      pos:
        value: base.pos
      rot:
        value: base.rot
      tran_pos:
        value: base.tran_pos
      tran_rot:
        value: base.tran_rot
      unlocked:
        value: base.unlocked
      alias:
        value: base.alias
      group_limit:
        value: base.group_limit
      is_model_hidden:
        value: base.is_model_hidden
