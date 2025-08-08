.PHONY: splash build clean

splash:
	dart run flutter_native_splash:create --path=flutter_native_splash.yaml

build:
	flutter build apk --release

clean:
	flutter clean