pipeline {
    agent any

    tools {
        nodejs 'nodejs'
    }

    stages {
        stage('Instalacao das dependencias') {
            steps {
                echo 'Instalando as dependencias do projeto...'
                bat 'npm install'
            }
        }
        stage('Execucao dos testes') {
            steps {
                echo 'Executando os testes...'
                bat 'npm test'
            }
        }
    }

    post {
        success {
            echo 'Build e testes realizados com sucesso!'
        }
        failure {
            echo 'Falha na execução do pipeline. Verifique os logs para mais detalhes.'
        }
    }
}