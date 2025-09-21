dir=Chromebook.Lenovo-N23
name=account-joemarcus1999

home=/home/linux
path=$home/$dir/bac/$name

mkdir -p $path

boot0=mmcblk0boot0
boot1=mmcblk0boot1
root=mmcblk0


backup(){
dd status=progress if=/dev/$boot0 | gzip -c > $path/$name.$boot0.img.gz
dd status=progress if=/dev/$boot1 | gzip -c > $path/$name.$boot1.img.gz
dd status=progress if=/dev/$root | gzip -c > $path/$name.$root.img.gz
}

backup