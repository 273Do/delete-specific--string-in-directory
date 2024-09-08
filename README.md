### 📟 指定したディレクトリ内の全てのディレクトリ名から，特定の文字列を一括で削除します．

1. 実行権限を付与(Grant execution permission)  
   `chmod +x script.sh`
2. 引数を設定して実行(Set arguments and execute)  
   `./script.sh 対象ディレクトリのパス 削除したい文字列`

---

例：Dev ディレクトリ(../../../Dev)内の全てのファイルから Project を削除したい  
Example: I want to delete Project from all files in the Dev directory (../../../Dev)

Dev  
∟ JavaProject  
∟ ShellProject  
∟ PHPProject  
`./script.sh ../../../Dev Project`を実行(execution)  
Dev  
∟ Java  
∟ Shell  
∟ PHP
