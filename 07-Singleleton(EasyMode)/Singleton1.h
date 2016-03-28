// .h
#define SingletonH(name) + (instancetype)shared##name;
// .m
// tips: 宏一般只能定义本行的东西，如果需要包含多行的代码，只需要在每一行后面加上 \ 即可 (\代表下一行的内容属于该宏)
#define SingletonM(name) \
static id _instance; \
+ (instancetype)allocWithZone:(struct _NSZone *)zone { \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
});\
return _instance;\
}\
\
+ (instancetype)shared##name {\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instance = [[self alloc] init];\
});\
return _instance;\
}\
\
- (id)copyWithZone:(NSZone *)zone {\
return _instance;\
}
