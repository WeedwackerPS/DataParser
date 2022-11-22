types:
  config_speedup_field:
    seq:
      - id: base
        type: config_const_force_field
      - id: bit_field
        type: u1
      - id: attenuation
        type: f4
        if: has_field_attenuation
      - id: single_dir
        type: u1
        if: has_field_single_dir
      - id: trigger_vehicle
        type: u1
        if: has_field_trigger_vehicle
      - id: stop_velocity
        type: f4
        if: has_field_stop_velocity
    instances:
      has_field_attenuation: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_single_dir: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_trigger_vehicle: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_stop_velocity: # Field №3
        value: (bit_field & 0b1000) != 0
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
