# Install our apt repository
apt_repository "psf" do
    uri "http://162.242.213.234/"
    distribution node['lsb']['codename']
    components ["main"]
    key "psf.gpg"
end

# Install the PyPy PPA
apt_repository "pypy" do
    uri "http://ppa.launchpad.net/pypy/ppa/ubuntu"
    distribution node['lsb']['codename']
    components ["main"]
    keyserver "keyserver.ubuntu.com"
    key "2862D0785AFACD8C65B23DB0251104D968854915"
end

# Install Python-Virtualenv
package "python-virtualenv"

# Install dh-virtualenv
package "dh-virtualenv"
