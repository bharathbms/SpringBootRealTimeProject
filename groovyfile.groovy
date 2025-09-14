def build(){
   /* if (fileExists('target')) {
        echo 'Maven build already exists, skipping mvn clean install'
    } else {
        sh 'mvn clean package -DskipTests'
    }*/
    sh 'mvn clean package -DskipTests'
}
return this