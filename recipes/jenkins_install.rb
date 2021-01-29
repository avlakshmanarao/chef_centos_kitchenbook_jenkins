yum_repository 'jenkins' do
  url "https://pkg.jenkins.io/redhat-stable"  
  gpgkey "https://pkg.jenkins.io/redhat-stable/jenkins.io.key"
  action :add
end

#yum_key 'jenkins-key' do
#  url "https://jenkins-ci.org/redhat/jenkins-ci.org.key"
#  action :add
#end

package "jenkins"

service "jenkins" do
  supports [:stop, :start, :restart]
  action [:start, :enable]
end