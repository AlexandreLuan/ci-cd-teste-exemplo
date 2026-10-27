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
                stage('Testes da suite 1') {
                    steps {
                        echo 'Executando os testes da suite 1...'
                        bat 'npm run test-suite-1'
                    }
                }
                stage('Testes da suite 2') {
                    steps {
                        echo 'Executando os testes da suite 2...'
                        bat 'npm run test-suite-2'
                    }
                }
                stage('Testes da suite 3') {
                    steps {
                        echo 'Executando os testes da suite 3...'
                        bat 'npm run test-suite-3'
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