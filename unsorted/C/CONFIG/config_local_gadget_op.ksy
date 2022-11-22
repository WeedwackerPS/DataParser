types:
  config_local_gadget_op:
    seq:
      - id: base
        type: config_base_inter_action
      - id: bit_field
        type: u1
      - id: gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_gadget_id
      - id: sub_key
        type: aux_types::vlq_base128_le_u
        if: has_field_sub_key
      - id: opr_code
        type: aux_types::vlq_base128_le_s
        if: has_field_opr_code
      - id: position
        type: vector
        if: has_field_position
      - id: euler
        type: vector
        if: has_field_euler
      - id: gv_key
        type: aux_types::string
        if: has_field_gv_key
      - id: gv_value
        type: f4
        if: has_field_gv_value
    instances:
      has_field_gadget_id: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_sub_key: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_opr_code: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_position: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_euler: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_gv_key: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_gv_value: # Field №6
        value: (bit_field & 0b1000000) != 0
      # Base class fields
      type:
        value: base.type
      delay_time:
        value: base.delay_time
      duration:
        value: base.duration
      alias_list:
        value: base.alias_list
      check_next_immediately:
        value: base.check_next_immediately
