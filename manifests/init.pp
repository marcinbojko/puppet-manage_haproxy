# Class: manage_haproxy
# ===========================
#
# Full description of class manage_haproxy here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'manage_haproxy':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#

class manage_haproxy (
  $listen           = $manage_haproxy::params::listen,
  $frontend         = $manage_haproxy::params::frontend,
  $backend          = $manage_haproxy::params::backend,
  $balancermember   = $manage_haproxy::params::balancermember,
  $userlist         = $manage_haproxy::params::userlist,
  $peers            = $manage_haproxy::params::peers,
  $peer             = $manage_haproxy::params::peer,
  $mailers          = $manage_haproxy::params::mailers,
  $mailer           = $manage_haproxy::params::mailer,
  $instance         = $manage_haproxy::params::instance,
  $instance_service = $manage_haproxy::params::instance_service,
  $mapfile          = $manage_haproxy::params::mapfile,
  $defaults         = $manage_haproxy::params::default,
)
{
  if !empty ($listen) {
      create_resources ('haproxy::listen',$listen)
  }

  if !empty ($frontend) {
      create_resources ('haproxy::frontend',$frontend)
  }
  if !empty ($backend) {
      create_resources ('haproxy::backend',$backend)
  }
  if !empty ($balancermember) {
      create_resources ('haproxy::balancermember',$balancermember)
  }
  if !empty ($userlist) {
      create_resources ('haproxy::userlist',$userlist)
  }
  if !empty ($peers) {
      create_resources ('haproxy::peers',$peers)
  }
  if !empty ($peer) {
      create_resources ('haproxy::peer',$peer)
  }
  if !empty ($mailer) {
      create_resources ('haproxy::mailer',$mailer)
  }
  if !empty ($mailers) {
      create_resources ('haproxy::mailers',$mailers)
  }
  if !empty ($instance) {
      create_resources ('haproxy::instance',$instance)
  }
  if !empty ($instance_service) {
      create_resources ('haproxy::instance_service',$instance_service)
  }
  if !empty ($mapfile) {
      create_resources ('haproxy::mapfile',$mapfile)
  }
  if !empty ($defaults) {
      create_resources ('haproxy::defaults',$defaults)
  }
}
