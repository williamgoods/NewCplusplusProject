
run:
	@make ProjectRun --no-print-directory

ProjectRun:
	@bash script/run.sh

clean:
	@rm -rf build
