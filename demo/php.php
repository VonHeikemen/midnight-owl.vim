<?php

class HelloWorldTest extends PHPUnit_Framework_TestCase
{
    /**
     * @var PDO
     */
    private $pdo;

    function __construct() {
      // a comment...
      $one = TRUE;
      $two = FALSE;
      $three = NULL;
    }

    public function setUp()
    {
      $this->pdo = new PDO(
        $GLOBALS['db_dsn'], 
        $GLOBALS['db_username'],
        $GLOBALS['db_password']
      );

      $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      $this->pdo->query("CREATE TABLE hello (what VARCHAR(50) NOT NULL)");
    }

    public function tearDown()
    {
      $callable();
      helloFunction();
      $this->pdo->query("DROP TABLE hello");
    }

    public function testHelloWorld()
    {
      $helloWorld = new HelloWorld($this->pdo);
      HelloWorld::hello();
      $this->assertEquals('Hello World', $helloWorld->hello());
    }

    public function testHello()  
    {
      $helloWorld = new HelloWorld($this->pdo);
      $this->assertEquals('Hello Bar', $helloWorld->hello('Bar'));
    }

    public function testWhat()
    {
      $helloWorld = new HelloWorld($this->pdo);
      $this->assertFalse($helloWorld->what());
      $helloWorld->hello('Bar');
      $this->assertEquals('Bar', $helloWorld->what());
    }
}

//Example
/** Doc comment */,  /* Comment */
__CLASS__, __LINE__, ArrayObject, Directory,
`string`, 
<<<ID
heredoc
ID;

include "os.php";
include_once $path."/os2.php";
include("math.php");
include_once("math2.php");

function pp_out1(int $a){
  $a = 10 + 10.10 + 0xAF + 0b1100;
  $this->vaar = 100;
  $this->proc($var);
  echo [ $a, $b, $aa ]
  echo 'test'."\\";
  if (a){
  }
  else {
  };
}

class f {
  static function a(){
    $n = 10;
    if (a) { a++; }
    i++;
  }
  private function b(){
  }
}

class ff extends f {
  function a(){
    i++;
  }

  function b(){
    if (a>b) {
      a++;
    }
  }
}

function pp_out2($a; $b){
  $i++;
  if ($a){
  }
}


?>
