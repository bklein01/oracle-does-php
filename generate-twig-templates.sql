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
    dbms_output.put_line('*************** LIST PAGE ************************************');
    dbms_output.put_line('<div class="content-header">');
    dbms_output.put_line('    <div class="container-fluid">');
    dbms_output.put_line('        <div class="row">');
    dbms_output.put_line('            <div class="col-sm-6">');
    dbms_output.put_line('                <h1 class="m-0 text-dark">' || initcap(c_tablename) || ' List <small class="text-muted"></small></h1>');
    dbms_output.put_line('            </div><!-- /.col -->');
    dbms_output.put_line('            <div class="col-sm-6">');
    dbms_output.put_line('                <ol class="breadcrumb float-sm-end ew-breadcrumbs">');
    dbms_output.put_line('                    <li class="breadcrumb-item" id="ew-breadcrumb1"><a href="/" class="ew-home"');
    dbms_output.put_line('                                                                       data-bs-original-title="Home"><i');
    dbms_output.put_line('                                    data-phrase="HomePage" class="fa-solid fa-house ew-icon"><span');
    dbms_output.put_line('                                        class="visually-hidden">Home</span></i></a></li>');
    dbms_output.put_line('                    <li class="breadcrumb-item active" id="ew-breadcrumb2"><span');
    dbms_output.put_line('                                id="ew-page-caption">' || initcap(c_tablename) || ' List</span></li>');
    dbms_output.put_line('                </ol>');
    dbms_output.put_line('            </div><!-- /.col -->');
    dbms_output.put_line('        </div><!-- /.row -->');
    dbms_output.put_line('    </div><!-- /.container-fluid -->');
    dbms_output.put_line('</div>');


    dbms_output.put_line('*************** CREATE PAGE ************************************');
    dbms_output.put_line('<div class="content-header">');
    dbms_output.put_line('    <div class="container-fluid">');
    dbms_output.put_line('        <div class="row">');
    dbms_output.put_line('            <div class="col-sm-6">');
    dbms_output.put_line('                <h1 class="m-0 text-dark">Create ' || initcap(c_tablename) || ' <small class="text-muted"></small></h1>');
    dbms_output.put_line('            </div><!-- /.col -->');
    dbms_output.put_line('            <div class="col-sm-6">');
    dbms_output.put_line('                <ol class="breadcrumb float-sm-end ew-breadcrumbs">');
    dbms_output.put_line('                    <li class="breadcrumb-item" id="ew-breadcrumb1"><a href="/" class="ew-home"');
    dbms_output.put_line('                                                                       data-bs-original-title="Home"><i');
    dbms_output.put_line('                                    data-phrase="HomePage" class="fa-solid fa-house ew-icon"><span');
    dbms_output.put_line('                                        class="visually-hidden">Home</span></i></a></li>');
    dbms_output.put_line('                    <li class="breadcrumb-item" id="ew-breadcrumb2"><a href="/' || lower(c_tablename) || '"><span');
    dbms_output.put_line('                                    id="ew-page-caption">' || initcap(c_tablename) || ' List</span></a></li>');
    dbms_output.put_line('                    <li class="breadcrumb-item active" id="ew-breadcrumb2"><span');
    dbms_output.put_line('                                id="ew-page-caption">Create</span></li>');
    dbms_output.put_line('                </ol>');
    dbms_output.put_line('            </div><!-- /.col -->');
    dbms_output.put_line('        </div><!-- /.row -->');
    dbms_output.put_line('    </div><!-- /.container-fluid -->');
    dbms_output.put_line('</div>');

    dbms_output.put_line('*************** EDIT PAGE ************************************');
    dbms_output.put_line('<div class="content-header">');
    dbms_output.put_line('    <div class="container-fluid">');
    dbms_output.put_line('        <div class="row">');
    dbms_output.put_line('            <div class="col-sm-6">');
    dbms_output.put_line('                <h1 class="m-0 text-dark">Edit ' || initcap(c_tablename) || ' <small class="text-muted"></small></h1>');
    dbms_output.put_line('            </div><!-- /.col -->');
    dbms_output.put_line('            <div class="col-sm-6">');
    dbms_output.put_line('                <ol class="breadcrumb float-sm-end ew-breadcrumbs">');
    dbms_output.put_line('                    <li class="breadcrumb-item" id="ew-breadcrumb1"><a href="/" class="ew-home"');
    dbms_output.put_line('                                                                       data-bs-original-title="Home"><i');
    dbms_output.put_line('                                    data-phrase="HomePage" class="fa-solid fa-house ew-icon"><span');
    dbms_output.put_line('                                        class="visually-hidden">Home</span></i></a></li>');
    dbms_output.put_line('                    <li class="breadcrumb-item" id="ew-breadcrumb2"><a href="/' || lower(c_tablename) || '"><span');
    dbms_output.put_line('                                    id="ew-page-caption">' || initcap(c_tablename) || ' List</span></a></li>');
    dbms_output.put_line('                    <li class="breadcrumb-item active" id="ew-breadcrumb2"><span');
    dbms_output.put_line('                                id="ew-page-caption">Edit</span></li>');
    dbms_output.put_line('                </ol>');
    dbms_output.put_line('            </div><!-- /.col -->');
    dbms_output.put_line('        </div><!-- /.row -->');
    dbms_output.put_line('    </div><!-- /.container-fluid -->');
    dbms_output.put_line('</div>');

    dbms_output.put_line('*************** DETAILS PAGE ************************************');
    dbms_output.put_line('<div class="content-header">');
    dbms_output.put_line('    <div class="container-fluid">');
    dbms_output.put_line('        <div class="row">');
    dbms_output.put_line('            <div class="col-sm-6">');
    dbms_output.put_line('                <h1 class="m-0 text-dark">' || initcap(c_tablename) || ' List <small class="text-muted"></small></h1>');
    dbms_output.put_line('            </div><!-- /.col -->');
    dbms_output.put_line('            <div class="col-sm-6">');
    dbms_output.put_line('                <ol class="breadcrumb float-sm-end ew-breadcrumbs">');
    dbms_output.put_line('                    <li class="breadcrumb-item" id="ew-breadcrumb1"><a href="/" class="ew-home"');
    dbms_output.put_line('                                                                       data-bs-original-title="Home"><i');
    dbms_output.put_line('                                    data-phrase="HomePage" class="fa-solid fa-house ew-icon"><span');
    dbms_output.put_line('                                        class="visually-hidden">Home</span></i></a></li>');
    dbms_output.put_line('                    <li class="breadcrumb-item" id="ew-breadcrumb2"><a href="/' || lower(c_tablename) || '"><span');
    dbms_output.put_line('                                    id="ew-page-caption">' || initcap(c_tablename) || ' List</span></a></li>');
    dbms_output.put_line('                    <li class="breadcrumb-item active" id="ew-breadcrumb2"><span');
    dbms_output.put_line('                                id="ew-page-caption">Details</span></li>');
    dbms_output.put_line('                </ol>');
    dbms_output.put_line('            </div><!-- /.col -->');
    dbms_output.put_line('        </div><!-- /.row -->');
    dbms_output.put_line('    </div><!-- /.container-fluid -->');
    dbms_output.put_line('</div>');

end;






