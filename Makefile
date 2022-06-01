install:
	bash scripts/fvm-run.sh flutter pub get
generate_code:
	bash scripts/fvm-run.sh flutter pub run build_runner watch --delete-conflicting-outputs
run-debug:
	bash scripts/fvm-run.sh flutter run -t lib/main.dart

setup-fvm:
	dart pub global activate fvm
	fvm install

create-module:
	if [ ! -d "lib/src/${name}" ]; then mkdir -p lib/src/${name} && cp -r module_template/* "lib/src/${name}"; fi
	if [ ! -d "test/src/${name}" ]; then mkdir -p test/src/${name} && cp -r module_template/* "test/src/${name}"; fi