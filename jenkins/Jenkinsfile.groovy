
peline {
    agent any
    stages {
        stage('Build') {
            steps {
                git credentialsId: 'gitlab', url: 'http://192.168.33.10/root/trf.git'
                sh label: 'Image', : "docker build -t ${env.JOB_NAME}:${env.BUILD_NUMBER} -f docker/Dockerfile ."
            }
        }
        stage('Unit Test') {
            steps {
                sh "docker rm -f ${env.JOB_NAME}-test || true"
                sh "docker run -dti -p 65534:8080 --name ${env.JOB_NAME}-test ${env.JOB_NAME}:${env.BUILD_NUMBER}"
                sh "wget --quiet --spider localhost:65534"
                sh "docker rm -f ${env.JOB_NAME}-test || true"
            }
        }
        stage('Integration Test') {
            steps {
                sh "/usr/local/bin/docker-compose -f docker/docker-compose.yml down"
                sh "docker tag ${env.JOB_NAME}:${env.BUILD_NUMBER} trf"
                sh "/usr/local/bin/docker-compose -f docker/docker-compose.yml up -d"
                sleep 30
                sh "docker exec -i docker_mysql_1 mysql -u trf -p4linux trf < db/dump.sql"
                sh "curl -X POST -s -d 'pass=123&username=paramahansa@yogananda.in' http://192.168.33.30:65535/login.php --cookie-jar cookie.txt"
                sh "curl -s --cookie cookie.txt http://192.168.33.30:65535 | grep 'Bem Vindo!'"
                sh "/usr/local/bin/docker-compose -f docker/docker-compose.yml down"
            }
        }
        stage('Deploy') {
            steps {
                sh "docker login -uyunoguthi -p123456ab"
                sh "docker tag trf yunoguthi/trf"
                sh "docker push yunoguthi/trf"
                sh "docker-compose -H 192.168.33.20 stack deploy trf --compose-file=docker-compose-new.yml"
                #sh "rm -rf /srv/nfs/mysql_data/"
            }
        }
    }
}
