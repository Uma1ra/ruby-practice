begin # 例外をキャッチしたいコードに使用
  raise StandardError.new # わざとエラーを引き起こす
rescue => e # 上記で例外が起こった場合に実行される（今回はエラーを引き起こしている為実行される）
  puts e.class # 例外のクラスを表示（今回はStandardErrorのクラスがアウトプットされる）
end