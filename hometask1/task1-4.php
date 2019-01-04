<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
  <?php


class Product
{
    public $id;
    public $article;
    public $category;
    public $title;
    public $description;
    public $size;
    public $price;
    public $country;
    public $count;

    public function __construct($article, $category, $title, $description, $size, $price, $country, $count)
    {
        $this->article = $article;
        $this->category = $category;
        $this->title = $title;
        $this->description = $description;
        $this->size = $size;
        $this->price = $price;
        $this->country = $country;
        $this->count = $count;
    }

    public function view()
    {
        echo "
            <b>Артикул:</b> $this->article<br>
            <b>Категория:</b> $this->category<br>
            <b>Наименование:</b> $this->title<br>
            <b>Описание:</b> $this->description<br>
            <b>Размер:</b> $this->size<br>
            <b>Цена:</b> $this->price руб.<br>
            <b>Страна-производитель:</b> $this->country<br>
            <b>Количество на складе:</b> $this->count шт.<br>
        ";
    }

    // Списание товара со склада
    public function removeFromStock($number)
    {
        echo "<hr><h2>Списание со склада</h2>";
        if (($this->count - $number) < 0) {
            echo "<b>Недостаточное количество товара на складе для списания: $number шт.!</b><br>";
        } else {
            $this->count -= $number;
            echo "<b>Списание товара $this->title в количестве $number шт. выполнено успешно!</b><br>";
        }
        echo "<b>Остаток на складе:</b> $this->count шт.<br>";
    }

}

// Уцененый товар (брак, не комплект)
class Discount extends Product
{
    public $state;
    public $complete;
    public $package;
    public $reason;

    function __construct($article, $category, $title, $description, $size, $price, $guarantee, $country, $count,
                         $state, $complete, $package, $reason)
    {
        parent::__construct($article, $category, $title, $description, $size, $price, $guarantee, $country, $count);
        $this->state = $state;
        $this->complete = $complete;
        $this->package = $package;
        $this->reason = $reason;
    }

    public function view()
    {
        parent::view();
        echo "
            <b>Состояние:</b> $this->state<br>
            <b>Комплектация:</b> $this->complete<br>
            <b>Состояние упаковки:</b> $this->package<br>
            <b>Причина уценки:</b> $this->reason<br>
        ";
    }
}

/*Стандартный товар*/
$good1 = new Product(0000101, "Платья", "Платье, Just Cavalli",
    "Замечательное дизайнерское платье. Модель сочетает в себе нотки авангарда и этнического стиля. Рукава платья короткие, прямой крой. Вырез горловины округлый. Универсальная расцветка с декором в виде бисера.",
    "42", 89000, "Италия", 12,  "7");
$good1->view();
$good1->removeFromStock(10);
$good1->removeFromStock(2);

/*Уцененный товар*/
$good2 = new Discount(000114, "Платья", "Платье, Lisa Campione",
    "Великолепное платье с округлым вырезом горловины. Сзади удобная застежка на молнию. Прекрасный вариант для модных женщин, желающих подчеркнуть свою индивидуальность и хороший вкус.",
    48, 60500, "Италия", 2, 2,
    "Оторвана молния", "полная", "отличное", "заменена молния");
$good2->view();
$good2->removeFromStock(3);
$good2->removeFromStock(1);

var_dump($good1);
var_dump($good2);  
    ?>
</body>
</html>
