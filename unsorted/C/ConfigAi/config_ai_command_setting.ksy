types:
  config_ai_command_setting:
    seq:
      - id: bit_field
        type: u1
      - id: accept_command_i_ds
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_accept_command_i_ds
    instances:
      has_field_accept_command_i_ds: # Field №0
        value: (bit_field & 0b1) != 0
