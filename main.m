
//Object-C关键字

self
super

property
assign
retain
copy
readonly
strong
weak
natomatic
nonatomatic

interface
synthesize
implementation
end

id


//Animal类的声明

@interface Animal:NSObject{
  int _age;
  NSString * _name;
  }
  @property (nonatomatic, assign) int age;
  @property (nonatomatic, copy) NSString * name;
  
  - (void) run;
  - (void) eat;
  
  @end
  
  
  //类的实现
  
  @implementation Animal
  @synthesize age = _age;
  @synthesize name = _name;
  
  - (void) run
  {
    NSLog(@"run...");
  }
  
  - (void) eat
  {
    NSLog(@"eat...");
  }
  
  @end
  
  //Cat类的声明
  
  @interface Cat: Animal
  - (void) control;
  @end
  //类的实现
  
  @implementation Cat
  
  - (void) run
  {
    NSLog(@"cat");
    [super run];
  }
  
  - (void) eat
  {
    NSLog(@"cat");
    [super eat];
  }
  
  - (void) control
  {
    NSLog(@"--调用run方法--");
    [self run];
    NSLog(@"--调用eat方法--"):
    [self eat];
  }
  @end
  
  
  //主函数
  
  int main(int argc, const char * argv[])
  {
    autoreleasepool{
      NSLog(@"==Animal调用==");
      Animal * animal = [[Cat alloc]init];
      [animal eat];
      
      NSLog(@"==id调用==");
      id cat = [[Cat alloc]init];
      [cat control];
    }
    return 0;
  }
  
  
  //在C++里，送一个消息给对象（或者是说 调用一个方法）的语法如下
  obj.method(argument);
  //Object-C则写成如下
  [obj method : argument];
