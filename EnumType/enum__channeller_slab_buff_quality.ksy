meta:
  id: enum__channeller_slab_buff_quality
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__channeller_slab_buff_quality:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: channeller_slab_buff_quality
enums:
  channeller_slab_buff_quality:
    0: channeller_slab_buff_quality_none
    1: channeller_slab_buff_quality_green
    2: channeller_slab_buff_quality_blue
    3: channeller_slab_buff_quality_purple
    4: channeller_slab_buff_quality_orange
