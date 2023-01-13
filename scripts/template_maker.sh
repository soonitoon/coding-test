#!/usr/bin/env bash

H1='#'
H2='##'
H3='###'

LINK_TEXT='[코테 플랫폼](링크)'

EXPLANATION='문제'
RESTRICTIONS='제한사항'
CODE='제출 코드'
CODE_BLOCK='```javascript```'
PROCESS='풀이 과정'
NEED_TO_KNOW='알고 가자'

function startScript {
    echo '템플렛 만들기를 시작합니다. 📝'

    echo '문제 제목을 입력해주세요(자동으로 파일명이 됩니다):'
    read templateName

    echo '몇 단계 문제인가요? (0~5)'
    read rank

    filePath="./docs/level${rank}/${templateName// /_}.md"
    echo "파일 경로: ${filePath}"
}


function saveText {
    echo $1 >> $filePath
    echo '' >> $filePath
}

function writeLine {
    saveText "${H1} ${templateName}"
    saveText "$LINK_TEXT"
    saveText "${H2} ${EXPLANATION}"
    saveText "${H2} ${RESTRICTIONS}"
    saveText "${H2} ${CODE}"
    saveText "${CODE_BLOCK}"
    saveText "${H3} ${PROCESS}"
    saveText "${H2} ${NEED_TO_KNOW}"
}

function main {
    startScript
    writeLine
}

main