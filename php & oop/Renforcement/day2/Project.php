<?php

require_once "task.php";

class Project {

     private $title; 
     private $dailyRate; 
     private $tasks = []; 

     public function __construct($title, $dailyRate ,$tasks=[]){
            $this->title=$title;
            $this->dailyRate=$dailyRate;
            $this->tasks=[];
     }

     public function  addTask(Task $tasks){
       array_push($this->tasks[],$tasks);
       return $this->tasks;
     }

     public function  calculateTotalHours(){
         foreach ($this->tasks as $tasks) {
           $total =+ $tasks->estimatedHours;
         };
         return $total;
}

public function  TotalWithBuffer($bufferPercent = 10){
    $totalbuffer = $this->calculateTotalHours() * (1 + $bufferPercent/100);
    return $totalbuffer;
}

public function  calculateBudget(){
    $totalebudget = $this->TotalWithBuffer() *($this->calculateTotalHours() * $this->dailyRate/8);
    return $totalebudget;
}

public function   getBigTasks(T$threshold){
foreach($this->tasks as $task){
                if($task->estimatedHours>$threshold){
                    array_push($arrayFiltre,$task);
                }
                return $arrayFiltre;
            }
}

}

$project=new Project('Refonte site web',600,['Design',12,'Dev front',30,'Dev back',45]);
