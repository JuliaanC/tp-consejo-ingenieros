<?php
defined('BASEPATH') OR exit('No direct script access allowed');

// Sesiones con memcached
$config['sess_driver'] = 'memcached';

// Protección CSRF, para simular lo mejor posible un entorno de producción
$config['csrf_protection'] = TRUE;
$config['csrf_token_name'] = 'csrf_token';
$config['csrf_cookie_name'] = 'cookie_csrf_token';
$config['csrf_expire'] = 7200;
$config['csrf_regenerate'] = TRUE;
$config['csrf_exclude_uris'] = array();

// Comprimir salida
$config['compress_output'] = TRUE;
