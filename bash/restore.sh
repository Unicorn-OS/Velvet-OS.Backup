dir=Chromebook.Lenovo-N23
#name=account-joemarcus1999
name=clean.0powerwashed

home=/home/linux
path=$home/$dir/bac/$name

mkdir -p $path

boot0=mmcblk0boot0
boot1=mmcblk0boot1
root=mmcblk0


restore(){
gzip -dc $path/$name.$root.img.gz | dd status=progress of=/dev/$root
}

restore1(){
ls $path/$name.$root.img.gz
}

restore