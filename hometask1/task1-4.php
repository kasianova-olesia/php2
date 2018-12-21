<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
   <?php


class Product{
    public $id;
    public $article;
    public $category;
    public $title;
    public $description;
    public $size;
    public $price;
    public $country;
    

    public function __construct($id = null, $article = null, $category = null, $title = null, $description = null, $size = null, $price = null, $country = null)
    {
        $this->id = $id;
        $this->article = $article;
        $this->category = $category;
        $this->title = $title;
        $this->description = $description;
        $this->size = $size;
        $this->price = $price;
        $this->country = $country;
       
    }

    public function view(){
        echo $this->newArticle() . $this->newCategory() . $this->newTitle() . $this->newDescription() . $this->newSize() . $this->newPrice() . $this->newCountry();
    }
    
    public function newArticle()
    {
        return "<b>Артикул:</b> $this->article<br>";
    }
    
    public function newCategory()
    {
        return "<b>Категория:</b> $this->category<br>";
    }
    
    public function newTitle()
    {
        return "<b>Наименование:</b> $this->title<br>";
    }
    public function newDescription()
    {
        return "<b>Описание:</b> $this->description<br>";
    }
    public function newSize()
    {
        return "<b>Размер:</b> $this->size<br>";
    }
    public function newPrice()
    {
        return "<b>Цена:</b> $this->price руб.<br>";
    }
    public function newCountry()
    {
        return "<b>Страна-производитель:</b> $this->country<br>";
    }
    
    
     public function setId($id)
    {
        $this->id = $id;
    }

    public function getId()
    {
        return $this->id;
    }
      
}
class Good2 extends Product{
    
    public function __construct($id = null, $article = null, $category = null, $title = null, $description = null, $size = null, $price = null, $country = null)
    {
        parent::__construct($id, $article, $category, $title, $description, $size, $price, $country);
        $this->count = $count;
    }


    public function view()
    {
        parent::view();
        $this->viewCount();
    }

    public function viewCount()
    {
        echo "<p>{$this->count}</p>";
    }
}

 
$good1 = new Product(1, 0000101, "Платья", "Платье, Just Cavalli",
    "Замечательное дизайнерское платье. Модель сочетает в себе нотки авангарда и этнического стиля. Рукава платья короткие, прямой крой. Вырез горловины округлый. Универсальная расцветка с декором в виде бисера.",
    "42", "89000", "Италия");
$good1->view();

echo '<hr>';

$good2 = new Good2(2, 000114, "Платья", "Платье, Lisa Campione",
    "Великолепное платье с округлым вырезом горловины. Сзади удобная застежка на молнию. Прекрасный вариант для модных женщин, желающих подчеркнуть свою индивидуальность и хороший вкус.",
    "48", "60500", "Италия", "5");
$good2->view();

echo '<hr>';
var_dump($good1);
echo '<hr>';    

var_dump($good2); 
    
?>    
</body>
</html>
