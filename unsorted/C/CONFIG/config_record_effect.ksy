types:
  config_record_effect:
    seq:
      - id: base
        type: config_record_actor_base
      - id: bit_field
        type: u1
      - id: animator_info
        type: config_record_animator_info
        if: has_field_animator_info
      - id: renderer_params
        type: config_record_renderer_parameters
        if: has_field_renderer_params
      - id: material_params
        type: config_record_material_parameters
        if: has_field_material_params
    instances:
      has_field_animator_info: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_renderer_params: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_material_params: # Field №2
        value: (bit_field & 0b100) != 0
      # Base class fields
      pos:
        value: base.pos
      rot:
        value: base.rot
      scale:
        value: base.scale
      serial_id:
        value: base.serial_id
