class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCdnK+f4FPE0/rTgJ9JqxOwgMLjzkrM3A8│✔ 12:15 ~/tutorials/kafka-tutorial/kafka-docker [master|✚ 1] $    
7ltffUpmB8Oks1B/wlqkIzvx4z551Kj+HDOliWy577yp0YFVFWBRTbnVcxopW35Cft6TbER│
w8fzvf+8DvvYrCSqunmSgyx2I48SfBo7KKDpF4bhk2vidnJydfppsLHFkqZU1R0yOZplCaF│
9SCWSunbn09KnBlrv3Fu3CQLGgxZcTNJLTFOeTkldv2JQCg6IhczwU1CTRdcbEGVPwW/bI4│
0aMlVz6TALFYM0Vc1irUa2t9J5N2nEl6/xWw7BO+RZFO5lk/Egqi+8GtwXDXGKNNtV/3d73│
Iks/0VzkNZmuxj9JTYQ6sMYlt'  }  
}
