meta:
  id: config_avatar_hit_bucket_setting
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: u1
  - id: melee_bucket_count
    type: aux_types::vlq_base128_le_s
    if: has_field_melee_bucket_count
  - id: melee_bucket_cd
    type: f4
    if: has_field_melee_bucket_cd
  - id: ranged_bucket_count
    type: aux_types::vlq_base128_le_s
    if: has_field_ranged_bucket_count
  - id: ranged_bucket_cd
    type: f4
    if: has_field_ranged_bucket_cd
instances:
  has_field_melee_bucket_count: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_melee_bucket_cd: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_ranged_bucket_count: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_ranged_bucket_cd: # Field №3
    value: (bit_field & 0b1000) != 0
