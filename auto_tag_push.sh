#!/bin/bash

# 최신 Git 태그 가져오기 (v* 형태의 태그 중 가장 최신)
latest_tag=$(git tag -l "v*" --sort=-v:refname | head -n 1)

# 태그가 없으면 기본값 설정
if [[ -z "$latest_tag" ]]; then
  major=1
  minor=0
  patch=0
else
  # v1.2.3 형식에서 숫자 추출
  version="${latest_tag#v}"
  IFS='.' read -r major minor patch <<< "$version"
fi

# 패치 버전 증가
((patch++))

# 패치 버전이 10이 되면 마이너 버전 증가
if ((patch >= 10)); then
  patch=0
  ((minor++))
fi

# 마이너 버전이 10이 되면 메이저 버전 증가
if ((minor >= 10)); then
  minor=0
  ((major++))
fi

# 새로운 태그 생성
new_tag="v${major}.${minor}.${patch}"
echo "새로운 태그: $new_tag"

# Git 태그 생성 및 푸시
git tag "$new_tag"
git push origin "$new_tag"
