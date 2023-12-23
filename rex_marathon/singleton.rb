require 'singleton'
# singletonクラスを与えるモジュール

class Message
  include Singleton # モジュールを使用

  def morning # sinngletonによってinstanceが一つのみ作成される
    'Hi, good morning!'
  end
end

p Message.instance.morning # singletonクラスによるインスタンスメソッドを使用する為にこのように呼び出せる