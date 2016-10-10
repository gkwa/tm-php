default['php']['syspath'] = true
default['php']['package_name'] = 'PHP'
default['php']['environment'] = "production" # "development" or "production"
default['php']['install_dir'] = "#{ENV['SystemDrive']}\\PHP"

default['php']['x86_64']['5.6.10']['url']      = 'http://installer-bin.streambox.com/php-5.6.10-Win32-VC11-x64.zip'
default['php']['template_basename']['5.6.10']  = 'php-5.6.10-Win32-VC11'
default['php']['x86_64']['5.6.10']['checksum'] = 'd5dcabcdc61a6e2f81d36c3e4ce26543b3f80c235d3bbd57932aeb4387197546'
default['php']['x86']['5.6.10']['url']         = 'http://installer-bin.streambox.com/php-5.6.10-Win32-VC11-x86.zip'
default['php']['x86']['5.6.10']['checksum']    = '88cf0e5a05f7d5f1529c6ca27d569e7bdc0e85093c650e89f917206420e18045'
default['php']['x86_64']['7.0.10']['url']      = 'http://installer-bin.streambox.com/php-7.0.10-Win32-VC14-x64.zip'
default['php']['template_basename']['7.0.10']  = 'php-7.0.10-Win32-VC14'
default['php']['x86_64']['7.0.10']['checksum'] = '5d099320d05e7a52ee28c95be23ee1839327d70937346ccf485c41a080c6d33f'
default['php']['x86']['7.0.10']['url']         = 'http://installer-bin.streambox.com/php-7.0.10-Win32-VC14-x86.zip'
default['php']['x86']['7.0.10']['checksum']    = '1a25c404f2855d5b576169dd419fe74f58af9a26e50b15dfb18e30bb0b73d6fb'

