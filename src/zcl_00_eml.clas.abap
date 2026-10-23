CLASS zcl_00_eml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_00_eml IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA keys TYPE TABLE FOR READ IMPORT z00_r_travel.
    keys = VALUE #( (
              AgencyId = '070000'
              TravelId = '4635'
            ) ).

    READ ENTITIES OF z00_r_travel
      ENTITY travel
        ALL FIELDS WITH keys
        RESULT DATA(travels)
      BY \_TravelItem
        ALL FIELDS WITH CORRESPONDING #( keys )
        RESULT DATA(items)
        LINK   DATA(links)
     FAILED DATA(failed).

    out->write(  travels ).
    out->write( items ).
    out->write(  links ).

  ENDMETHOD.
ENDCLASS.
