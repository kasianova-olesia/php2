<?php
include "../config/main.php";
include "../services/Autoloader.php";

spl_autoload_register([new \app\services\Autoloader(), 'loadClass']);

$db = \app\services\Db::getInstance();

var_dump($db->queryOne("SELECT * FROM product WHERE id = :id", ['id' => 2]));

$category = new \app\models\Category();
var_dump($category);

$feedback = new \app\models\Feedback();
var_dump($feedback);

$product = new \app\models\Product();
var_dump($product);

//$user = new \app\models\User();
//var_dump($user);

$user_groups = new \app\models\User_groups();
var_dump($user_groups);

$user1 = new \app\models\User(null, 1, 'user1', '12345', 'Анастасия', 'Касьянова', 'nastia@mail.ru', '123-456', 'Привет!');
//var_dump($user1);

$temp = $user1->getOne(14);
var_dump($temp);

/*Вывести все значения таблицы*/
//$temp = $user1->getAll();
//var_dump($temp);

/*Вставка значений в таблицу*/
$temp = $user1->insert([
    'id' => null,
    'groups_id' => 1,
    'login' => 'user1',
    'password' => '12345',
    'name' => 'Анастасия',
    'surname' => 'Касьянова',
    'email' => 'nastia@mail.ru',
    'phone' => '123-456',
    'description' => 'Привет!'
]);

/*Изменение значений в таблице*/
$temp = $user1->update([
    'login' => 'user2',
    'password' => '123456789',
    'name' => 'Виталина',
    'surname' => 'Касьянова'
], 26);

