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
            parallel {
                stage('Testes no chrome') {
                    steps {
                        echo 'Executando os testes no chrome...'
                        bat 'npm run test-chrome'
                    }
                }
                stage('Testes no electron') {
                    steps {
                        echo 'Executando os testes no electron...'
                        bat 'npx cypress run --browser electron'
                    }
                }
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