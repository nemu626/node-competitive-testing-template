#!/bin/bash

# テストケース番号を引数として受け取る
case_number=$1

# テストケースのディレクトリ
CASE_DIR="cases"

# カラー定義
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 入力ファイルと出力ファイル
input_file="${CASE_DIR}/input${case_number}.txt"
output_file="${CASE_DIR}/output${case_number}.txt"

# 入力ファイルが存在し、かつ空でないかをチェック
if [ -s ${input_file} ]; then
    # 実行時間計測開始
    start_time=$(date +%s%3N)

    # main.jsを実行し、出力を取得
    node main.js < ${input_file} > temp_output.txt

    # 実行時間計測終了
    end_time=$(date +%s%3N)
    execution_time=$((end_time - start_time))

    # 出力を比較
    if diff -q temp_output.txt ${output_file} > /dev/null; then
        echo -e "Case ${case_number}: ${GREEN}Success${NC} (Execution time: ${execution_time}ms)"
    else
        echo -e "Case ${case_number}: ${RED}Fail${NC} (Execution time: ${execution_time}ms)"
        echo -e "${YELLOW}Expected:${NC}"
        cat ${output_file}
        echo -e "${YELLOW}Got:${NC}"
        cat temp_output.txt
    fi
else
    echo -e "Case ${case_number}: ${YELLOW}Skipped${NC} (Input file is missing or empty)"
fi

# 一時ファイルを削除
rm temp_output.txt
