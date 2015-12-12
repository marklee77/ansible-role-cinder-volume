cinder-controller ansible role
==============================

[![Build Status](https://travis-ci.org/marklee77/ansible-role-cinder-controller.svg?branch=master)](https://travis-ci.org/marklee77/ansible-role-cinder-controller)

The purpose of this role is to deploy cinder-controller onto Ubuntu. 

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
        - cinder-controller

License
-------

GPLv2

Author Information
------------------

http://stillwell.me
