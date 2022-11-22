types:
  sectr_bake_layers_info:
    seq:
      - id: bit_field
        type: u1
      - id: list
        type: array_of__sectr_bake_layer_info__length_u
        if: has_field_list
    instances:
      has_field_list: # Field №0
        value: (bit_field & 0b1) != 0
