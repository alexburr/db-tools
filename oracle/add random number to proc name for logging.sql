debug_rand NUMBER := round(DBMS_RANDOM.VALUE (100, 999));
debug_loc VARCHAR2(50) := 'PROC NAME ' || debug_rand;