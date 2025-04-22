post_blog:
	@TITLE=$$(sh get_today_title.sh); \
	if [ -z "$$TITLE" ]; then echo "✅ 모든 제목을 다 사용했습니다!"; exit 0; fi; \
	echo "🎯 오늘의 제목: $$TITLE"; \
	make run_with_title TITLE="$$TITLE"

run_with_title:
	@echo "📤 블로그 생성 및 발행 시작: $(TITLE)"
	# 여기에 블로그 자동 생성 및 워드프레스 발행 로직 넣기
	# 예: python generate_and_post.py "$(TITLE)"
