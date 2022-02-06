#sssss

usage() {
	echo "$0 file-path new-name";
	exit 1;
}

[ $# == 2 ] || usage;

cd /storage/emulated/git/.cdn;

git fetch;
if [ -n git status -s ] then
	echo git status;
	exit 2;
fi

mv $1 $2 && git add . && git commit && git push;
