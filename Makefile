.PHONY : help
help :
	@echo "Usage 'make [TARGET]', see list of targets below:"
	@grep -E '^[a-zA-Z0-9%\_\-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

start: ## start the required infrastructure, make sure the dashboard server is started first
	docker-compose up

stop: ## tear down infrastructure
	docker-compose down

convert-to-hls: ## sample to convert video formats
	cd html/vod ; ffmpeg -i ../file_example_MP4_480_1_5MG.mp4 -map 0 -codec:v libx264 -codec:a aac -f ssegment -segment_list playlist.m3u8 -segment_list_flags +live -segment_time 10 out%03d.ts