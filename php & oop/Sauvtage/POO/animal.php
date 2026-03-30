<?php



class Animal {

public $name;
public $race;


public function __construct($name,$race){
    $this->name=$name;
    $this->race=$race;
}

public function speak(){
   echo $this->name." say:hello !\n";
}

}

$animal1 = new Animal('rex','dog');
$animal2 = new Animal('mimi','cat');

$animal1->speak();
$animal2->speak();
echo "$animal1->name";
