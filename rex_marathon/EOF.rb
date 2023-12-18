s = <<'EOF'
Hello,
Ruby
EOF
'EOF'

p s
# 'EOF'は"End Of File"、ファイルの始まりを意味していて、また'EOF'で終わるまでの文字列を全てsに代入
#　EOFで終わっていて、最後の'EOF'は不要