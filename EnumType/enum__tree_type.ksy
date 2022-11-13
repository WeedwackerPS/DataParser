meta:
  id: enum__tree_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__tree_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: tree_type
enums:
  tree_type:
    1: tree_type_birch
    2: tree_type_maple
    3: tree_type_pine
    4: tree_type_populus_euphratica
    5: tree_type_bamboo
    6: tree_type_energy_wood
    7: tree_type_cypress
    8: tree_type_firtree
    9: tree_type_cerasus
    10: tree_type_acer
    11: tree_type_cryptomeria
    12: tree_type_otogi
