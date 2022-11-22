types:
  config_cannon_field:
    seq:
      - id: base
        type: config_speedup_field
    instances:
      # Base class fields
      attenuation:
        value: base.attenuation
      single_dir:
        value: base.single_dir
      trigger_vehicle:
        value: base.trigger_vehicle
      stop_velocity:
        value: base.stop_velocity
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
