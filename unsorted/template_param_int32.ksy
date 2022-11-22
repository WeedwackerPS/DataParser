types:
  template_param_int32:
    seq:
      - id: base
        type: template_param
      - id: bit_field
        type: u1
      - id: origin_value
        type: aux_types::vlq_base128_le_s
        if: has_field_origin_value
    instances:
      has_field_origin_value: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      param:
        value: base.param
