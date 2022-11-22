types:
  config_light_core:
    seq:
      - id: base
        type: config_const_force_field
      - id: bit_field
        type: u1
      - id: trigger_name
        type: aux_types::string
        if: has_field_trigger_name
      - id: core_trigger_name
        type: aux_types::string
        if: has_field_core_trigger_name
      - id: max_absorb_time
        type: f4
        if: has_field_max_absorb_time
      - id: attenuation
        type: f4
        if: has_field_attenuation
      - id: cd
        type: f4
        if: has_field_cd
    instances:
      has_field_trigger_name: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_core_trigger_name: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_max_absorb_time: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_attenuation: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_cd: # Field №4
        value: (bit_field & 0b10000) != 0
      # Base class fields
      velocity:
        value: base.velocity
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
