DECLARE
    result_rec sys_refcursor;
BEGIN
    SCHEMA.PACKAGE.PROC_THAT_RETURNS_REC(input1, input2, result_rec);
    SELECT result_rec INTO :to_grid FROM dual;
END;