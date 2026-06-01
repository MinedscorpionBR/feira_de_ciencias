programa
{
    inclua biblioteca Util --> u

    funcao inicio()
    {
        inteiro escola
        cadeia tipo
        cadeia tecnica
        cadeia item
        cadeia inimigo
        cadeia nivelEnergia
        cadeia expansao
        cadeia reversao
        cadeia resultado = ""
        cadeia cla
        cadeia dominiosimples
        cadeia reencancaofeiticeiro
        cadeia jaadquirido
        inteiro escolhas

        inteiro forca = 1
        inteiro velocidade = 1
        inteiro resistencia = 1
        inteiro jujutsu = 1
        inteiro energia = 1
        inteiro gastoEnergia = 10
        inteiro bonusFinal = 0
        inteiro quantidadetecnicas
        inteiro i
        inteiro tecnicaRoubada
        inteiro quantidadeItens
        inteiro poderTotal
        inteiro sortecla
        inteiro tecnicaHereditaria

        sortecla = u.sorteia(1,4)
        
        escolha(sortecla)
        {
              caso 1: 
            cla = "Zenin"
              tecnicaHereditaria = u. sorteia(1, 10)

              escolha(tecnicaHereditaria)
              {
               caso 1:
                tecnica = "10 Sombras"
                jujutsu += 200
                resistencia -= 100
                jaadquirido = "sim"
                pare
               caso 2:
                tecnica = "Tecnica da proporção"
                forca += 500
                jaadquirido = "sim"
                pare
                caso 3:
                pare
                 caso 4:
                pare
                 caso 5:
                pare
              }
            pare
              caso 2: 
            cla = "Kamo"
                          tecnicaHereditaria = u. sorteia(1, 5)
                            escolha(tecnicaHereditaria)
              {
                             caso 1:
                tecnica = "Manipulação de Sangue"
                resistencia += 150
                jaadquirido = "sim"
                pare
               caso 2:
                pare
                caso 3:
                pare
                 caso 4:
                pare
                 caso 5:
                pare
        }
            pare
              caso 3: 
            cla = "Gojo"
              tecnicaHereditaria = u. sorteia(1, 5)
                            escolha(tecnicaHereditaria)
              {
                             caso 1:
                tecnica = "Ilimitado"
                jujutsu += 300
                gastoEnergia = gastoEnergia * 100
                jaadquirido = "sim"
                pare
               caso 2:
                pare
                caso 3:
                pare
                 caso 4:
                pare
                 caso 5:
                pare
        }
            pare
              caso 4: 
            cla = "Inumaki"
                          tecnicaHereditaria = u. sorteia(1, 5)
                            escolha(tecnicaHereditaria)
              {
                             caso 1:
                tecnica = "Fala Amaldiçoada"
                jujutsu += 150
                jaadquirido = "sim"
                pare
               caso 2:
                pare
                caso 3:
                pare
                 caso 4:
                pare
                 caso 5:
                pare
        }
            pare
              caso 5: 
            cla = "Shinkage"
            pare
            caso 6: 
            cla = "Nenhum"
            pare
                        caso 7: 
            cla = "Nenhum"
            pare
                        caso 8: 
            cla = "Nenhum"
            pare
                        caso 9: 
            cla = "Nenhum"
            pare
                        caso 10: 
            cla = "Nenhum"
            pare
        }


      inteiro sorteTipo = u.sorteia(1,4)

        escolha(sorteTipo)
        {
            caso 1:
                tipo = "Feiticeiro"
                forca += 100
                velocidade += 25
                resistencia += 10
                jujutsu -= 500
                pare

            caso 2:
                tipo = "Maldição"

                jujutsu += 2000
                forca -= 100
                velocidade -= 250
                resistencia -= 100
                pare

            caso 3:
                tipo = "Híbrido"

                jujutsu += 100
                forca -=200
                velocidade += 50
                resistencia +=100
                pare
                 caso 4:
                tipo = "Simuriano"

                jujutsu += 100
                resistencia +=100
                pare
        }

        escreva("=== SIMULADOR JUJUTSU KAISEN === \n\n")

se (tipo == "Maldição") {

    escreva("Você entrou automaticamente no time Maldições!\n")
    escreva("O plano é selar Gojo e libertar Sukuna em 31 de outubro.\n")
    jujutsu +=2000

}

senao {

    escreva("Escolha seu time:\n")
    escreva("1 - Time Maldições\n")
    escreva("2 - Time Feiticeiros\n")

    leia(escolhas)

    se (escolhas == 1) {

        escreva("Você entrou no time maldições/Mestre de maldições!\n")
        escreva("O plano é selar Gojo e libertar Sukuna em 31 de outubro.\n")
        tipo = "Mestre de Maldição"
         forca += 400
            velocidade += 400
            resistencia += 400
            jujutsu += 400

    }

    senao se (escolhas == 2) {

        escreva("Escolha a unidade da escola:\n")
        escreva("3 - Tokyo\n")
        escreva("4 - Kyoto\n")

        leia(escola)

        se (escola == 3) {

            escreva("\nVocê entrou na escola de Tokyo, boa escolha,Feiticeiro 🔥\n")

            forca += 500
            velocidade += 500
            resistencia += 500
            jujutsu += 500

        }

        senao se (escola == 4) {

            escreva("\nVocê entrou na escola de Kyoto, péssima escolha,Feiticeiro ☠️\n")

            forca -= 500
            velocidade -= 500
            resistencia -= 500
            jujutsu -= 500

        }

    }

}

    
        inteiro sorteEnergia = u.sorteia(1,10)

        escolha(sorteEnergia)
        {
            caso 1:
                nivelEnergia = "Toji"
                energia = energia * 0
                forca += 600
                velocidade += 60
                resistencia += 400
                gastoEnergia = 0
               jaadquirido = "sim"
                pare

            caso 2:
                nivelEnergia = "Maki sem despertar"
                energia = 5
                forca += 25
                velocidade += 35
                resistencia += 20
                gastoEnergia = 0
               jaadquirido = "sim"
                pare

            caso 3:
                nivelEnergia = "Yuji"
                energia = 10
                forca += 25
                velocidade += 35
                resistencia += 20
                pare

            caso 4:
                nivelEnergia = "Gojo"
                energia = 100
                pare

            caso 5:
                nivelEnergia = "Megumi"
                energia = 250
                pare

            caso 6:
                nivelEnergia = "Mahito"
                energia = 400
                pare

            caso 7:
                nivelEnergia = "Yuji despertado"
                energia = 600
                pare

            caso 8:
                nivelEnergia = "Yuta"
                energia = 750
                pare

            caso 9:
                nivelEnergia = "Sukuna"
                energia = 1500
                pare
              caso 10:
                nivelEnergia = "Mechamaru"
                energia = 3000
                pare
        }
        se(jaadquirido == "sim"){

        }

        senao {
        inteiro sorteTecnica = u.sorteia(1,44)

        escolha(sorteTecnica)
        {
            caso 1:
                tecnica = "Ilimitado"
                jujutsu += 300
                gastoEnergia = gastoEnergia * 100
                pare

            caso 2:
                tecnica = "10 Sombras"
                jujutsu += 200
                resistencia -= 100
                pare

            caso 3:
                tecnica = "Fala Amaldiçoada"
                jujutsu += 150
                pare

            caso 4:
                tecnica = "Manipulação de Sangue"
                resistencia += 150
                pare

            caso 5:
                tecnica = "Chamas do Desastre"
                jujutsu += 350
                pare

            caso 6:
                tecnica = "Santuario"

                forca += 400
                resistencia += 400
                pare
               caso 7:
                tecnica = " Invocação de Bestas Auspiciosas"

                forca -= 400
                resistencia -= 400
                jujutsu +=500
                pare
               caso 8:
                tecnica = " Sistema anti-gravidade"

                forca += 400
                resistencia -= 400
                jujutsu +=500
                pare
                caso 9:
                tecnica = "Transfiguração inerte"

                forca += 400
                resistencia += 400
                jujutsu +=500
                pare
                caso 10:
                tecnica = "Imortalidade"

                forca -= 100
                resistencia += 999
                jujutsu +=500
                pare
                caso 11:
                tecnica = "Inverso"

                forca -= 100
                resistencia -= 500
                jujutsu +=500
                pare
                caso 12:
                tecnica = "Feitiçaria de Projeção"

                forca -= 100
                resistencia -= 500
                velocidade +=1000
                pare
                caso 13:
                tecnica = "manipulação de corvos"

                forca -= 100
                resistencia -= 500
                jujutsu +=500
                pare
                caso 14:
                tecnica = "Coragem Incendiária"

                forca += 100
                resistencia += 50
                jujutsu +=50
                pare
                caso 15:
                tecnica = "Boogie Woogie"

                forca += 100
                resistencia += 50
                jujutsu +=200
                caso 16:
                tecnica = "Encontro Amoroso"

                forca -= 100
                resistencia -= 50
                velocidade -=100
                jujutsu +=200
                pare
                caso 17:
                tecnica = "Garoto da Marmelada"

                forca -= 100
                resistencia -= 500
                velocidade -=100
                jujutsu +=200
                pare
                caso 18:
                tecnica = "Milagres"

                forca -= 100
                resistencia -= 500
                velocidade -=100
                jujutsu +=100
                pare
                caso 19:
                tecnica = "Besta mitica ambar"

                forca += 100
                resistencia += 50
                velocidade += 1000
                jujutsu += 400
                pare
                caso 20:
                tecnica = "Tecnica de clonagem"
                jujutsu += 100
                pare
               caso 21:
                tecnica = "Super-comediante"
                jujutsu -= 100
                forca += 1000
                resistencia += 1000
                velocidade += 100
                pare
                caso 22:
                tecnica = "Construção"
                jujutsu += 500
                forca -= 100
                resistencia -= 500
                velocidade += 100
                pare
                caso 23:
                tecnica = "Descarga de Energia Amaldiçoada"
                jujutsu += 100
                pare
                caso 24:
                tecnica = "Manipulação de Marionetes"
                jujutsu += 1000
                pare
                caso 25:
                tecnica = "Uzumaki"
                jujutsu += 800

               inteiro maldicoesConsumidas
               inteiro bonusUzumaki

               maldicoesConsumidas = u.sorteia(1,1000)

               escreva("\nVocê consumiu ", maldicoesConsumidas, " maldições 👹\n")
              
               bonusUzumaki = maldicoesConsumidas / 2

                bonusFinal += bonusUzumaki

                se(maldicoesConsumidas >= 900)
                {
                escreva("Você virou Geto ☠️\n")
               }
                senao se(maldicoesConsumidas >= 500)
              {
               escreva("50% geto\n")
               }
                senao se(maldicoesConsumidas >= 100)
              {
               escreva("Você já é considerado um desastre ambulante\n")
                }
               senao
               {
               escreva("Seu Uzumaki ta passando fome 💀\n")
                }
                pare
                caso 26:
                tecnica = "Canção de Oração"
                forca += 100
                pare
                caso 27:
                tecnica = "Tecnica da proporção"
                forca += 500
                pare
                caso 28:
                tecnica = "Tecnica do apodrecimento"
                forca += 500
                pare
                caso 29:
                tecnica = "Mares do desastre"
                jujutsu += 500
                pare
                caso 30:
                tecnica = "Plantas do desastre"
                jujutsu += 200
                pare
                caso 31:
                tecnica = "manipulação do ceu"
                jujutsu += 200
                forca -=200
                pare
                caso 32:
                tecnica = "Area proibida solo"
                jujutsu += 2000
                forca -=200
                pare
                caso 33:
                tecnica = "Furia Estelar"
                jujutsu += 2000
                forca +=2000
                pare
                caso 34:
                tecnica = "Feitiço do boneco de palha"
                jujutsu += 200
                pare
                caso 35:
                tecnica = "Técnica de sessão espírita"
                jujutsu += 200
                pare
                caso 36:
                tecnica = "Jogo da morte ociosa"
               jujutsu += 70
               expansao = "Sim"

               escreva("\nEXPANSÃO DE DOMÍNIO AUTOMÁTICA!\n")
               escreva("🎰 IDLE DEATH GAMBLE 🎰\n")

               inteiro sorteHakari
               sorteHakari = u.sorteia(1,100)

               se(sorteHakari >= 80)
               {
               escreva("\n🎰 JACKPOT!! 🎰\n")
               escreva("Sua sorte foi absurda!\n")

                energia += 99999

                reversao = "Sim"

               bonusFinal += 1000

               jujutsu += 100
                resistencia += 100
                velocidade += 50

                escreva("Você ganhou energia amaldiçoada infinita por um tempo 💀\n")
                }
                senao
                {
                escreva("\nSem jackpot...\n")
                jujutsu += 20
                resistencia += 20
                velocidade += 10

                escreva("Você não ganhou nada. Mais sorte na proxima vez.\n")
                }
                pare
                    caso 37:

                    tecnica = "Sentença Mortal"
                    jujutsu += 65
                    expansao = "Sim"

                  escreva("\n⚖️ EXPANSÃO DE DOMÍNIO: SENTENÇA MORAL ⚖️\n")

                  inteiro casoJulgamento
                  inteiro resposta

                    casoJulgamento = u.sorteia(1,5)

                    escolha(casoJulgamento)
                    {
                    caso 1:

                    escreva("\nCaso: O réu é acusado de roubar uma loja de conveniência.\n")
                    escreva("Réu: eu estava com fome.\n")
                    escreva("1 - Ele roubou para sobreviver\n")
                    escreva("2 - Roubo é roubo\n")
                    escreva("3 - F O D A - S E\n")

                    leia(resposta)

                  se(resposta == 1)
                    {
                    escreva("\nJuiz: caso encerrado.\n")
                    escreva("Você perdeu o julgamento ☠️\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: Culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 300
                    jujutsu += 200
                    bonusFinal += 100
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO. PENA DE MORTE.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 30
                    jujutsu += 20
                    bonusFinal += 2000
                }

                pare

            caso 2:

                escreva("\nCaso: Assassinato de feiticeiros.\n")
                escreva("Réu: eles vieram atrás de mim primeiro.\n")
                escreva("1 - Foi legítima defesa\n")
                escreva("2 - Assassinato continua sendo crime\n")
                escreva("3 - Nada justifica privar uma vida\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare

            caso 3:

                escreva("\nCaso: Destruição de propriedade pública.\n")
                escreva("Réu: eu não fiz isso.\n")
                escreva("1 - Foi sem querer? ah bom\n")
                escreva("2 - as provas dizem o contrario\n")
                escreva("3 - então o predio caiu sozinho?\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare

            caso 4:

                escreva("\nCaso: Massacre em Shibuya.\n")
                escreva("Réu: eu sou culpado! eu matei aquela gente.\n")
                escreva("1 - Foi culpa do Sukuna...\n")
                escreva("2 - EZ\n")
                escreva("3 - rapaz...\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare

            caso 5:

                escreva("\nCaso: Sonegação de imposto.\n")
                escreva("Réu: eu só queria sobreviver no sistema.\n")
                escreva("1 - Imposto é roubo\n")
                escreva("2 - Falsificação fiscal continua sendo crime\n")
                escreva("3 - Prepara seu anus\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare
              }

                pare
                caso 38:
                tecnica = "G Warstaff"
                jujutsu += 200
                velocidade +=100
                pare
                caso 39:
                tecnica = "Pegador de corações"
                jujutsu += 200
                pare
                caso 40:
                tecnica = "Manipulação de gelo"
                jujutsu += 800
                pare
                caso 41:
                tecnica = "Extinção de tecnica"
                jujutsu += 800
                pare
                caso 42:
                tecnica = "Manipulação de ferramentas"
                jujutsu += 800
                pare
                
              caso 43:
                tecnica = "Cópia"
                jujutsu += 1000
                inteiro quantidadeTecnicas
                quantidadeTecnicas = u.sorteia(0,44)

               escreva("\nRika consumiu ", quantidadeTecnicas, " partes de corpos diferentes! você terá as tecnicas deles\n")

                inteiro i

                para(i = 1; i <= quantidadeTecnicas; i++)
                {
                inteiro tecnicacopiada
                tecnicacopiada = u.sorteia(1,44)

               escolha(tecnicacopiada)
               {
                caso 1:
                tecnica = "Ilimitado"
                jujutsu += 300
                gastoEnergia = gastoEnergia * 100
                pare

            caso 2:
                tecnica = "10 Sombras"
                jujutsu += 200
                resistencia -= 100
                pare

            caso 3:
                tecnica = "Fala Amaldiçoada"
                jujutsu += 150
                pare

            caso 4:
                tecnica = "Manipulação de Sangue"
                resistencia += 150
                pare

            caso 5:
                tecnica = "Chamas do Desastre"
                jujutsu += 350
                pare

            caso 6:
                tecnica = "Santuario"

                forca += 400
                resistencia += 400
                pare
               caso 7:
                tecnica = " Invocação de Bestas Auspiciosas"

                forca -= 400
                resistencia -= 400
                jujutsu +=500
                pare
               caso 8:
                tecnica = " Sistema anti-gravidade"

                forca += 400
                resistencia -= 400
                jujutsu +=500
                pare
                caso 9:
                tecnica = "Transfiguração inerte"

                forca += 400
                resistencia += 400
                jujutsu +=500
                pare
                caso 10:
                tecnica = "Imortalidade"

                forca -= 100
                resistencia += 999
                jujutsu +=500
                pare
                caso 11:
                tecnica = "Inverso"

                forca -= 100
                resistencia -= 500
                jujutsu +=500
                pare
                caso 12:
                tecnica = "Feitiçaria de Projeção"

                forca -= 100
                resistencia -= 500
                velocidade +=1000
                pare
                caso 13:
                tecnica = "manipulação de corvos"

                forca -= 100
                resistencia -= 500
                jujutsu +=500
                pare
                caso 14:
                tecnica = "Coragem Incendiária"

                forca += 100
                resistencia += 50
                jujutsu +=50
                pare
                caso 15:
                tecnica = "Boogie Woogie"

                forca += 100
                resistencia += 50
                jujutsu +=200
                caso 16:
                tecnica = "Encontro Amoroso"

                forca -= 100
                resistencia -= 50
                velocidade -=100
                jujutsu +=200
                pare
                caso 17:
                tecnica = "Garoto da Marmelada"

                forca -= 100
                resistencia -= 500
                velocidade -=100
                jujutsu +=200
                pare
                caso 18:
                tecnica = "Milagres"

                forca -= 100
                resistencia -= 500
                velocidade -=100
                jujutsu +=100
                pare
                caso 19:
                tecnica = "Besta mitica ambar"

                forca += 100
                resistencia += 50
                velocidade += 1000
                jujutsu += 400
                pare
                caso 20:
                tecnica = "Tecnica de clonagem"
                jujutsu += 100
                pare
               caso 21:
                tecnica = "Super-comediante"
                jujutsu -= 100
                forca += 1000
                resistencia += 1000
                velocidade += 100
                pare
                caso 22:
                tecnica = "Construção"
                jujutsu += 500
                forca -= 100
                resistencia -= 500
                velocidade += 100
                pare
                caso 23:
                tecnica = "Descarga de Energia Amaldiçoada"
                jujutsu += 100
                pare
                caso 24:
                tecnica = "Manipulação de Marionetes"
                jujutsu += 1000
                pare
                caso 25:
                tecnica = "Uzumaki"
                jujutsu += 800

               inteiro maldicoesConsumidas
               inteiro bonusUzumaki

               maldicoesConsumidas = u.sorteia(1,1000)

               escreva("\nVocê consumiu ", maldicoesConsumidas, " maldições 👹\n")
              
               bonusUzumaki = maldicoesConsumidas / 2

                bonusFinal += bonusUzumaki

                se(maldicoesConsumidas >= 900)
                {
                escreva("Você virou Geto ☠️\n")
               }
                senao se(maldicoesConsumidas >= 500)
              {
               escreva("50% geto\n")
               }
                senao se(maldicoesConsumidas >= 100)
              {
               escreva("Você já é considerado um desastre ambulante\n")
                }
               senao
               {
               escreva("Seu Uzumaki ta passando fome 💀\n")
                }
                pare
                caso 26:
                tecnica = "Canção de Oração"
                forca += 100
                pare
                caso 27:
                tecnica = "Tecnica da proporção"
                forca += 500
                pare
                caso 28:
                tecnica = "Tecnica do apodrecimento"
                forca += 500
                pare
                caso 29:
                tecnica = "Mares do desastre"
                jujutsu += 500
                pare
                caso 30:
                tecnica = "Plantas do desastre"
                jujutsu += 200
                pare
                caso 31:
                tecnica = "manipulação do ceu"
                jujutsu += 200
                forca -=200
                pare
                caso 32:
                tecnica = "Area proibida solo"
                jujutsu += 2000
                forca -=200
                pare
                caso 33:
                tecnica = "Furia Estelar"
                jujutsu += 2000
                forca +=2000
                pare
                caso 34:
                tecnica = "Feitiço do boneco de palha"
                jujutsu += 200
                pare
                caso 35:
                tecnica = "Técnica de sessão espírita"
                jujutsu += 200
                pare
                caso 36:
                tecnica = "Jogo da morte ociosa"
               jujutsu += 70
               expansao = "Sim"

               escreva("\nEXPANSÃO DE DOMÍNIO AUTOMÁTICA!\n")
               escreva("🎰 IDLE DEATH GAMBLE 🎰\n")

               inteiro sorteHakari
               sorteHakari = u.sorteia(1,100)

               se(sorteHakari >= 80)
               {
               escreva("\n🎰 JACKPOT!! 🎰\n")
               escreva("Sua sorte foi absurda!\n")

                energia += 99999

                reversao = "Sim"

               bonusFinal += 1000

               jujutsu += 100
                resistencia += 100
                velocidade += 50

                escreva("Você ganhou energia amaldiçoada infinita por um tempo 💀\n")
                }
                senao
                {
                escreva("\nSem jackpot...\n")
                jujutsu += 20
                resistencia += 20
                velocidade += 10

                escreva("Você não ganhou nada. Mais sorte na proxima vez.\n")
                }
                pare
                    caso 37:

                    tecnica = "Sentença Mortal"
                    jujutsu += 65
                    expansao = "Sim"

                  escreva("\n⚖️ EXPANSÃO DE DOMÍNIO: SENTENÇA MORAL ⚖️\n")

                  inteiro casoJulgamento
                  inteiro resposta

                    casoJulgamento = u.sorteia(1,5)

                    escolha(casoJulgamento)
                    {
                    caso 1:

                    escreva("\nCaso: O réu é acusado de roubar uma loja de conveniência.\n")
                    escreva("Réu: eu estava com fome.\n")
                    escreva("1 - Ele roubou para sobreviver\n")
                    escreva("2 - Roubo é roubo\n")
                    escreva("3 - F O D A - S E\n")

                    leia(resposta)

                  se(resposta == 1)
                    {
                    escreva("\nJuiz: caso encerrado.\n")
                    escreva("Você perdeu o julgamento ☠️\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: Culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 300
                    jujutsu += 200
                    bonusFinal += 100
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO. PENA DE MORTE.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 30
                    jujutsu += 20
                    bonusFinal += 2000
                }

                pare

            caso 2:

                escreva("\nCaso: Assassinato de feiticeiros.\n")
                escreva("Réu: eles vieram atrás de mim primeiro.\n")
                escreva("1 - Foi legítima defesa\n")
                escreva("2 - Assassinato continua sendo crime\n")
                escreva("3 - Nada justifica privar uma vida\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare

            caso 3:

                escreva("\nCaso: Destruição de propriedade pública.\n")
                escreva("Réu: eu não fiz isso.\n")
                escreva("1 - Foi sem querer? ah bom\n")
                escreva("2 - as provas dizem o contrario\n")
                escreva("3 - então o predio caiu sozinho?\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare

            caso 4:

                escreva("\nCaso: Massacre em Shibuya.\n")
                escreva("Réu: eu sou culpado! eu matei aquela gente.\n")
                escreva("1 - Foi culpa do Sukuna...\n")
                escreva("2 - EZ\n")
                escreva("3 - rapaz...\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare

            caso 5:

                escreva("\nCaso: Sonegação de imposto.\n")
                escreva("Réu: eu só queria sobreviver no sistema.\n")
                escreva("1 - Imposto é roubo\n")
                escreva("2 - Falsificação fiscal continua sendo crime\n")
                escreva("3 - Prepara seu anus\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare
              }

                pare
                caso 38:
                tecnica = "G Warstaff"
                jujutsu += 200
                velocidade +=100
                pare
                caso 39:
                tecnica = "Pegador de corações"
                jujutsu += 200
                pare
                caso 40:
                tecnica = "Manipulação de gelo"
                jujutsu += 800
                pare
                caso 41:
                tecnica = "Extinção de tecnica"
                jujutsu += 800
                pare
                caso 42:
                tecnica = "Manipulação de ferramentas"
                jujutsu += 800
                caso 43:
                tecnica = "Transplante de cerebro"
                jujutsu += 1000

               escreva("\ndesculpe sensei, você vai acabar igual seu amigo\n")
               
                jujutsu += 300
                gastoEnergia = gastoEnergia * 100
                item = "6 Olhos"

                gastoEnergia = gastoEnergia * 0.1
                jujutsu += 40
                pare

                }
                }
                pare
                caso 44:
                tecnica = "Transplante de cerebro"
                jujutsu += 1000

                quantidadetecnicas = u.sorteia(0,44)

               escreva("\nKVocê andou por ", quantidadetecnicas, " corpos! você terá as tecnicas deles\n")


                para(i = 1 ; i <= quantidadetecnicas; i++)
                {
                tecnicaRoubada = u.sorteia(1,44)

               escolha(tecnicaRoubada)
               {
                 caso 1:
                tecnica = "Ilimitado"
                jujutsu += 300
                gastoEnergia = gastoEnergia * 100
                pare

            caso 2:
                tecnica = "10 Sombras"
                jujutsu += 200
                resistencia -= 100
                pare

            caso 3:
                tecnica = "Fala Amaldiçoada"
                jujutsu += 150
                pare

            caso 4:
                tecnica = "Manipulação de Sangue"
                resistencia += 150
                pare

            caso 5:
                tecnica = "Chamas do Desastre"
                jujutsu += 350
                pare

            caso 6:
                tecnica = "Santuario"

                forca += 400
                resistencia += 400
                pare
               caso 7:
                tecnica = " Invocação de Bestas Auspiciosas"

                forca -= 400
                resistencia -= 400
                jujutsu +=500
                pare
               caso 8:
                tecnica = " Sistema anti-gravidade"

                forca += 400
                resistencia -= 400
                jujutsu +=500
                pare
                caso 9:
                tecnica = "Transfiguração inerte"

                forca += 400
                resistencia += 400
                jujutsu +=500
                pare
                caso 10:
                tecnica = "Imortalidade"

                forca -= 100
                resistencia += 999
                jujutsu +=500
                pare
                caso 11:
                tecnica = "Inverso"

                forca -= 100
                resistencia -= 500
                jujutsu +=500
                pare
                caso 12:
                tecnica = "Feitiçaria de Projeção"

                forca -= 100
                resistencia -= 500
                velocidade +=1000
                pare
                caso 13:
                tecnica = "manipulação de corvos"

                forca -= 100
                resistencia -= 500
                jujutsu +=500
                pare
                caso 14:
                tecnica = "Coragem Incendiária"

                forca += 100
                resistencia += 50
                jujutsu +=50
                pare
                caso 15:
                tecnica = "Boogie Woogie"

                forca += 100
                resistencia += 50
                jujutsu +=200
                caso 16:
                tecnica = "Encontro Amoroso"

                forca -= 100
                resistencia -= 50
                velocidade -=100
                jujutsu +=200
                pare
                caso 17:
                tecnica = "Garoto da Marmelada"

                forca -= 100
                resistencia -= 500
                velocidade -=100
                jujutsu +=200
                pare
                caso 18:
                tecnica = "Milagres"

                forca -= 100
                resistencia -= 500
                velocidade -=100
                jujutsu +=100
                pare
                caso 19:
                tecnica = "Besta mitica ambar"

                forca += 100
                resistencia += 50
                velocidade += 1000
                jujutsu += 400
                pare
                caso 20:
                tecnica = "Tecnica de clonagem"
                jujutsu += 100
                pare
               caso 21:
                tecnica = "Super-comediante"
                jujutsu -= 100
                forca += 1000
                resistencia += 1000
                velocidade += 100
                pare
                caso 22:
                tecnica = "Construção"
                jujutsu += 500
                forca -= 100
                resistencia -= 500
                velocidade += 100
                pare
                caso 23:
                tecnica = "Descarga de Energia Amaldiçoada"
                jujutsu += 100
                pare
                caso 24:
                tecnica = "Manipulação de Marionetes"
                jujutsu += 1000
                pare
                caso 25:
                tecnica = "Uzumaki"
                jujutsu += 800

               inteiro maldicoesConsumidas
               inteiro bonusUzumaki

               maldicoesConsumidas = u.sorteia(1,1000)

               escreva("\nVocê consumiu ", maldicoesConsumidas, " maldições 👹\n")
              
               bonusUzumaki = maldicoesConsumidas / 2

                bonusFinal += bonusUzumaki

                se(maldicoesConsumidas >= 900)
                {
                escreva("Você virou Geto ☠️\n")
               }
                senao se(maldicoesConsumidas >= 500)
              {
               escreva("50% geto\n")
               }
                senao se(maldicoesConsumidas >= 100)
              {
               escreva("Você já é considerado um desastre ambulante\n")
                }
               senao
               {
               escreva("Seu Uzumaki ta passando fome 💀\n")
                }
                pare
                caso 26:
                tecnica = "Canção de Oração"
                forca += 100
                pare
                caso 27:
                tecnica = "Tecnica da proporção"
                forca += 500
                pare
                caso 28:
                tecnica = "Tecnica do apodrecimento"
                forca += 500
                pare
                caso 29:
                tecnica = "Marés do desastre"
                jujutsu += 500
                pare
                caso 30:
                tecnica = "Plantas do desastre"
                jujutsu += 200
                pare
                caso 31:
                tecnica = "manipulação do ceu"
                jujutsu += 200
                forca -=200
                pare
                caso 32:
                tecnica = "Area proibida solo"
                jujutsu += 2000
                forca -=200
                pare
                caso 33:
                tecnica = "Furia Estelar"
                jujutsu += 2000
                forca +=2000
                pare
                caso 34:
                tecnica = "Feitiço do boneco de palha"
                jujutsu += 200
                pare
                caso 35:
                tecnica = "Técnica de sessão espírita"
                jujutsu += 200
                pare
                caso 36:
                tecnica = "Jogo da morte ociosa"
               jujutsu += 70
               expansao = "Sim"

               escreva("\nEXPANSÃO DE DOMÍNIO AUTOMÁTICA!\n")
               escreva("🎰 IDLE DEATH GAMBLE 🎰\n")

               inteiro sorteHakari
               sorteHakari = u.sorteia(1,100)

               se(sorteHakari >= 80)
               {
               escreva("\n🎰 JACKPOT!! 🎰\n")
               escreva("Sua sorte foi absurda!\n")

                energia += 99999

                reversao = "Sim"

               bonusFinal += 1000

               jujutsu += 100
                resistencia += 100
                velocidade += 50

                escreva("Você ganhou energia amaldiçoada infinita por um tempo 💀\n")
                }
                senao
                {
                escreva("\nSem jackpot...\n")
                jujutsu += 20
                resistencia += 20
                velocidade += 10

                escreva("Você não ganhou nada. Mais sorte na proxima vez.\n")
                }
                pare
                    caso 37:

                    tecnica = "Sentença Mortal"
                    jujutsu += 65
                    expansao = "Sim"

                  escreva("\n⚖️ EXPANSÃO DE DOMÍNIO: SENTENÇA MORAL ⚖️\n")

                  inteiro casoJulgamento
                  inteiro resposta

                    casoJulgamento = u.sorteia(1,5)

                    escolha(casoJulgamento)
                    {
                    caso 1:

                    escreva("\nCaso: O réu é acusado de roubar uma loja de conveniência.\n")
                    escreva("Réu: eu estava com fome.\n")
                    escreva("1 - Ele roubou para sobreviver\n")
                    escreva("2 - Roubo é roubo\n")
                    escreva("3 - F O D A - S E\n")

                    leia(resposta)

                  se(resposta == 1)
                    {
                    escreva("\nJuiz: caso encerrado.\n")
                    escreva("Você perdeu o julgamento ☠️\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: Culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 300
                    jujutsu += 200
                    bonusFinal += 100
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO. PENA DE MORTE.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 30
                    jujutsu += 20
                    bonusFinal += 2000
                }

                pare

            caso 2:

                escreva("\nCaso: Assassinato de feiticeiros.\n")
                escreva("Réu: eles vieram atrás de mim primeiro.\n")
                escreva("1 - Foi legítima defesa\n")
                escreva("2 - Assassinato continua sendo crime\n")
                escreva("3 - Nada justifica privar uma vida\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare

            caso 3:

                escreva("\nCaso: Destruição de propriedade pública.\n")
                escreva("Réu: eu não fiz isso.\n")
                escreva("1 - Foi sem querer? ah bom\n")
                escreva("2 - as provas dizem o contrario\n")
                escreva("3 - então o predio caiu sozinho?\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare

            caso 4:

                escreva("\nCaso: Massacre em Shibuya.\n")
                escreva("Réu: eu sou culpado! eu matei aquela gente.\n")
                escreva("1 - Foi culpa do Sukuna...\n")
                escreva("2 - EZ\n")
                escreva("3 - rapaz...\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare

            caso 5:

                escreva("\nCaso: Sonegação de imposto.\n")
                escreva("Réu: eu só queria sobreviver no sistema.\n")
                escreva("1 - Imposto é roubo\n")
                escreva("2 - Falsificação fiscal continua sendo crime\n")
                escreva("3 - Prepara seu anus\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare
              }

                pare
                caso 38:
                tecnica = "G Warstaff"
                jujutsu += 200
                velocidade +=100
                pare
                caso 39:
                tecnica = "Pegador de corações"
                jujutsu += 200
                pare
                caso 40:
                tecnica = "Manipulação de gelo"
                jujutsu += 800
                pare
                caso 41:
                tecnica = "Extinção de tecnica"
                jujutsu += 800
                pare
                caso 42:
                tecnica = "Manipulação de ferramentas"
                jujutsu += 800
                pare
                
              caso 43:
                tecnica = "Cópia"
                jujutsu += 1000
                inteiro quantidadeTecnicas
                quantidadeTecnicas = u.sorteia(0,44)

               escreva("\nRika consumiu ", quantidadeTecnicas, " partes de corpos diferentes! você terá as tecnicas deles\n")

                inteiro i

                para(i = 1; i <= quantidadeTecnicas; i++)
                {
                inteiro tecnicacopiada
                tecnicacopiada = u.sorteia(1,44)

               escolha(tecnicacopiada)
               {
                caso 1:
                tecnica = "Ilimitado"
                jujutsu += 300
                gastoEnergia = gastoEnergia * 100
                pare

            caso 2:
                tecnica = "10 Sombras"
                jujutsu += 200
                resistencia -= 100
                pare

            caso 3:
                tecnica = "Fala Amaldiçoada"
                jujutsu += 150
                pare

            caso 4:
                tecnica = "Manipulação de Sangue"
                resistencia += 150
                pare

            caso 5:
                tecnica = "Chamas do Desastre"
                jujutsu += 350
                pare

            caso 6:
                tecnica = "Santuario"

                forca += 400
                resistencia += 400
                pare
               caso 7:
                tecnica = " Invocação de Bestas Auspiciosas"

                forca -= 400
                resistencia -= 400
                jujutsu +=500
                pare
               caso 8:
                tecnica = " Sistema anti-gravidade"

                forca += 400
                resistencia -= 400
                jujutsu +=500
                pare
                caso 9:
                tecnica = "Transfiguração inerte"

                forca += 400
                resistencia += 400
                jujutsu +=500
                pare
                caso 10:
                tecnica = "Imortalidade"

                forca -= 100
                resistencia += 999
                jujutsu +=500
                pare
                caso 11:
                tecnica = "Inverso"

                forca -= 100
                resistencia -= 500
                jujutsu +=500
                pare
                caso 12:
                tecnica = "Feitiçaria de Projeção"

                forca -= 100
                resistencia -= 500
                velocidade +=1000
                pare
                caso 13:
                tecnica = "manipulação de corvos"

                forca -= 100
                resistencia -= 500
                jujutsu +=500
                pare
                caso 14:
                tecnica = "Coragem Incendiária"

                forca += 100
                resistencia += 50
                jujutsu +=50
                pare
                caso 15:
                tecnica = "Boogie Woogie"

                forca += 100
                resistencia += 50
                jujutsu +=200
                caso 16:
                tecnica = "Encontro Amoroso"

                forca -= 100
                resistencia -= 50
                velocidade -=100
                jujutsu +=200
                pare
                caso 17:
                tecnica = "Garoto da Marmelada"

                forca -= 100
                resistencia -= 500
                velocidade -=100
                jujutsu +=200
                pare
                caso 18:
                tecnica = "Milagres"

                forca -= 100
                resistencia -= 500
                velocidade -=100
                jujutsu +=100
                pare
                caso 19:
                tecnica = "Besta mitica ambar"

                forca += 100
                resistencia += 50
                velocidade += 1000
                jujutsu += 400
                pare
                caso 20:
                tecnica = "Tecnica de clonagem"
                jujutsu += 100
                pare
               caso 21:
                tecnica = "Super-comediante"
                jujutsu -= 100
                forca += 1000
                resistencia += 1000
                velocidade += 100
                pare
                caso 22:
                tecnica = "Construção"
                jujutsu += 500
                forca -= 100
                resistencia -= 500
                velocidade += 100
                pare
                caso 23:
                tecnica = "Descarga de Energia Amaldiçoada"
                jujutsu += 100
                pare
                caso 24:
                tecnica = "Manipulação de Marionetes"
                jujutsu += 1000
                pare
                caso 25:
                tecnica = "Uzumaki"
                jujutsu += 800

               inteiro maldicoesConsumidas
               inteiro bonusUzumaki

               maldicoesConsumidas = u.sorteia(1,1000)

               escreva("\nVocê consumiu ", maldicoesConsumidas, " maldições 👹\n")
              
               bonusUzumaki = maldicoesConsumidas / 2

                bonusFinal += bonusUzumaki

                se(maldicoesConsumidas >= 900)
                {
                escreva("Você virou Geto ☠️\n")
               }
                senao se(maldicoesConsumidas >= 500)
              {
               escreva("50% geto\n")
               }
                senao se(maldicoesConsumidas >= 100)
              {
               escreva("Você já é considerado um desastre ambulante\n")
                }
               senao
               {
               escreva("Seu Uzumaki ta passando fome 💀\n")
                }
                pare
                caso 26:
                tecnica = "Canção de Oração"
                forca += 100
                pare
                caso 27:
                tecnica = "Tecnica da proporção"
                forca += 500
                pare
                caso 28:
                tecnica = "Tecnica do apodrecimento"
                forca += 500
                pare
                caso 29:
                tecnica = "Mares do desastre"
                jujutsu += 500
                pare
                caso 30:
                tecnica = "Plantas do desastre"
                jujutsu += 200
                pare
                caso 31:
                tecnica = "manipulação do ceu"
                jujutsu += 200
                forca -=200
                pare
                caso 32:
                tecnica = "Area proibida solo"
                jujutsu += 2000
                forca -=200
                pare
                caso 33:
                tecnica = "Furia Estelar"
                jujutsu += 2000
                forca +=2000
                pare
                caso 34:
                tecnica = "Feitiço do boneco de palha"
                jujutsu += 200
                pare
                caso 35:
                tecnica = "Técnica de sessão espírita"
                jujutsu += 200
                pare
                caso 36:
                tecnica = "Jogo da morte ociosa"
               jujutsu += 70
               expansao = "Sim"

               escreva("\nEXPANSÃO DE DOMÍNIO AUTOMÁTICA!\n")
               escreva("🎰 IDLE DEATH GAMBLE 🎰\n")

               inteiro sorteHakari
               sorteHakari = u.sorteia(1,100)

               se(sorteHakari >= 80)
               {
               escreva("\n🎰 JACKPOT!! 🎰\n")
               escreva("Sua sorte foi absurda!\n")

                energia += 99999

                reversao = "Sim"

               bonusFinal += 1000

               jujutsu += 100
                resistencia += 100
                velocidade += 50

                escreva("Você ganhou energia amaldiçoada infinita por um tempo 💀\n")
                }
                senao
                {
                escreva("\nSem jackpot...\n")
                jujutsu += 20
                resistencia += 20
                velocidade += 10

                escreva("Você não ganhou nada. Mais sorte na proxima vez.\n")
                }
                pare
                    caso 37:

                    tecnica = "Sentença Mortal"
                    jujutsu += 65
                    expansao = "Sim"

                  escreva("\n⚖️ EXPANSÃO DE DOMÍNIO: SENTENÇA MORAL ⚖️\n")

                  inteiro casoJulgamento
                  inteiro resposta

                    casoJulgamento = u.sorteia(1,5)

                    escolha(casoJulgamento)
                    {
                    caso 1:

                    escreva("\nCaso: O réu é acusado de roubar uma loja de conveniência.\n")
                    escreva("Réu: eu estava com fome.\n")
                    escreva("1 - Ele roubou para sobreviver\n")
                    escreva("2 - Roubo é roubo\n")
                    escreva("3 - F O D A - S E\n")

                    leia(resposta)

                  se(resposta == 1)
                    {
                    escreva("\nJuiz: caso encerrado.\n")
                    escreva("Você perdeu o julgamento ☠️\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: Culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 300
                    jujutsu += 200
                    bonusFinal += 100
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO. PENA DE MORTE.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 30
                    jujutsu += 20
                    bonusFinal += 2000
                }

                pare

            caso 2:

                escreva("\nCaso: Assassinato de feiticeiros.\n")
                escreva("Réu: eles vieram atrás de mim primeiro.\n")
                escreva("1 - Foi legítima defesa\n")
                escreva("2 - Assassinato continua sendo crime\n")
                escreva("3 - Nada justifica privar uma vida\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare

            caso 3:

                escreva("\nCaso: Destruição de propriedade pública.\n")
                escreva("Réu: eu não fiz isso.\n")
                escreva("1 - Foi sem querer? ah bom\n")
                escreva("2 - as provas dizem o contrario\n")
                escreva("3 - então o predio caiu sozinho?\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare

            caso 4:

                escreva("\nCaso: Massacre em Shibuya.\n")
                escreva("Réu: eu sou culpado! eu matei aquela gente.\n")
                escreva("1 - Foi culpa do Sukuna...\n")
                escreva("2 - EZ\n")
                escreva("3 - rapaz...\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare

            caso 5:

                escreva("\nCaso: Sonegação de imposto.\n")
                escreva("Réu: eu só queria sobreviver no sistema.\n")
                escreva("1 - Imposto é roubo\n")
                escreva("2 - Falsificação fiscal continua sendo crime\n")
                escreva("3 - Prepara seu anus\n")

                leia(resposta)

                se(resposta == 1)
                {
                    escreva("\nJuiz: Caso encerrado.\n")
                    escreva("Você perdeu.\n")
                }
                senao se(resposta == 2)
                {
                    escreva("\nJuiz: culpado.\n")
                    escreva("Você recebeu o Martelo do Juiz 🔨\n")
                    forca += 100
                    jujutsu += 100
                    bonusFinal += 500
                }
                senao se(resposta == 3)
                {
                    escreva("\nJuiz: CULPADO.\n")
                    escreva("Você recebeu a Espada do Carrasco ⚔️\n")
                    forca += 150
                    jujutsu += 150
                    bonusFinal += 1200
                }

                pare
              }

                pare
                caso 38:
                tecnica = "G Warstaff"
                jujutsu += 200
                velocidade +=100
                pare
                caso 39:
                tecnica = "Pegador de corações"
                jujutsu += 200
                pare
                caso 40:
                tecnica = "Manipulação de gelo"
                jujutsu += 800
                pare
                caso 41:
                tecnica = "Extinção de tecnica"
                jujutsu += 800
                pare
                caso 42:
                tecnica = "Manipulação de ferramentas"
                jujutsu += 800
                caso 43:
                tecnica = "Transplante de cerebro"
                jujutsu += 1000

               escreva("\ndesculpe sensei, você vai acabar igual seu amigo\n")
               
                jujutsu += 300
                gastoEnergia = gastoEnergia * 100
                item = "6 Olhos"

                gastoEnergia = gastoEnergia * 0.1
                jujutsu += 40
                pare


                }
                }
                pare
               }
                }
            
        }
        }

        quantidadeItens = u.sorteia(1,12)
       para(i = 1; i <= quantidadeItens; i++)
{
        inteiro sorteItem = u.sorteia(1,20)
        escolha(sorteItem)
        {
            caso 1:
                item += " 6 Olhos;"

                gastoEnergia = gastoEnergia * 0.1
                jujutsu += 400
                pare

            caso 2:
                item += " Lança Invertida do Céu;"

                forca += 250
                pare

            caso 3:
                item += "Corda Negra;"

                velocidade += 20
                forca +=300
                pare

            caso 4:
                item += " Nenhum;"
                pare
            caso 5:
                item += " Cutelo;"
                forca += 300
                velocidade -=100
                pare
                caso 6:
                item += "Nuvem Brincalhona;"
                forca +=600
                pare
                caso 7:
                item += "Reino da prisão;"
                jujutsu +=600
                pare
                caso 8:
                item += " Demonio da matança;"
                jujutsu +=600
                forca +=300
                pare
                caso 9:
                item += "Katana divididora de almas;"
                jujutsu +=900
                forca +=300
                pare
                caso 10:
                item += "Espada do exterminio;"
                jujutsu +=1000
                forca +=500
                pare
                caso 11:
                item += "Kamutoke;"
                jujutsu +=1000
                forca +=500
                pare
                caso 12:
                item += " Anel da Rika;"
                
                gastoEnergia = gastoEnergia * 0
                forca +=500
                resistencia +=200
                energia +=500
                pare
                            caso 13:
                item += " Nenhum;"
                pare
                            caso 15:
                item += " Nenhum;"
                pare
                            caso 16:
                item += " Nenhum;"
                pare
                            caso 18:
                item += " Nenhum;"
                pare
                             caso 19:
                item += " Nenhum;"
                pare
                             caso 20:
                item += " Nenhum;"
                pare
        }
        }

        // EXPANSÃO
        inteiro sorteExpansao = u.sorteia(1,2)

        se(sorteExpansao == 1)
        {
            expansao = "Sim"

            bonusFinal += 250
            jujutsu += 300
        }
        senao
        {
            expansao = "Não"

            bonusFinal -= 250
            jujutsu -= 300
        }

        // REVERSÃO
        se (tipo == "Maldição"){
           reversao = "Não"

             bonusFinal -= 150
            resistencia -= 200

        }
        senao{
        inteiro sorteReversao = u.sorteia(1,2)

        se(sorteReversao == 1)
        {
            reversao = "Sim"

            bonusFinal += 150
            resistencia += 200
            gastoEnergia = gastoEnergia * 2
        }
        senao
        {
            reversao = "Não"

             bonusFinal -= 150
            resistencia -= 200
        }
        }
        // Dominio simples
        inteiro sorteDominio = u.sorteia(1,2)
         se (cla == "Shinkage"){
          dominiosimples = "Sim"

            bonusFinal += 150
            jujutsu +=200

         }
         senao{
        se(sorteDominio == 1)
        {
            dominiosimples = "Sim"

            bonusFinal += 150
            jujutsu +=200
        }
        senao
        {
            dominiosimples = "Não"

             bonusFinal -= 150
             jujutsu -=200
        }
         }
        se (forca < 0 ){
          forca = 0
        }
        senao se (velocidade < 0 ){
          velocidade = 0
        }
        senao se (resistencia < 0 ){
          resistencia = 0
        }
        senao se (jujutsu < 0 ){
          jujutsu = 0
        }
         senao se (energia < 0 ){
          energia = 0
        }
                poderTotal = forca +
                     velocidade +
                     resistencia +
                     jujutsu +
                     energia +
                     -gastoEnergia +
                     bonusFinal

        // INIMIGO
        inteiro sorteInimigo = u.sorteia(1,17)

        escolha(sorteInimigo)
        {
            caso 1:
                inimigo = "Mahito"
                 se (poderTotal >= 5000){
                 resultado = "ganhou"
                }
                senao {
                  resultado = "perdeu"
                  tipo = "humano transfigurado"
                  escreva("você foi transfigurado e morreu")
                  forca = 100
                  velocidade = 0
                  expansao = "Não"
                  reversao = "Não"
                  jujutsu = 0
                  tecnica = "Nenhuma"
                  bonusFinal = 0
                  dominiosimples = "Não"
                  gastoEnergia = 0
                  energia = 0
                  poderTotal = 0
                }
                pare

            caso 2:
                inimigo = "Jogo"
                 se (poderTotal >= 9000){
                  resultado = "ganhou"
                }
                senao {
                  resultado = "perdeu"
                }
                pare

            caso 3:
                inimigo = "Toji"
                se (poderTotal >= 9000){
                 resultado = "ganhou"
                }
                senao {
                   resultado = "perdeu"
                }
                pare

            caso 4:
                inimigo = "Sukuna"
                se (poderTotal >= 10000){
                  resultado = "ganhou"
                }
                senao {
                   resultado = "perdeu"
                }
                pare

            caso 5:
                inimigo = "Geto"
                se (poderTotal >= 9000){
                  resultado = "ganhou"
                }
                senao {
                 resultado = "perdeu"
                }
                pare

            caso 6:
                inimigo = "Gojo"
                se (poderTotal >= 10000){
                 resultado = "ganhou"
                }
                senao {
                   resultado = "perdeu"
                }
                pare

            caso 7:
                inimigo = "Kenjaku"
                 se (poderTotal >= 9000){
                 resultado = "ganhou"
                }
                senao {
                   resultado = "perdeu"
                }
                pare
                 caso 8:
                inimigo = "Yuji prime"
                 se (poderTotal >= 11000){
                 resultado = "ganhou"
                }
                senao {
                  resultado = "perdeu"
                }
                pare
                 caso 9:
                inimigo = "Yuta prime"
                 se (poderTotal >= 11000){
                 resultado = "ganhou"
                }
                senao {
                  resultado = "perdeu"
                }
                pare
                 caso 10:
                inimigo = "Dabura"
                 se (poderTotal >= 10000){
                 resultado = "ganhou"
                }
                senao {
                 resultado = "perdeu"
                }
                pare
                 caso 11:
                inimigo = "Mahoraga"
                 se (poderTotal >= 10000){
                 resultado = "ganhou"
                }
                senao {
                   resultado = "perdeu"
                }
                pare
                caso 12:
                inimigo = "Nanami"
                 se (poderTotal >= 6000){
                 resultado = "ganhou"
                }
                senao {
                   resultado = "perdeu"
                }
                pare
                 caso 13:
                inimigo = "Noritoshi Kamo/Kenjaku"
                 se (poderTotal >= 5000){
                resultado = "ganhou"
                }
                senao {
                   resultado = "perdeu"
                }
                pare
                  caso 14:
                inimigo = "Yuki"
                 se (poderTotal >= 10000){
                 resultado = "ganhou"
                }
                senao {
                   resultado = "perdeu"
                }
                pare
                  caso 15:
                inimigo = "Chooso"
                 se (poderTotal >= 9000){
                 resultado = "ganhou"
                }
                senao {
                   resultado = "perdeu"
                }
                pare
                  caso 16:
                inimigo = "miwa"
                 se (poderTotal >= 4000){
                 resultado = "ganhou"
                }
                senao {
                  resultado = "perdeu"
                }
                pare
                  caso 17:
                inimigo = "John Kaisen"
                 se (poderTotal >= 5000000000){
                 resultado = "ganhou"
                }
                senao {
                   resultado = "perdeu"
                }
                pare
                 caso 18:
                inimigo = "Kajime"
                 se (poderTotal >= 9000){
                 resultado = "ganhou"
                }
                senao {
                   resultado = "perdeu"
                }
                pare
        }

      inteiro sorteioReencarnacao = u. sorteia(1, 10) 


se (sorteioReencarnacao <= 8) 
{
    bonusFinal -=1
    reencancaofeiticeiro = "nenhum"
}
senao se (sorteioReencarnacao == 9) 
{
    reencancaofeiticeiro = "Rei das maldições!👑"

    inteiro quantidadeDedos = u. sorteia(1, 20) 
    escreva("Você assimilou ", quantidadeDedos, " dedo(s)!\n")
    

    se (quantidadeDedos >= 15) {
        bonusFinal += 9000 
        tecnica += "Santuario"

                forca += 400
                resistencia += 400
                expansao = "Sim"
                reversao = "Sim"
    }
     senao se (quantidadeDedos >= 5 ou quantidadeDedos <= 14 ) {
        bonusFinal += 6000 
           tecnica += "Santuario"

                forca += 200
                resistencia += 200
               expansao = "Sim"
                reversao = "Sim"
     }

        senao {
          bonusFinal += 3000 
             tecnica += "Santuario"

                forca += 100
                resistencia += 100
                expansao = "Sim"
                reversao = "Sim"
    }
}
senao se (sorteioReencarnacao == 10) 
{
    escreva("SISTEMA: Você é a Reencarnação de um Feiticeiro do Passado! 🌩️\n")
    

     inteiro nivelFeiticeiroAntigo = u. sorteia(1, 7)
    
    se (nivelFeiticeiroAntigo == 1) {
     reencancaofeiticeiro = "ryu ishigori"
                tecnica += "Descarga de Energia Amaldiçoada"
                jujutsu += 100
        bonusFinal += 6000
    } 
    senao se (nivelFeiticeiroAntigo == 2) {
     reencancaofeiticeiro = "Uraume"
                tecnica = "Manipulação de gelo"
                jujutsu += 800
        bonusFinal += 6000
                reversao = "Sim"
    }
    senao se (nivelFeiticeiroAntigo == 3) {
     reencancaofeiticeiro += "Hajime Kashimo"
     tecnica += "Besta mitica ambar"

      forca += 100
     resistencia += 50
      velocidade += 1000
     jujutsu += 400
    }
    senao se (nivelFeiticeiroAntigo == 4) {
     reencancaofeiticeiro += "Takako Uro"
           tecnica += "Manipulação do ceu"
        bonusFinal += 6000
    } 
    senao se (nivelFeiticeiroAntigo == 5) {
      reencancaofeiticeiro = "Yorozu"
      tecnica += "Construção"
      jujutsu += 500
      forca -= 100
      resistencia -= 500
      velocidade += 100
      bonusFinal += 9000
                reversao = "Sim"
    }
        senao se (nivelFeiticeiroAntigo == 7) {
      reencancaofeiticeiro = "Anjo"
       tecnica += "Extinção de tecnica"
      jujutsu += 800
      bonusFinal += 3000
    }
}

        // RESULTADO
        escreva("\n===== PERSONAGEM =====\n")

        escreva("Tipo: ", tipo, "\n")
        escreva("Nível de Energia: ", nivelEnergia, "\n")
        escreva("Técnica: ", tecnica, "\n")
        escreva("Item: ", item, "\n")

        escreva("Expansão de Domínio: ", expansao, "\n")
        escreva("Reversão de Feitiço: ", reversao, "\n")
        escreva("Dominio simples: ", dominiosimples, "\n")
        escreva("Você se tornou o receptaculo do ou da : ", reencancaofeiticeiro, "\n")

        escreva("Energia Amaldiçoada: ", energia, "\n")
        escreva("Gasto de Energia: ", gastoEnergia, "%\n")

        escreva("\n===== ATRIBUTOS =====\n")

        escreva("Força: ", forca, "\n")
        escreva("seu clã é: ", cla, "\n")
        escreva("Velocidade: ", velocidade, "\n")
        escreva("Resistência: ", resistencia, "\n")
        escreva("Jujutsu: ", jujutsu, "\n")




        escreva("\n===== BATALHA =====\n")

        escreva("Seu inimigo será: ", inimigo, " ⚔️\n")

         escreva("\nContra ele, você: ", resultado, "\n")

        escreva("\nSeu poder total é: ", poderTotal, "\n")
        
se (tipo == "Maldicao") {
      se(poderTotal >= 5000){
        escreva("Maldição de Grau Especial 💀\n")
      }
      senao se(poderTotal >= 4000){
        escreva("Maldição de Nível Semi-Especial 😈\n")
      }
      senao se(poderTotal >= 3000){
        escreva("Maldição de Grau 1 🔥\n")
      }
      senao se(poderTotal >= 2000){
        escreva("Maldição de Semi-Primeiro Nível ⚔️\n")
      }
      senao se(poderTotal >= 1000){
        escreva("Maldição de Grau 2 ⚔️\n")
      }
      senao se(poderTotal >= 500){
        escreva("Maldição de Grau 3 ⚔️\n")
      }
      senao {
        escreva("Maldição de Grau 4 ☠️\n")
      }

    } 
    senao {
      se(poderTotal >= 9000){
        escreva("Grau Especial 💀\n")
      }
      senao se(poderTotal >= 6000){
        escreva("É de nível semi especial 😈\n")
      }
      senao se(poderTotal >= 5000){
        escreva("Você é Grau um 🔥\n")
      }
      senao se(poderTotal >= 4000){
        escreva("Você é de semi primeiro nivel ⚔️\n")
      }
      senao se(poderTotal >= 3000){
        escreva("Você é grau 2 ⚔️\n")
      }
      senao se(poderTotal >= 1000){
        escreva("Você é grau 3 ⚔️\n")
      }
      senao {
        escreva("Grau 4 ☠️\n")
      }
      
    }
  }
}
