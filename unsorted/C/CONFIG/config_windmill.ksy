types:
  config_windmill:
    seq:
      - id: base
        type: config_local_entity
    instances:
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
