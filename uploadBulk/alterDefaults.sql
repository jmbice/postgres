--adjust system parameters away from default before bulk copy
ALTER SYSTEM SET max_wal_senders = 0;
ALTER SYSTEM SET wal_level = minimal;
ALTER SYSTEM SET archive_mode = 'off';
ALTER SYSTEM SET maintenance_work_mem = '128MB';
ALTER SYSTEM SET max_wal_size = '2GB';
