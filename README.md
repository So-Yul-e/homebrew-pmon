# PMON — Process Monitor for macOS

터미널 없이 Mac에서 열린 포트와 프로세스를 한눈에 확인하는 메뉴바 앱입니다.

---

## 주요 기능

### 포트 모니터
- 현재 열린 모든 TCP/UDP 포트를 프로세스 이름, PID, 작업 폴더와 함께 표시
- 5초마다 자동 갱신
- 포트 번호, 프로세스 이름, PID, 태그, 작업 폴더로 검색 및 필터
- 프로세스별 CPU · 메모리 사용량 실시간 표시 (활성 모니터와 동일한 기준)
- CPU · 메모리 미니 그래프 (최근 약 60초)
- CPU ≥ 50% 또는 메모리 ≥ 500 MB 프로세스 강조 표시

### 포트 태그
- PostgreSQL, Redis, MySQL, HTTP, SSH 등 잘 알려진 포트 자동 태그
- 포트별 커스텀 태그 지정 — 앱 재시작 후에도 유지

### 포트 히스토리
- 포트 열림 / 닫힘 이벤트를 실시간으로 기록
- 최근 100개 이벤트 보관

### 포트 알림
- 감시할 포트를 등록해두면 열리거나 닫힐 때 macOS 알림 발송

### Docker 통합
- Docker Engine API로 실행 중인 컨테이너와 포트 바인딩 목록 표시
- 컨테이너 로그 실시간 스트리밍
- 컨테이너 내부 인터랙티브 셸 실행
- 컨테이너 중지 (확인 후 실행)

### 메뉴바 상주
- 메뉴바에 상주 — 메인 창을 닫아도 모니터링 계속
- 현재 열린 포트 수 빠른 확인

---

## 요구 사항

macOS 13.0 Ventura 이상

---

## 설치

```bash
brew install --cask so-yul-e/pmon/pmon
```

## 업데이트

```bash
brew upgrade --cask pmon
```

## 삭제

```bash
brew uninstall --cask pmon
brew untap So-Yul-e/pmon
```

---

[소스 코드 보기 →](https://github.com/So-Yul-e/PMON)