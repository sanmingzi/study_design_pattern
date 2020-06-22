# 工厂方法模式

## 典型例子

通过不同的工厂来创建多个不同的对象。

举个例子，我们需要多个梅花螺丝和多个六角螺丝。如果使用简单工厂模式，我们可能会写出如下代码：

```
pin_in_head0 = Factory.create('Pin-in-Head)
pin_in_head1 = Factory.create('Pin-in-Head)
pin_in_head2 = Factory.create('Pin-in-Head)
```

而使用工厂方法，写法如下：

```
pin_in_fac = PinInFactory.new
pin_in_head0 = pin_in_fac.create
pin_in_head1 = pin_in_fac.create
pin_in_head2 = pin_in_fac.create
```

个人认为，这种情况下使用工厂方法模式更好。因为在简单工厂方法里其中的参数是重复的，而使用工厂方法模式可以避免这个问题。

## 工厂方法模式 vs 简单工厂模式

- 用法

简单工厂模式的switch是放在Factory里面的，客户端只需要将type告知Factory即可。

工厂方法模式的switch是在客户端进行的，客户端需要先创建一个工厂对象，然后通过工厂创建对象。
