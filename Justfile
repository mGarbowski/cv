# List available tasks
default:
    just -l

# Build Polish version of the CV
build-pl:
    mkdir -p build
    xelatex -output-directory=build -jobname=cv_pl main_pl.tex

# Build English version of the CV
build-en:
    mkdir -p build
    xelatex -output-directory=build -jobname=cv_en main_en.tex

# Build both versions of the CV
build: build-pl build-en

# Remove build files
clean:
    rm -rf build

# Install LaTeX dependencies (for Ubuntu)
install:
    sudo apt-get update 
    sudo apt-get install -y texlive-full