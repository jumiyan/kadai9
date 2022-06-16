<?php
session_start(); //追加

//1. POSTデータ取得
$id = $_GET['id'];

//2. DB接続します
require_once('funcs.php');
loginCheck(); //追加

$pdo = db_conn();

//３．データ登録SQL作成
$stmt = $pdo->prepare('DELETE FROM gs_bm_table WHERE id = :id;');
$stmt->bindValue(':id', $id, PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)
$status = $stmt->execute(); //実行

//４．データ登録処理後
if ($status === false) {
    sql_error($stmt);
} else {
    redirect('select.php');
}
