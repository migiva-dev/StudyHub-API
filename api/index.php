<?php

header("Content-Type: application/json; charset=UTF-8");

$response = [
    "status" => "success",
    "message" => "StudyHub API funcionando correctamente",
    "version" => "1.0.0"
];

echo json_encode($response, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);