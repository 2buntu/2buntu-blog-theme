all: dist dist/bootstrap.min.css dist/bootstrap-theme.min.css
	@echo "Build process is complete."

dist:
	@echo "Preparing output directory..."
	@mkdir dist

dist/bootstrap.min.css: dist/bootstrap.css
	@echo "Minifying bootstrap.css..."
	@cssmin <dist/bootstrap.css >dist/bootstrap.min.css

dist/bootstrap-theme.min.css: dist/bootstrap-theme.css
	@echo "Minifying bootstrap-theme.css..."
	@cssmin <dist/bootstrap-theme.css >dist/bootstrap-theme.min.css

dist/bootstrap.css:
	@echo "Creating bootstrap.css..."
	@lessc less/bootstrap.less dist/bootstrap.css

dist/bootstrap-theme.css:
	@echo "Creating bootstrap-theme.css..."
	@lessc less/theme.less dist/bootstrap-theme.css

