# @Author: yourName
# @Date:   2021-12-09 17:53:34
# @Last Modified by:   kirankbee
# @Last Modified time: 2021-12-09 17:55:30


mkdir -p saphire-terraform/bin
cd  saphire-terraform
export WORK_DIR=$PWD
export PATH=$PATH:$WORK_DIR/bin:

export PROJECT_ID=psai-334503
gcloud config set core/project $PROJECT_ID
# Download install : terraform, kpt, kustomize

TERRAFORM_VERSION=0.14.5
wget -q https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip 
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
chmod +x terraform 
sudo mv -f terraform /usr/local/bin 
rm -rf terraform_${TERRAFORM_VERSION}_linux_amd64.zip

curl -o kpt "https://storage.googleapis.com/kpt-dev/latest/linux_amd64/kpt"
chmod +x kpt
mv ./kpt $WORK_DIR/bin

curl -o install_kustomize.sh "https://raw.githubusercontent.com/kubernetes-sigs/kustomize/master/hack/install_kustomize.sh" 
chmod +x install_kustomize.sh && ./install_kustomize.sh
mv ./kustomize $WORK_DIR/bin