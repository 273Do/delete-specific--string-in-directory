# 実行権限を与える
# chmod +x script.sh

# コマンドライン引数を受け取って処理を行う
# 削除する文字列
TARGET_DIR="$1"

# 対象ディレクトリ
remove_str="$2"

# 引数がない場合はエラーを出力して終了
if [ "$#" != 2 ]; then
    echo "Please set the arguments"
    exit 1
fi

# ディレクトリが存在しない場合はエラーを出力して終了
if [ ! -d $TARGET_DIR ]; then
    echo "Directory '$TARGET_DIR' does not exist"
    exit 1
fi

# カレントディレクトリを変更
cd "$TARGET_DIR"

# ディレクトリ内のファイルを全て取得
for file in *; do
    if [[ "$file" == *"$remove_str"* ]]; then

        # ファイル名の変更
        mv "$file" "${file//$remove_str/}"
        echo "Success: $file"
    else
        echo "Not found: $file"
    fi
done
