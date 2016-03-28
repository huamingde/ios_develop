
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


@interface MyObject : NSObject{
  int memberVar1;
  id memberVar2;
  }
  
  + (return_type) class_method;//类方法
  - (return_type) instance_method1;//实例方法
  - (return_type) instance_method2: (int) p1;//实例方法2
  - (retuen_type) instance_method3: (int) p1 andPar: (int) p2;
  
  @end
  
  //对照
  
  class MyObject : public NSObject
  {
    protected:
      int memberVar1;
      void * memberVar2;
      
    public:
      static return_type class_method();
      
      return_type instance_method1();
      return_type instance_medhod2(int p1);
      return_type instance_method3(int p1, int p2);
  }
