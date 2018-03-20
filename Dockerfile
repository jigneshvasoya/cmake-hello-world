FROM ubuntu:17.10

RUN apt update -qq && \
	apt -y install cmake make gcc g++ build-essential nano vim git-all \
		git-annex checkinstall

CMD ["bash"]
