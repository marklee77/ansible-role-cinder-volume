cinder-volume ansible role
==========================

[![Build Status](https://travis-ci.org/marklee77/ansible-role-cinder-volume.svg?branch=master)](https://travis-ci.org/marklee77/ansible-role-cinder-volume)

The purpose of this role is to deploy cinder-volume onto Ubuntu. 

Role Variables
--------------

- openstack_mysql_host: 127.0.0.1
- openstack_mysql_port: 3306
- openstack_identity_region: RegionOne

Example Playbook
-------------------------

    - hosts: all
      sudo: True
      roles:
        - cinder-volume

License
-------

GPLv2

Author Information
------------------

http://stillwell.me
