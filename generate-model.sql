declare
    c_column all_tab_columns.column_name%type; 
    c_type all_tab_columns.data_type%type;  
    c_length all_tab_columns.data_length%type; 
    c_precision all_tab_columns.data_precision%type; 
    c_tablename all_tables.table_name%type := '<< TABLENAME >>'; 
    cursor table_cur is 
    select 
       col.column_name, 
       col.data_type, 
       col.data_length, 
       col.data_precision
    from sys.all_tab_columns col
    inner join sys.all_tables t on col.owner = t.owner 
                                  and col.table_name = t.table_name
    where col.table_name = c_tablename;
    
begin
    dbms_output.put_line('namespace App;');
    dbms_output.put_line('');
    dbms_output.put_line('class ' || initcap(c_tablename) || ' {');
    OPEN table_cur; 
    LOOP 
    FETCH table_cur into 
       c_column, 
       c_type, 
       c_length, 
       c_precision; 
      EXIT WHEN table_cur%notfound; 
        c_column := lower(c_column);
        dbms_output.put_line('protected $' || c_column || ';');
		dbms_output.put_line('');
		dbms_output.put_line('public function get_' || c_column || '() {');
		dbms_output.put_line('    return $this->' || c_column || ';');
		dbms_output.put_line('}');
		dbms_output.put_line('');
		dbms_output.put_line('public function set_' || c_column || '($value) {');
		dbms_output.put_line('    $this->' || c_column || ' = $value;');
		dbms_output.put_line('}');
		dbms_output.put_line('');
    END LOOP; 
    CLOSE table_cur;
    dbms_output.put_line('}');
end;






