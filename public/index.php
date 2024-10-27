<?php

require '../vendor/autoload.php';

use Illuminate\Http\Request;
use App\Database\PostgresConnection;


// Cria uma instância da classe de conexão
$db = new PostgresConnection();
