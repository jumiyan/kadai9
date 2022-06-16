<?php
session_start(); //追加


$id = $_GET['id']; //?id~**を受け取る
require_once('funcs.php');
loginCheck(); //追加

$pdo = db_conn();

//２．データ登録SQL作成
$stmt = $pdo->prepare('SELECT * FROM gs_bm_table WHERE id=:id;');
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//３．データ表示 
if ($status == false) {
    sql_error($stmt);
} else {
    $row = $stmt->fetch();
}
?>


<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>データ登録</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body>
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一覧</a></div>
            </div>
        </nav>
    </header>

    <!-- method, action, 各inputのnameを確認してください。  -->
    <form method="POST" action="update.php">
        <div class="jumbotron">
            <fieldset>
                <legend>詳細画面</legend>
                <label>書籍名：<input type="text" name="name" value="<?= $result['name'] ?>"></label><br>
                <label>
                    <a href="<?= $result['url'] ?>">書籍URL(クリックでリンク先へ)</a>：<input type="text" name="url" value="<?= $result['url'] ?>">
                </label><br>
                <label><textarea name="comment" rows="4" cols="40"><?= $result['comment'] ?></textarea></label><br>

                <input type="hidden" name="id" value="<?= $result['id'] ?>"><br>

                <input type="submit" value="更新">
            </fieldset>
        </div>
    </form>
</body>

</html>