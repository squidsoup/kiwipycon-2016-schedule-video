
all:
	cd build && convert -geometry 1920x1080 -density 400 ../schedule-video.pdf schedule.png
	cd build && ffmpeg -r 1/10 -i schedule-%01d.png -r 30 -c:v libx264 schedule.mp4

