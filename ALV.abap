*&---------------------------------------------------------------------*
*& Report  Z_TESTE_PTF
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  z_teste_ptf.

DATA: r_table     TYPE REF TO cl_salv_table,
      r_functions TYPE REF TO cl_salv_functions.

DATA: it_sflight TYPE TABLE OF sflight.

START-OF-SELECTION.

  SELECT * FROM sflight INTO TABLE it_sflight.

  CALL METHOD cl_salv_table=>factory
    IMPORTING
      r_salv_table = r_table
    CHANGING
      t_table      = it_sflight.


  CALL METHOD r_table->display.