meta:
  id: enum__gallery_progress_score_type
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: gallery_progress_score_type
enums:
  gallery_progress_score_type:
    0: gallery_progress_score_none
    1: gallery_progress_score_no_degrade
