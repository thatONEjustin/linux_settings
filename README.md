# linux_settings
Just some basic linux stuff! Copy this fie into Obsidian notes for a much better reading experience

### Smooth Tips

typically typing a linux command followed by `-h` or `--help` is a safe way to see the options of each command. the `-<letter>`  is called a `flag` or `option`.

the $ is part of linux itself, not the command to run. 

```shell
$ cp -h 
# this is the copy command
```

outputs:
```
$ cp: invalid option -- 'h'
Try 'cp --help' for more information.
```

many basic linux commands are shared between distros (fedora, ubuntu, arch):
```shell
$ cp /original/file.extension /destination/file.extension 
# copies files/directories

$ mkdir dir
# creates a directory named 'dir' in the current directory you are in

$ cd dir 
# changes the current directory to 'dir' but FROM the current directory. so if you are in /home but /dir is in /Documents/dir then this will show an error

$ ls -flags dir
# lists /dir's contents with the -flags applied to it, each letter is a separate. so think of -flags as -f -l -a -g -s

$ chown -R user:group dir 
# sets a directory to the specified user:group file permission pair. can send empty halves of the pair as to update each attribute respectively. -R applies the user:group recursively

$ rm -rf dir/file.ext
# remove aka delete aka be very very careful with this. prob best to always make a copy of a file when using this. the flags -rf will recursively force the removal. 

# probably even safer to run with the -i flag 
```

A good thing to remember is that `~` leads to your home directory. 

```shell
$ cd ~
# goes to your home directory

$ ls ~
# lists your home directory contents
```

The `.` and `..` commands work with traversing directories, in any base linux command that uses directories.

this example assumes your terminal setup shows your current working directory (CWD) or rather everything to the left of the $ (or your blinking cursor)
```shell
/home $ cp /path/to/.file .
# copy: /path/to/.file to /home/.file

# its important to note that there's a period after .file, thats just indicating to move it to your current directory.
```

```shell
/home $ mv file.ext .. 
# moves: /home/file.ext up 1 directory (so /file.ext in this case)
```

