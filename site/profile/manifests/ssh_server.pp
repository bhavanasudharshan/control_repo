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
    key    =>  'AAAAB3NzaC1yc2EAAAADAQABAAABAQC8OLGOkaH6N0cUN2BnSXiiDELSuW9OYylPIBFalhcJhAIfQ8TbZ4ljStRiFs4X4RKBl7I5blC6feacnuja8Z/YZlnGsMM3IVdLFmNu6fn2tDUcC+aHsjh6G32wr/bdXU2gj5U6edIpDS9E5wMs70cdhC7PWvtljTP85eWrjkh6KLVh3k51zJ1ZdZAnfTKLy1N/yllLhMugSZ+UVT1sbz3m/xkqDbkZCoeK5KtWXAiZbwfYBQ4j5ZyXYBwD7V9rqLU7shbgBedcVawrdS5ahlNI6CfZQzNjsQdqjenoWI3binUC5BjSzUV+nAYzI9W1QfXI56jAFUZCldzEVx7Ral3/',
}
}
