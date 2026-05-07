<?php

header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET");

require_once "../config/database.php";

$database = new Database();
$connection = $database->connect();

try {
    $query = "SELECT id, nombre, familia, grado, duracion, modalidad, descripcion FROM estudios";
    $statement = $connection->prepare($query);
    $statement->execute();

    $estudios = $statement->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode([
        "status" => "success",
        "total" => count($estudios),
        "data" => $estudios
    ], JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);

} catch (PDOException $exception) {
    http_response_code(500);

    echo json_encode([
        "status" => "error",
        "message" => "Error al obtener los estudios",
        "details" => $exception->getMessage()
    ], JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
}