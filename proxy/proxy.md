# 代理模式

## VUE3 Reactive

vue3 实现 reactive 用的就是代理模式。为对象的属性提供了代理，当我们在修改属性的时候，其实是在调用 proxy 的方法，然后在 proxy 中可以调用其他方法去重新渲染页面。这样就能够实现所谓的数据驱动，只要对数据进行修改，就能够自动更新页面。

## Ruby Proxy

[proxy.rb](src/proxy.rb)

ruby 实现 proxy 其实是非常简单的，这里的关键就是利用 method_missing 。假定有两个对象 obj / obj_proxy ，当我们调用 obj_proxy 的方法时，如果该方法不存在，会触发 method_missing 。我们只需要在 method_missing 的时候，去调用真正的 obj 的方法即可。

ruby 的 delegate 也是使用的 proxy ，方法同上面的代码类似。

## 总结

- 在代理中，我们可以在真正调用对象方法的前、后去调用其他方法。实现类似钩子的功能。最典型的就是 vue3 中的 reactive
