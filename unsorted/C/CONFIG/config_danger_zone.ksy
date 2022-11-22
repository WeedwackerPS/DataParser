types:
  config_danger_zone:
    seq:
      - id: base
        type: config_polygon_zone
      - id: bit_field
        type: u1
      - id: zonelist
        type: array_of__aux_types__string__length_u
        if: has_field_zonelist
    instances:
      has_field_zonelist: # Field №0
        value: (bit_field & 0b1) != 0
      # Base class fields
      check_cd:
        value: base.check_cd
