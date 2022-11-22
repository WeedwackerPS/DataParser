types:
  config_rise_field:
    seq:
      - id: base
        type: config_force_field
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: cdmin
        type: f4
        if: has_field_cdmin
      - id: cdmax
        type: f4
        if: has_field_cdmax
      - id: vmin
        type: f4
        if: has_field_vmin
      - id: vmax
        type: f4
        if: has_field_vmax
      - id: hmin
        type: f4
        if: has_field_hmin
      - id: hmax
        type: f4
        if: has_field_hmax
      - id: attenuation
        type: f4
        if: has_field_attenuation
      - id: box
        type: vector
        if: has_field_box
      - id: shape
        type: disp__config_base_shape
        if: has_field_shape
    instances:
      has_field_cdmin: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_cdmax: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_vmin: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_vmax: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_hmin: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_hmax: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_attenuation: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_box: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_shape: # Field №8
        value: (bit_field.value & 0b100000000) != 0
      # Base class fields
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
