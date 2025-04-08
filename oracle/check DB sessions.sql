SELECT sid_session_id,
       inst_id instance_id,
       username db_username,
       status session_status,
       process process_varchar,
       machine machine_name_used,
       program,
       client_info,
       osuser,
       logon_time logon_date_and_time
  FROM gv$session
 WHERE username IS NOT NULL
   AND username = :userName
   AND osuser = :osUserName
 ORDER BY login_time DESC;