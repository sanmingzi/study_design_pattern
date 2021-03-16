# 单例模式 Singleton

## Rails.application

[rails.rb](src/rails/rails.rb)

一看到该模式，我第一个想到的就是 Rails.application 。在 rails 框架中 Rails 是一个 module ，而 application 是该 module 的一个属性。当有其他的类继承 Rails::Application 的时候，通过钩子方法 self.inherited 来进行赋值：Rails.application ||= base 。这样就能保证 Rails.application 只有一个，并且只会等于第一个继承 Rails::Application 的类。

## Ruby Singleton

[singleton.rb](src/singleton/singleton.rb)

ruby 中已经内置了 singleton 库，只要在相应的类中 include Singleton 即可。Singleton 主要做了两件事情：

1. 定义了 self.instance ，在该方法中初始化唯一一个实例对象
2. 利用 self.included 钩子方法，屏蔽了原类中的 new 方法

这样就能保证该类只有一个 instance 实例。参考代码 [singleton.rb](# https://github.com/ruby/singleton/blob/master/lib/singleton.rb
)

## 总结

我们用了两种方法来实现单例模式：

1. 使用 module 和 class ，Rails.application
2. include Singleton
