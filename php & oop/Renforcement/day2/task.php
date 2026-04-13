<?php


class Task {

 private $id; 
 private $description; 
 private $estimatedHours; 

public function __construct($id , $description , $estimatedHours) {
     $this->id=$id;
     $this->description=$description;
     $this->estimatedHours=$estimatedHours;
}

public function getid (){
    return $this->id;
}
public function getdescription (){
    return $this->description;
}
public function getestimatehours (){
    return $this->estimatedHours;
}


public function isBig($threshold){
  if ($this->estimatedHours > $threshold) {
    return true;
  }
}


}