# PHP template vars
default['php']['user_ini.filename']['value'] = '".user.ini"'
default['php']['user_ini.filename']['enabled'] = true
default['php']['user_ini.cache_ttl'] = 300
default['php']['engine'] = 'On'
default['php']['short_open_tag'] = 'Off'
default['php']['precision'] = 14
default['php']['output_buffering'] = 4096
default['php']['output_handler'] = ''
default['php']['zlib.output_compression'] = 'Off'
default['php']['zlib.output_compression_level'] = -1
default['php']['zlib.output_handler'] = ''
default['php']['implicit_flush'] = 'Off'
default['php']['unserialize_callback_func'] = ''
default['php']['serialize_precision'] = 17
default['php']['open_basedir'] = ''
default['php']['highlight.string'] = '#DD0000'
default['php']['highlight.comment'] = '#FF9900'
default['php']['highlight.keyword'] = '#007700'
default['php']['highlight.default'] = '#0000BB'
default['php']['highlight.html'] = '#000000'
default['php']['ignore_user_abort'] = 'On'
default['php']['realpath_cache_size'] = '16k'
default['php']['realpath_cache_ttl'] = 120
default['php']['zend.enable_gc'] = 'On'
default['php']['zend.multibyte'] = 'Off'
default['php']['zend.script_encoding'] = ''
default['php']['expose_php'] = 'On'
default['php']['max_execution_time'] = 30
default['php']['max_input_time'] = 60
default['php']['max_input_nesting_level'] = 64
default['php']['max_input_vars'] = 1000
default['php']['memory_limit'] = '128M'
default['php']['error_reporting'] = 'E_ALL & ~E_DEPRECATED & ~E_STRICT'
default['php']['display_errors'] = 'Off'
default['php']['display_startup_errors'] = 'Off'
default['php']['log_errors'] = 'On'
default['php']['log_errors_max_len'] = 1024
default['php']['ignore_repeated_errors'] = 'Off'
default['php']['ignore_repeated_source'] = 'Off'
default['php']['report_memleaks'] = 'On'
default['php']['report_zend_debug'] = 0
default['php']['track_errors'] = 'Off'
default['php']['xmlrpc_errors'] = 0
default['php']['xmlrpc_error_number'] = 0
default['php']['html_errors'] = 'On'
default['php']['docref_root'] = '"/phpmanual/"'
default['php']['docref_ext'] = '.html'
default['php']['error_prepend_string'] = %Q|"<span style='color: #ff0000'>"|
default['php']['error_append_string'] = '"</span>"'
default['php']['error_log'] = ''
default['php']['windows.show_crt_warning'] = 0
default['php']['arg_separator.output'] = '"&amp;"'
default['php']['arg_separator.input'] = '";&"'
default['php']['variables_order'] = 'GPCS'
default['php']['request_order'] = 'GP'
default['php']['register_argc_argv'] = 'Off'
default['php']['auto_globals_jit'] = 'On'
default['php']['enable_post_data_reading'] = 'Off'
default['php']['post_max_size'] = '8M'
default['php']['auto_prepend_file'] = ''
default['php']['auto_append_file'] = ''
default['php']['default_mimetype'] = 'text/html'
default['php']['default_charset'] = 'UTF-8'
default['php']['internal_encoding'] = ''
default['php']['input_encoding'] = ''
default['php']['output_encoding'] = ''
default['php']['include_path']  = []
default['php']['include_path'] += [ '.' ]
default['php']['include_path'] += [ '/php/includes' ]
default['php']['include_path']  = []
default['php']['include_path'] += [ '.' ]
default['php']['include_path'] += [ 'c:\php\includes' ]
default['php']['doc_root'] = ''
default['php']['user_dir'] = ''
default['php']['extension_dir'] = '"ext"'
default['php']['sys_temp_dir'] = '"/tmp"'
default['php']['enable_dl'] = 'Off'
default['php']['cgi.force_redirect'] = 1
default['php']['cgi.nph'] = 1
default['php']['cgi.redirect_status_env'] = ''
default['php']['cgi.fix_pathinfo'] = 1
default['php']['fastcgi.impersonate'] = 1
default['php']['fastcgi.logging'] = 0
default['php']['cgi.rfc2616_headers'] = 0
default['php']['file_uploads'] = 'On'
default['php']['upload_tmp_dir'] = ''
default['php']['upload_max_filesize'] = '2M'
default['php']['max_file_uploads'] = 20
default['php']['allow_url_fopen'] = 'On'
default['php']['allow_url_include'] = 'Off'
default['php']['from'] = 'john@doe.com'
default['php']['user_agent'] = '"PHP"'
default['php']['default_socket_timeout'] = 60
default['php']['auto_detect_line_endings'] = 'Off'
default['php']['php_bz2.dll']['enabled'] = false
default['php']['php_curl.dll']['enabled'] = false
default['php']['php_fileinfo.dll']['enabled'] = false
default['php']['php_ftp.dll']['enabled'] = false
default['php']['php_gd2.dll']['enabled'] = false
default['php']['php_gettext.dll']['enabled'] = false
default['php']['php_gmp.dll']['enabled'] = false
default['php']['php_intl.dll']['enabled'] = false
default['php']['php_imap.dll']['enabled'] = false
default['php']['php_interbase.dll']['enabled'] = false
default['php']['php_ldap.dll']['enabled'] = false
default['php']['php_mbstring.dll']['enabled'] = false
default['php']['php_exif.dll']['enabled'] = false
default['php']['php_mysqli.dll']['enabled'] = false
default['php']['php_oci8_12c.dll']['enabled'] = false
default['php']['php_openssl.dll']['enabled'] = false
default['php']['php_pdo_firebird.dll']['enabled'] = false
default['php']['php_pdo_mysql.dll']['enabled'] = false
default['php']['php_pdo_oci.dll']['enabled'] = false
default['php']['php_pdo_odbc.dll']['enabled'] = false
default['php']['php_pdo_pgsql.dll']['enabled'] = false
default['php']['php_pdo_sqlite.dll']['enabled'] = false
default['php']['php_pgsql.dll']['enabled'] = false
default['php']['php_shmop.dll']['enabled'] = false
default['php']['php_snmp.dll']['enabled'] = false
default['php']['php_soap.dll']['enabled'] = false
default['php']['php_sockets.dll']['enabled'] = false
default['php']['php_sqlite3.dll']['enabled'] = false
default['php']['php_tidy.dll']['enabled'] = false
default['php']['php_xmlrpc.dll']['enabled'] = false
default['php']['php_xsl.dll']['enabled'] = false
default['php']['cli_server.color'] = 'On'
default['php']['date.timezone'] = ''
default['php']['date.default_latitude'] = 31.7667
default['php']['date.default_longitude'] = 35.2333
default['php']['date.sunrise_zenith'] = 90.583333
default['php']['date.sunset_zenith'] = 90.583333
default['php']['filter.default'] = 'unsafe_raw'
default['php']['filter.default_flags'] = ''
default['php']['iconv.input_encoding'] = ''
default['php']['iconv.internal_encoding'] = ''
default['php']['iconv.output_encoding'] = ''
default['php']['intl.default_locale'] = ''
default['php']['intl.error_level'] = 'E_WARNING'
default['php']['intl.use_exceptions'] = 0
default['php']['sqlite3.extension_dir'] = ''
default['php']['pcre.backtrack_limit'] = 100000
default['php']['pcre.recursion_limit'] = 100000
default['php']['pcre.jit'] = 1
default['php']['pdo_odbc.connection_pooling'] = 'strict'
default['php']['pdo_mysql.cache_size'] = 2000
default['php']['pdo_mysql.default_socket'] = ''
default['php']['phar.readonly'] = 'On'
default['php']['phar.require_hash'] = 'On'
default['php']['phar.cache_list'] = ''
default['php']['SMTP'] = 'localhost'
default['php']['smtp_port'] = 25
default['php']['sendmail_from'] = 'me@example.com'
default['php']['sendmail_path'] = ''
default['php']['mail.force_extra_parameters'] = ''
default['php']['mail.add_x_header'] = 'On'
default['php']['mail.log'] = ''
default['php']['sql.safe_mode'] = 'Off'
default['php']['odbc.default_db'] = 'Not yet implemented'
default['php']['odbc.default_user'] = 'Not yet implemented'
default['php']['odbc.default_pw'] = 'Not yet implemented'
default['php']['odbc.allow_persistent'] = 'On'
default['php']['odbc.check_persistent'] = 'On'
default['php']['odbc.max_persistent'] = -1
default['php']['odbc.max_links'] = -1
default['php']['odbc.defaultlrl'] = 4096
default['php']['odbc.defaultbinmode'] = 1
default['php']['birdstep.max_links'] = -1
default['php']['ibase.allow_persistent'] = 1
default['php']['ibase.max_persistent'] = -1
default['php']['ibase.max_links'] = -1
default['php']['ibase.default_db'] = ''
default['php']['ibase.default_user'] = ''
default['php']['ibase.default_password'] = ''
default['php']['ibase.default_charset'] = ''
default['php']['ibase.timestampformat'] = '%Y-%m-%d %H:%M:%S'
default['php']['ibase.dateformat'] = '%Y-%m-%d'
default['php']['ibase.timeformat'] = '%H:%M:%S'
default['php']['mysqli.max_persistent'] = -1
default['php']['mysqli.allow_local_infile'] = 'On'
default['php']['mysqli.allow_persistent'] = 'On'
default['php']['mysqli.max_links'] = -1
default['php']['mysqli.cache_size'] = 2000
default['php']['mysqli.default_port'] = 3306
default['php']['mysqli.default_pw'] = ''
default['php']['mysqli.reconnect'] = 'Off'
default['php']['mysqlnd.collect_statistics'] = 'On'
default['php']['mysqlnd.collect_memory_statistics'] = 'Off'
default['php']['mysqlnd.net_cmd_buffer_size'] = 2048
default['php']['mysqlnd.net_read_buffer_size'] = 32768
default['php']['oci8.privileged_connect'] = 'Off'
default['php']['oci8.max_persistent'] = -1
default['php']['oci8.persistent_timeout'] = -1
default['php']['oci8.ping_interval'] = 60
default['php']['oci8.connection_class'] = ''
default['php']['oci8.events'] = 'Off'
default['php']['oci8.statement_cache_size'] = 20
default['php']['oci8.default_prefetch'] = 100
default['php']['oci8.old_oci_close_semantics'] = 'Off'
default['php']['pgsql.allow_persistent'] = 'On'
default['php']['pgsql.auto_reset_persistent'] = 'Off'
default['php']['pgsql.max_persistent'] = -1
default['php']['pgsql.max_links'] = -1
default['php']['pgsql.ignore_notice'] = 0
default['php']['pgsql.log_notice'] = 0
default['php']['bcmath.scale'] = 0
default['php']['browscap'] = 'extra/browscap.ini'
default['php']['session.save_handler'] = 'files'
default['php']['session.save_path'] = '"/tmp"'
default['php']['session.use_strict_mode'] = 0
default['php']['session.use_cookies'] = 1
default['php']['session.cookie_secure'] = ''
default['php']['session.use_only_cookies'] = 1
default['php']['session.name'] = 'PHPSESSID'
default['php']['session.auto_start'] = 0
default['php']['session.cookie_lifetime'] = 0
default['php']['session.cookie_path'] = '/'
default['php']['session.cookie_domain'] = ''
default['php']['session.cookie_httponly'] = ''
default['php']['session.serialize_handler'] = 'php'
default['php']['session.gc_probability'] = 1
default['php']['session.gc_divisor'] = 1000
default['php']['session.gc_maxlifetime'] = 1440
default['php']['session.referer_check'] = ''
default['php']['session.entropy_length'] = 32
default['php']['session.entropy_file'] = '/dev/urandom'
default['php']['session.cache_limiter'] = 'nocache'
default['php']['session.cache_expire'] = 180
default['php']['session.use_trans_sid'] = 0
default['php']['session.hash_function'] = 0
default['php']['session.hash_bits_per_character'] = 5
default['php']['url_rewriter.tags'] = 'a=href,area=href,frame=src,input=src,form=fakeentry'
default['php']['session.upload_progress.enabled'] = 'On'
default['php']['session.upload_progress.cleanup'] = 'On'
default['php']['session.upload_progress.prefix'] = '"upload_progress_"'
default['php']['session.upload_progress.name'] = '"PHP_SESSION_UPLOAD_PROGRESS"'
default['php']['session.upload_progress.freq'] = '"1%"'
default['php']['session.upload_progress.min_freq'] = '"1"'
default['php']['session.lazy_write'] = 'On'
default['php']['zend.assertions'] = -1
default['php']['assert.active'] = 'On'
default['php']['assert.exception'] = 'On'
default['php']['assert.warning'] = 'On'
default['php']['assert.bail'] = 'Off'
default['php']['assert.callback'] = 0
default['php']['assert.quiet_eval'] = 0
default['php']['com.typelib_file'] = ''
default['php']['com.allow_dcom'] = 'true'
default['php']['com.autoregister_typelib'] = 'true'
default['php']['com.autoregister_casesensitive'] = 'false'
default['php']['com.autoregister_verbose'] = 'true'
default['php']['com.code_page'] = ''
default['php']['mbstring.language'] = 'Japanese'
default['php']['mbstring.internal_encoding'] = ''
default['php']['mbstring.http_input'] = ''
default['php']['mbstring.http_output'] = ''
default['php']['mbstring.encoding_translation'] = 'Off'
default['php']['mbstring.detect_order'] = 'auto'
default['php']['mbstring.substitute_character'] = 'none'
default['php']['mbstring.func_overload'] = 0
default['php']['mbstring.strict_detection'] = 'On'
default['php']['mbstring.http_output_conv_mimetype'] = ''
default['php']['gd.jpeg_ignore_warning'] = 0
default['php']['exif.encode_unicode'] = 'ISO-8859-15'
default['php']['exif.decode_unicode_motorola'] = 'UCS-2BE'
default['php']['exif.decode_unicode_intel'] = 'UCS-2LE'
default['php']['exif.encode_jis'] = ''
default['php']['exif.decode_jis_motorola'] = 'JIS'
default['php']['exif.decode_jis_intel'] = 'JIS'
default['php']['tidy.default_config'] = '/usr/local/lib/php/default.tcfg'
default['php']['tidy.clean_output'] = 'Off'
default['php']['soap.wsdl_cache_enabled'] = 1
default['php']['soap.wsdl_cache_dir'] = '/tmp'
default['php']['soap.wsdl_cache_ttl'] = 86400
default['php']['soap.wsdl_cache_limit'] = 5
default['php']['sysvshm.init_mem'] = 10000
default['php']['ldap.max_links'] = -1
default['php']['mcrypt.algorithms_dir'] = ''
default['php']['mcrypt.modes_dir'] = ''
default['php']['dba.default_handler'] = ''
default['php']['opcache.enable'] = 0
default['php']['opcache.enable_cli'] = 0
default['php']['opcache.memory_consumption'] = 64
default['php']['opcache.interned_strings_buffer'] = 4
default['php']['opcache.max_accelerated_files'] = 2000
default['php']['opcache.max_wasted_percentage'] = 5
default['php']['opcache.use_cwd'] = 1
default['php']['opcache.validate_timestamps'] = 1
default['php']['opcache.revalidate_freq'] = 2
default['php']['opcache.revalidate_path'] = 0
default['php']['opcache.save_comments'] = 1
default['php']['opcache.fast_shutdown'] = 0
default['php']['opcache.enable_file_override'] = 0
default['php']['opcache.optimization_level'] = '0xffffffff'
default['php']['opcache.inherited_hack'] = 1
default['php']['opcache.dups_fix'] = 0
default['php']['opcache.blacklist_filename'] = ''
default['php']['opcache.max_file_size'] = 0
default['php']['opcache.consistency_checks'] = 0
default['php']['opcache.force_restart_timeout'] = 180
default['php']['opcache.error_log'] = ''
default['php']['opcache.log_verbosity_level'] = 1
default['php']['opcache.preferred_memory_model'] = ''
default['php']['opcache.protect_memory'] = 0
default['php']['opcache.restrict_api'] = ''
default['php']['opcache.mmap_base'] = ''
default['php']['opcache.file_cache'] = ''
default['php']['opcache.file_cache_only'] = 0
default['php']['opcache.file_cache_consistency_checks'] = 1
default['php']['opcache.file_cache_fallback'] = 1
default['php']['opcache.huge_code_pages'] = 1
default['php']['curl.cainfo'] = ''
default['php']['openssl.cafile'] = ''
default['php']['openssl.capath'] = ''

if node['php']['environment'] == 'development'
  default['php']['error_reporting'] = 'E_ALL'
  default['php']['display_errors'] = 'On'
  default['php']['display_startup_errors'] = 'On'
  default['php']['track_errors'] = 'On'
  default['php']['mysqlnd.collect_memory_statistics'] = 'On'
  default['php']['zend.assertions'] = 1
  default['php']['opcache.huge_code_pages'] = 0
end

case node['kernel']['machine']
when 'i386', 'i586'
  default['php']['arch'] = 'x86'
else
  default['php']['arch'] = 'x86_64'
end

# eg php-7.0.10-Win32-VC14-php.ini-production.erb
default['php']['php_ini_template'] = "#{node['php']['template_basename'][node['php']['version']]}-php.ini-#{node['php']['environment']}.erb"

php_version = node['php']['version']
arch = default['php']['arch']
vc_version = default['php'][arch][php_version]['url'].to_s.match(/.*VC(\d+)/i).captures[0].to_i

case vc_version
when 14
  default['php']['vc'] = "14"
when 11
  default['php']['vc'] = "12"
when 9
  default['php']['vc'] = "9"
end

Chef::Log.warn("Installing PHP #{node['php']['version']}, I'll use vc#{node['php']['vc']}")
