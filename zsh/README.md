`$ chmod +x install`
`$ ./install`

# Modify pam.d file to change shell if coming from bash
$ sudo vim /etc/pam.d/chsh

Replace 
```
auth       required   pam_shells.so
```

with 

```
auth       sufficient   pam_shells.so
```
