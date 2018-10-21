# Class: manage_haproxy
# ===========================
#

class manage_haproxy (
    Data  $listen           = $manage_haproxy::params::listen,
    Data  $frontend         = $manage_haproxy::params::frontend,
    Data  $backend          = $manage_haproxy::params::backend,
    Data  $balancermember   = $manage_haproxy::params::balancermember,
    Data  $userlist         = $manage_haproxy::params::userlist,
    Data  $peers            = $manage_haproxy::params::peers,
    Data  $peer             = $manage_haproxy::params::peer,
    Data  $mailers          = $manage_haproxy::params::mailers,
    Data  $mailer           = $manage_haproxy::params::mailer,
    Data  $instance         = $manage_haproxy::params::instance,
    Data  $instance_service = $manage_haproxy::params::instance_service,
    Data  $mapfile          = $manage_haproxy::params::mapfile,
    Data  $defaults         = $manage_haproxy::params::default,
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
