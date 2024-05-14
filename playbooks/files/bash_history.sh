- name: Update /etc/profile.d/bash_history.sh
  copy:
    src: /git/ansible/playbooks/files/bash_history.sh
    dest: /etc/profile.d/bash_history.sh
    mode: "0644"

