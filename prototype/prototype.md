# 原型模式

感觉这个设计模式有点凑数的味道，就是从一个对象创建另一个对象。

这里需要纠结浅拷贝和深拷贝的问题。

这个方法对性能可能会有所提高，因为使用clone的时候并不会出发new方法。但这也是问题的所在了，有时候我们希望触发对象的new方法。