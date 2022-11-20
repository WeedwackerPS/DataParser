meta:
  id: aster_mission_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: mission_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mission_id
  - id: phase
    type: aux_types::vlq_base128_le_u
    if: has_field_phase
  - id: watcher_id
    type: aux_types::vlq_base128_le_u
    if: has_field_watcher_id
  - id: trans_point_id
    type: aux_types::vlq_base128_le_u
    if: has_field_trans_point_id
  - id: trace_point
    type: aux_types::string
    if: has_field_trace_point
  - id: perfab_path_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_perfab_path_hash
  - id: perfab_path_hash_pre
    type: s1
    if: has_field_perfab_path_hash
instances:
  has_field_mission_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_phase: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_watcher_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_trans_point_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_trace_point: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_perfab_path_hash: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
