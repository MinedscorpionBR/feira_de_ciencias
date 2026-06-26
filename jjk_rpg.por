programa
{
    inclua biblioteca Util --> u

    funcao inicio()
    {
        inteiro escola
        cadeia tipo
        cadeia tecnica
        cadeia item
        cadeia nivelEnergia
        cadeia expansao
        cadeia reversao
        cadeia cla
        cadeia dominiosimples
        cadeia reencancaofeiticeiro
        cadeia jaadquirido
        inteiro escolhas
        cadeia grau
        inteiro destino
        inteiro chegadecadeias
        cadeia caminho
        cadeia genero
        cadeia escolaescolhida
        cadeia desgraca

       inteiro sortegenero
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
        inteiro sortecolonia
        inteiro sorteevento
        

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
        se (tipo == "Feiticeiro" ou tipo == "Simuriano" ou tipo == "Híbrido" ou tipo == "Mestre de Maldição"){
        sortegenero = u.sorteia(1,2)
        escolha(sortegenero)
        {
          caso 1:
          genero = "feminino"
          caso 2:
          genero = "masculino"
        }
        }
        senao{
          genero = "nenhum, maldição não tem genero"
        }

        escreva("=== SIMULADOR JUJUTSU KAISEN === \n\n")

se (tipo == "Maldição") {

    escreva("Você entrou automaticamente no time Maldições!\n")
    escreva("O plano é selar Gojo e libertar Sukuna em 31 de outubro.\n")
    jujutsu +=2000

}
senao se (tipo == "Simuriano") {
   escreva("Você entrou automaticamente no time Simurianos!\n")
    escreva("50 mil refugiados de guerra, o plano é ver se podemos entrar na terra de forma pacifica...\n")

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
            escolaescolhida = "Tokyo"

        }

        senao se (escola == 4) {

            escreva("\nVocê entrou na escola de Kyoto, péssima escolha,Feiticeiro ☠️\n")

            forca -= 500
            velocidade -= 500
            resistencia -= 500
            jujutsu -= 500
            escolaescolhida = "Kyoto"

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
         se (tipo == "Maldicao" ou tipo == "Hibrido" ou tipo == "Mestre de Maldição") {
           forca = forca * 1.5
           velocidade = velocidade * 1.5
           resistencia = resistencia * 1.5
           jujutsu = jujutsu * 1.5
           energia = energia * 1.5

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

        escreva("genero:", genero, "\n")
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
        escreva("\nSeu poder total é: ", poderTotal, "\n")
        
se (tipo == "Maldicao") {
      se(poderTotal >= 5000){
        escreva("Maldição/mestre de maldição de Grau Especial 💀\n")
        grau = "Grau especial"
      }
      senao se(poderTotal >= 4000){
        escreva("Maldição/mestre de maldição de Nível Semi-Especial 😈\n")
        grau = "Grau semi-especial"
      }
      senao se(poderTotal >= 3000){
        escreva("Maldição/mestre de maldição de Grau 1 🔥\n")
        grau = "Grau 1"
      }
      senao se(poderTotal >= 2000){
        escreva("Maldição/mestre de maldição de Semi-Primeiro Nível ⚔️\n")
        grau = "Semi primeiro nivel"
      }
      senao se(poderTotal >= 1000){
        escreva("Maldição/mestre de maldição de Grau 2 ⚔️\n")
        grau = "Grau 2"
      }
      senao se(poderTotal >= 500){
        escreva("Maldição/mestre de maldição de Grau 3 ⚔️\n")
        grau = "Grau 3"
      }
      senao {
        escreva("Maldição/mestre de maldição de Grau 4 ☠️\n")
        grau = "Grau 4"
      }

    } 
    senao {
      se(poderTotal >= 9000){
        escreva("Grau Especial 💀\n")
        grau = "Grau especial"
      }
      senao se(poderTotal >= 6000){
        escreva("Nível semi especial 😈\n")
        grau = "Grau semi-especial"
      }
      senao se(poderTotal >= 5000){
        escreva("Você é Grau um 🔥\n")
        grau = "Grau 1"
      }
      senao se(poderTotal >= 4000){
        escreva("Você é de semi primeiro nivel ⚔️\n")
        grau = "semi primeiro nivel"
      }
      senao se(poderTotal >= 3000){
        escreva("Você é grau 2 ⚔️\n")
        grau = "Grau 2"
      }
      senao se(poderTotal >= 1000){
        escreva("Você é grau 3 ⚔️\n")
        grau = "Grau 3"
      }
      senao {
        escreva("Grau 4 ☠️\n")
        grau = "Grau 4"
      }
      
    }

se (tipo == "Maldição" ou tipo == "Mestre de Maldição") {
      escreva("você é uma maldição de ", grau, ". \n")
      escreva("Escolha seu destino\n")
      escreva("1-Shibuya\n")
      escreva("2-Tokyo Colônia Nº 1\n")
      escreva("3-Tokyo Colônia Nº 2\n")
      escreva("4-Colônia de Sendai\n")
      escreva("5-Colônia de Sakurajima\n")
      escreva("6-Colônia Lake Gosho\n")
      escreva("escolha de 1 a 6 \n")
      leia(destino)

      se (destino == "1") {
        escreva("escolha lugar para ir em shibuya\n")
        escreva("1- metro\n")
        escreva("2- Estação de Bunkamura\n")
        escreva("3- Estação de Shibuya,Linha Inokashira\n")
        escreva("4- Andar sem rumo\n")
        escreva("5- Entrar num beco suspeito...\n")
        escreva("escolha de 1 a 5\n")
        leia(chegadecadeias)

        se (chegadecadeias == "1") {
          escreva("você encontrou satoru gojo, o feiticeiro mais forte da atualidade\n")
          
          se (poderTotal >= 9000) {
            escreva("você ganhou e derrotou o feiticeiro mais forte\n")
          } 
          senao {
            escreva("você perdeu, porem no ultimo segundo satoru gojo é selado no reino da prisão por kenjaku\n")
            escreva("dessa vez você deu sorte\n")
          }
        } 
        senao se (chegadecadeias == "2") {
          escreva("você encontrou naobito, maki e nanami\n")
         se (poderTotal >= 9000) {
            escreva("você ganhou e derrotou o feiticeiro mais forte\n")
          } 
          senao {
            escreva("você perdeu, porem no ultimo segundo é salvo por jogo que facilmente derrota cada e vai embora apos sentir a presença de sukuna\n")
            escreva("dessa vez você deu sorte\n")
          }
        } 
        senao se (chegadecadeias == "3") {
          escreva("Você foi para a Linha Inokashira e deu de cara com nanami espancando haruta\n")
           se (poderTotal >= 6000) {
            escreva("você ganhou e derrotou o nanami\n")
          } 
          senao {
            escreva("você perdeu e foi exorcizado ou morto\n")
          }
        }
        senao se (chegadecadeias == "4") {
          escreva("Você andou sem rumo e viu 3 caminhos.\n")
          escreva("Esquerda,Direita e Reto.\n")
          escreva("Escolha um deles em letras minusculas.\n")
          leia(caminho)
          se (caminho =="esquerda"){
          escreva("Você seguiu e encontrou mahito lutando com yuji itadori e aoi todo.\n")
          se (poderTotal >= 6000) {
            escreva("você ganhou e vocês derrotaram ambos\n")
            escreva("porem vocês encotraram a yuki tsukumo.\n")
          se (poderTotal >= 9000) {
            escreva("você ganhou da bass da da\n")
          }
          senao {
            escreva("você perdeu pra bass da da\n")
          }
          } 
          senao {
            escreva("você perdeu, e o mahito foi exorcizado pelo uzumaki de kenjaku\n")
          }
          }
          se (caminho =="direita"){
          escreva("Você seguiu e encontrou sukuna lutando com jogo,.\n")
          se (poderTotal >= 9000) {
            escreva("você ganhou dos 2\n")
          } 
          senao {
            escreva("você perdeu, foi carbonizado\n")
          }
          }
          se (caminho =="reto"){
          escreva("Você seguiu e encontrou o mahoraga.\n")
          se (poderTotal >= 9000) {
            escreva("você ganhou do mahoraga\n")
          } 
          senao {
            escreva("você perdeu e morreu\n")
          }
          }
        }
        senao se (chegadecadeias == "5") {
          escreva("Você seguiu para o beco e encontrou um homem com zero energia amaldiçoada?.\n")
          se (poderTotal >= 9000) {
            escreva("você ganhou do homem misterioso, porem ao ver seu corpo... ele havia mudado.. o que ta acotecendo em shibuya?\n")
          } 
          senao {
            escreva("você perdeu e morreu\n")
          }
        }
        senao {
          escreva("Opção inválida!\n")
        }
      } 
      senao se (destino == "2"){
        sortecolonia = u. sorteia(1, 8)
        escolha (sortecolonia){
          caso 1:
          escreva("você caiu em do ceu e encontrou yuji itadori\n")
           se (poderTotal >= 5000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu, e o seus pontos foram roubados\n")
          }
          pare
          caso 2:
           escreva("você spawnou em um lugar random e encontrou Megumi Fushiguro\n")
           se (poderTotal >= 5000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu e seus pontos foram roubados\n")
          }
          pare
          caso 3:
           escreva("você spawnou em um lugar random e encontrou Fumihiko Takaba\n")
           se (poderTotal >= 9000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu ... porem ele não te executou...?\n")
          }
          pare
          caso 4:
           escreva("você spawnou em um lugar random e encontrou Hana Kurusu\n")
           se (poderTotal >= 5000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu ... e foi 'purificado'... se você me entende\n")
          }
          pare
          caso 5:
           escreva("você spawnou em um lugar random e encontrou Reggie Star\n")
           se (poderTotal >= 5000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          caso 6:
           escreva("você spawnou em um lugar random e encontrou a Remi\n")
           se (poderTotal >= 4000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu... inutil do caramba\n")
          }
          pare
           caso 7:
           escreva("você spawnou em um lugar random e encontrou Iori Hazenoki\n")
           se (poderTotal >= 4000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu... inutil do caramba\n")
          }
          pare
          caso 7:
           escreva("você spawnou em um lugar random e encontrou Rin Amai\n")
           se (poderTotal >= 500) {
            escreva("você ganhou, meio obvio\n")
          } 
          senao {
            escreva("você perdeu... caramba, inutil do caramba\n")
          }
          pare
          caso 8:
           escreva("você spawnou em um lugar random e encontrou Hiromi Higuruma\n")
           se (poderTotal >= 6000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare 
         }

      }
      senao se (destino == "3"){
        sortecolonia = u. sorteia(1, 5)
        escolha (sortecolonia){
          caso 1:
          escreva("você caiu em do ceu e encontrou Hakari Kinji\n")
           se (poderTotal >= 7000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu, e o seus pontos foram roubados\n")
          }
          pare
          caso 2:
           escreva("você spawnou em um lugar random e encontrou Panda\n")
           se (poderTotal >= 6000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu e seus pontos foram roubados\n")
          }
          pare
          caso 3:
           escreva("você spawnou em um lugar random e encontrou Hajime Kashimo\n")
           se (poderTotal >= 7000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu ele estourou sua cabeça com eletricidade\n")
          }
          pare
          caso 4:
           escreva("você spawnou em um lugar random e encontrou Charles Bernard\n")
           se (poderTotal >= 6000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          caso 5:
           escreva("você spawnou em um lugar random e encontrou Momo Nishimiya\n")
           se (poderTotal >= 4000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
         }

      }
      senao se (destino == "4"){
        sortecolonia = u. sorteia(1, 4)
        escolha (sortecolonia){
          caso 1:
          escreva("você caiu em do ceu e encontrou Yuta Okkotsu\n")
           se (poderTotal >= 9000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu, e o seus pontos foram roubados\n")
          }
          pare
          caso 2:
          escreva("você caiu em do ceu e encontrou Ryu Ishigori\n")
           se (poderTotal >= 9000) {
            escreva("você ganhou e ele falou:'obrigado, estou cheio'\n")
          } 
          senao {
            escreva("você perdeu,ele ainda está com fome\n")
          }
          pare
          caso 3:
           escreva("você spawnou em um lugar random e encontrou Takako Uro\n")
           se (poderTotal >= 7000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu e ela ficou reclamando do passado triste dela\n")
          }
          pare
          caso 4:
           escreva("você spawnou em um lugar random e encontrou Kasumi Miwa\n")
           se (poderTotal >= 4000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu... inutil do kct\n")
          }
          pare
         }

      }
      senao se (destino == "5"){
    sortecolonia = u.sorteia(1, 5)
    
    escolha (sortecolonia){
        caso 1:
            escreva("na entrada da barreira você encontrou Maki Zenin\n")
            se (poderTotal >= 6000) {
                escreva("você ganhou\n")
            } senao {
                escreva("você perdeu\n")
            }
            pare
            
        caso 2:
            escreva("na entrada da barreira você encontrou Noritoshi Kamo\n")
            se (poderTotal >= 5000) {
                escreva("você ganhou\n")
            } senao {
                escreva("você perdeu\n")
            }
            pare
            
        caso 3:
            escreva("na entrada da barreira você encontrou Rokujushi Miyo\n")
            se (poderTotal >= 7000) {
                escreva("você ganhou\n")
            } 
            senao { 
                escreva("você perdeu e ouviu: 'se prepara pra sentir o peso do grandão'\n")
            }
            pare 
           } 
           }
          senao se (destino == "6"){
            escreva("AO entrar na colonia você encontrou kenjaku\n")
            se (poderTotal >= 9000) {
                escreva("você ganhou\n")
            } senao {
              se (tipo== "Maldição"){
                 escreva("você perdeu e foi absolvido pelo uzumaki\n")
              }
              senao{
                escreva("você perdeu e foi executado\n")
              }
            }
          }
              senao {
          escreva("Opção inválida!\n")
              }
    } 

    senao se (tipo =="Feiticeiro" ou  tipo == "Híbrido" e escolaescolhida == "Tokyo"){
    escreva("você é um feiticeiro de ", grau, ". \n")
    escreva("Escolha seu destino\n")
      escreva("1-Shibuya\n")
      escreva("2-Tokyo Colônia Nº 1\n")
      escreva("3-Tokyo Colônia Nº 2\n")
      escreva("4-Colônia de Sendai\n")
      escreva("5-Colônia de Sakurajima\n")
      escreva("6-Colônia Lake Gosho\n")
      escreva("7-Clã zenin\n")
      escreva("8-Evento de Intercâmbio da Escola-Irmã de Kyoto")
      escreva("9-Shinjuku")
      escreva("escolha de 1 a 9 \n")
      leia(destino)

      se (destino == "1") {
        escreva("escolha lugar para ir em shibuya\n")
        escreva("1- metro\n")
        escreva("2- Estação de Bunkamura\n")
        escreva("3- Estação de Shibuya,Linha Inokashira\n")
        escreva("4- Andar sem rumo\n")
        escreva("5- Entrar num beco suspeito...\n")
        escreva("escolha de 1 a 5\n")
        leia(chegadecadeias)

        se (chegadecadeias == "1") {
          escreva("você encontrou jogo,hanami, kenjaku, mahito, chooso e dagon\n")
          
          se (poderTotal >= 9000) {
            escreva("você ganhou e derrotou todo mundo, fim da historia de jjk\n")
          } 
          senao {
            escreva("você perdeu, porem no ultimo segundo satoru gojo aparece.\n")
            escreva("dessa vez você deu sorte\n")
          }
        } 
        senao se (chegadecadeias == "2") {
          escreva("você encontrou dagon\n")
         se (poderTotal >= 8000) {
            escreva("você ganhou e derrotou o feiticeiro mais forte\n")
          } 
          senao {
            escreva("você perdeu, porem no ultimo segundo é salvo por um homem... sem energia? como é possivel?\n")
            escreva("dessa vez você deu sorte\n")
          }
          escreva("você encontrou jogo\n")
          se (poderTotal >= 9000) {
            escreva("você ganhou e derrotou-o\n")
          } 
          senao {
            escreva("você perdeu e foi carbonizado\n")
          }
        } 
        senao se (chegadecadeias == "3") {
          escreva("Você foi para a Linha Inokashira e deu de cara com haruta esfaqueando mulheres\n")
           se (poderTotal >= 5000) {
            escreva("você ganhou e derrotou o haruta\n")
          } 
          senao {
            escreva("você perdeu e foi morto lentamente\n")
          }
        }
        senao se (chegadecadeias == "4") {
          escreva("Você andou sem rumo e viu 3 caminhos.\n")
          escreva("Esquerda,Direita e Reto.\n")
          escreva("Escolha um deles em letras minusculas.\n")
          leia(caminho)
          se (caminho =="esquerda"){
          escreva("Você seguiu e encontrou mahito lutando com yuji itadori e aoi todo.\n")
          se (poderTotal >= 5000) {
            escreva("você ganhou e vocês derrotaram o mahito\n")
          } 
          senao {
            escreva("você perdeu, porem o mahito foi exorcizado pelo uzumaki de kenjaku\n")
            escreva("você deu sorte\n")
          }
          }
          se (caminho =="direita"){
          escreva("Você seguiu e encontrou sukuna lutando com jogo,.\n")
          se (poderTotal >= 9000) {
            escreva("você ganhou dos 2\n")
          } 
          senao {
            escreva("você perdeu, foi carbonizado\n")
          }
          }
          se (caminho =="reto"){
          escreva("Você seguiu e encontrou o mahoraga.\n")
          se (poderTotal >= 9000) {
            escreva("você ganhou do mahoraga\n")
          } 
          senao {
            escreva("você perdeu e morreu\n")
          }
          }
        }
        senao se (chegadecadeias == "5") {
          escreva("Você seguiu para o beco e encontrou um homem com zero energia amaldiçoada?.\n")
          se (poderTotal >= 9000) {
            escreva("você ganhou do homem misterioso, porem ao ver seu corpo... ele havia mudado.. o que ta acotecendo em shibuya?\n")
          } 
          senao {
            escreva("você perdeu e morreu\n")
          }
        }
        senao {
          escreva("Opção inválida!\n")
        }
      } 
      senao se (destino == "2"){
        sortecolonia = u. sorteia(1, 5)
        escolha (sortecolonia){
          caso 1:
           escreva("você spawnou em um lugar random e encontrou Reggie Star\n")
           se (poderTotal >= 5000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          caso 2:
           escreva("você spawnou em um lugar random e encontrou a Remi\n")
           se (poderTotal >= 4000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu... inutil do caramba\n")
          }
          pare
           caso 3:
           escreva("você spawnou em um lugar random e encontrou Iori Hazenoki\n")
           se (poderTotal >= 4000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu... inutil do caramba\n")
          }
          pare
          caso 4:
           escreva("você spawnou em um lugar random e encontrou Rin Amai\n")
           se (poderTotal >= 500) {
            escreva("você ganhou, meio obvio\n")
          } 
          senao {
            escreva("você perdeu... caramba, inutil do caramba\n")
          }
          pare
          caso 5:
           escreva("você spawnou em um lugar random e encontrou Hiromi Higuruma\n")
           se (poderTotal >= 6000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare 
         }

      }
      senao se (destino == "3"){
        sortecolonia = u. sorteia(1, 2)
        escolha (sortecolonia){
          caso 1:
           escreva("você spawnou em um lugar random e encontrou Hajime Kashimo\n")
           se (poderTotal >= 7000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu ele estourou sua cabeça com eletricidade\n")
          }
          pare
          caso 2:
           escreva("você spawnou em um lugar random e encontrou Charles Bernard\n")
           se (poderTotal >= 6000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
         }

      }
      senao se (destino == "4"){
        sortecolonia = u. sorteia(1, 4)
        escolha (sortecolonia){
          caso 1:
          escreva("você caiu em do ceu e encontrou Ryu Ishigori\n")
           se (poderTotal >= 9000) {
            escreva("você ganhou e ele falou:'obrigado, estou cheio'\n")
          } 
          senao {
            escreva("você perdeu,ele ainda está com fome\n")
          }
          pare
          caso 2:
           escreva("você spawnou em um lugar random e encontrou Takako Uro\n")
           se (poderTotal >= 7000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu e ela ficou reclamando do passado triste dela\n")
          }
          pare
          caso 3:
           escreva("você spawnou em um lugar random e encontrou Kurourushi\n")
           se (poderTotal >= 5000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu... inutil do kct\n")
          }
          pare
         }

      }
      senao se (destino == "5"){
            escreva("na entrada da barreira você encontrou Naoya, uma maldição\n")
            se (poderTotal >= 6000) {
                escreva("você ganhou\n")
            } senao {
                escreva("você perdeu\n")
            }
           }
          senao se (destino == "6"){
            escreva("AO entrar na colonia você encontrou kenjaku\n")
            se (poderTotal >= 9000) {
                escreva("você ganhou\n")
            } senao {
              se (tipo== "Maldição"){
                 escreva("você perdeu e foi absolvido pelo uzumaki\n")
              }
              senao{
                escreva("você perdeu e foi executado\n")
              }
            }
          }

          senao se (destino == "7"){
            se (nivelEnergia == "Maki sem despertar" e genero == "feminino" e cla == "Zenin"){
               escreva("você encontrou Ogi Zenin\n")
               escreva("você perdeu\n")
                escreva("Ogi:'sabe por que eu não sou o lider do clã zenin? por causa das minhas filhas'\n")
                escreva("Ogi joga vocês feridas no porão de treinamento e punição do Clã Zenin'\n")
                escreva("Mai:'sabe por que a gente não evolui? porque somos gemeas... eu vou indo com a energia amaldiçoada, mas acaba com tudo,irmãzinha'\n")
                 energia = energia * 0
                forca += 600
                velocidade += 60
                resistencia += 400
                gastoEnergia = 0
                escreva("Força, Velocidade e Resistencia aumentaram, CE e gasto de CE diminuiram para 0'\n")
              escreva("você reencontrou Ogi Zenin\n")
              escreva("você ganhou\n")
              escreva("o exercito do clã zenin veio pra cima\n")
              escreva("você ganhou\n")
              escreva("você encontrou jinichi\n")
              escreva("você ganhou\n")
              escreva("você encontrou naoya\n")
              escreva("noaya:'você não tem coração não, menina?\n")
              se (poderTotal >= 7000) {
            escreva("você ganhou, o clã zenin foi brutalmente assasinado\n")
          } 
          senao {
            escreva("você perdeu foi executado brutalmente\n")
          }
            }
            senao {
              sortecolonia = u. sorteia(1, 4)
        escolha (sortecolonia){
          caso 1: 
              escreva("você encontrou naoya\n")
              se (poderTotal >= 7000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu foi executado brutalmente\n")
          }
            caso 2: 
              escreva("você encontrou jinichi\n")
              se (poderTotal >= 6500) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu foi executado brutalmente\n")
          }
          caso 3: 
              escreva("você encontrou ogi\n")
              se (poderTotal >= 6000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          caso 4: 
              escreva("você encontrou Naobito\n")
              se (poderTotal >= 6900) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
        }
            }

          }
          senao se (destino == "8"){
            escreva("vocẽ foi participar do Evento de Intercâmbio da Escola-Irmã de Kyoto e seu oponente é")
            sorteevento = u.sorteia(1,6)
        
         escolha(sorteevento){
          caso 1: 
          escreva("aoi todo")
          se (poderTotal >= 7000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          caso 2: 
          escreva("miwa")
          se (poderTotal >= 2000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          caso 3: 
          escreva("mai")
          se (poderTotal >= 2000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
           caso 4: 
          escreva("momo")
          se (poderTotal >= 2000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          caso 5: 
          escreva("mechamaru")
          se (poderTotal >= 6000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          caso 6: 
          escreva("Arata Nitta")
          se (poderTotal >= 2000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
        }
        escreva("apos a batalha, algo...na verdade alguem aparece, um novo oponente")
        desgraca = u. sorteia(1, 2)
        escolha (desgraca){
          caso 1: 
          escreva("mahito")
          se (poderTotal >= 5000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu e foi transfigurado\n")
            tipo = "Humano Transfigurado"
            forca = 100
            velocidade = 0
            resistencia = 0
            jujutsu = 0
            bonusFinal = 0
            gastoEnergia = 0
          }
          pare
          caso 2: 
          escreva("Haruta")
          se (poderTotal >= 4000) {
            escreva("você ganhou e matou ele brutalmente (graças a Deus)\n")
          } 
          senao {
            escreva("você perdeu, como?\n")
          }
          pare
          caso 3: 
          escreva("Hanami")
          se (poderTotal >= 5000) {
            escreva("você ganhou e matou ele brutalmente (graças a Deus)\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          

        }

          }

          senao se (destino == "9"){
            escreva("o sukuna se libertou, você vai ter de ir pra linha de frente")
            se (poderTotal < 7000){
              escreva("você ira enfrentar uraume")
              se (poderTotal >= 6000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }

            }
            se (poderTotal < 7000){
              escreva("você ira enfrentar sukuna")
              se (poderTotal >= 11000) {
            escreva("você ganhou e ficou conhecido entre os feiticeiros e ao mesmo tempo que amado, temido\n")
          } 
          senao {
            escreva("você perdeu e foi so mais\n")
          }
            }
          }
              senao {
          escreva("Opção inválida!\n")
              }
    }
    senao se (tipo =="Feiticeiro" ou  tipo == "Híbrido" e escolaescolhida == "Kyoto"){
    escreva("você é um feiticeiro de ", grau, ". \n")
    escreva("Escolha seu destino\n")
      escreva("1-Shibuya\n")
      escreva("2-Tokyo Colônia Nº 1\n")
      escreva("3-Tokyo Colônia Nº 2\n")
      escreva("4-Colônia de Sendai\n")
      escreva("5-Colônia de Sakurajima\n")
      escreva("6-Colônia Lake Gosho\n")
      escreva("7-Clã zenin\n")
      escreva("8-Evento de Intercâmbio da Escola-Irmã de Tokyo")
      escreva("9-Shinjuku")
      escreva("escolha de 1 a 9 \n")
      leia(destino)

      se (destino == "1") {
        escreva("escolha lugar para ir em shibuya\n")
        escreva("1- metro\n")
        escreva("2- Estação de Bunkamura\n")
        escreva("3- Estação de Shibuya,Linha Inokashira\n")
        escreva("4- Andar sem rumo\n")
        escreva("5- Entrar num beco suspeito...\n")
        escreva("escolha de 1 a 5\n")
        leia(chegadecadeias)

        se (chegadecadeias == "1") {
          escreva("você encontrou jogo,hanami, kenjaku, mahito, chooso e dagon\n")
          
          se (poderTotal >= 9000) {
            escreva("você ganhou e derrotou todo mundo, fim da historia de jjk\n")
          } 
          senao {
            escreva("você perdeu, porem no ultimo segundo satoru gojo aparece.\n")
            escreva("dessa vez você deu sorte\n")
          }
        } 
        senao se (chegadecadeias == "2") {
          escreva("você encontrou dagon\n")
         se (poderTotal >= 8000) {
            escreva("você ganhou e derrotou o feiticeiro mais forte\n")
          } 
          senao {
            escreva("você perdeu, porem no ultimo segundo é salvo por um homem... sem energia? como é possivel?\n")
            escreva("dessa vez você deu sorte\n")
          }
          escreva("você encontrou jogo\n")
          se (poderTotal >= 9000) {
            escreva("você ganhou e derrotou-o\n")
          } 
          senao {
            escreva("você perdeu e foi carbonizado\n")
          }
        } 
        senao se (chegadecadeias == "3") {
          escreva("Você foi para a Linha Inokashira e deu de cara com haruta esfaqueando mulheres\n")
           se (poderTotal >= 5000) {
            escreva("você ganhou e derrotou o haruta\n")
          } 
          senao {
            escreva("você perdeu e foi morto lentamente\n")
          }
        }
        senao se (chegadecadeias == "4") {
          escreva("Você andou sem rumo e viu 3 caminhos.\n")
          escreva("Esquerda,Direita e Reto.\n")
          escreva("Escolha um deles em letras minusculas.\n")
          leia(caminho)
          se (caminho =="esquerda"){
          escreva("Você seguiu e encontrou mahito lutando com yuji itadori e aoi todo.\n")
          se (poderTotal >= 5000) {
            escreva("você ganhou e vocês derrotaram o mahito\n")
          } 
          senao {
            escreva("você perdeu, porem o mahito foi exorcizado pelo uzumaki de kenjaku\n")
            escreva("você deu sorte\n")
          }
          }
          se (caminho =="direita"){
          escreva("Você seguiu e encontrou sukuna lutando com jogo,.\n")
          se (poderTotal >= 9000) {
            escreva("você ganhou dos 2\n")
          } 
          senao {
            escreva("você perdeu, foi carbonizado\n")
          }
          }
          se (caminho =="reto"){
          escreva("Você seguiu e encontrou o mahoraga.\n")
          se (poderTotal >= 9000) {
            escreva("você ganhou do mahoraga\n")
          } 
          senao {
            escreva("você perdeu e morreu\n")
          }
          }
        }
        senao se (chegadecadeias == "5") {
          escreva("Você seguiu para o beco e encontrou um homem com zero energia amaldiçoada?.\n")
          se (poderTotal >= 9000) {
            escreva("você ganhou do homem misterioso, porem ao ver seu corpo... ele havia mudado.. o que ta acotecendo em shibuya?\n")
          } 
          senao {
            escreva("você perdeu e morreu\n")
          }
        }
        senao {
          escreva("Opção inválida!\n")
        }
      } 
      senao se (destino == "2"){
        sortecolonia = u. sorteia(1, 5)
        escolha (sortecolonia){
          caso 1:
           escreva("você spawnou em um lugar random e encontrou Reggie Star\n")
           se (poderTotal >= 5000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          caso 2:
           escreva("você spawnou em um lugar random e encontrou a Remi\n")
           se (poderTotal >= 4000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu... inutil do caramba\n")
          }
          pare
           caso 3:
           escreva("você spawnou em um lugar random e encontrou Iori Hazenoki\n")
           se (poderTotal >= 4000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu... inutil do caramba\n")
          }
          pare
          caso 4:
           escreva("você spawnou em um lugar random e encontrou Rin Amai\n")
           se (poderTotal >= 500) {
            escreva("você ganhou, meio obvio\n")
          } 
          senao {
            escreva("você perdeu... caramba, inutil do caramba\n")
          }
          pare
          caso 5:
           escreva("você spawnou em um lugar random e encontrou Hiromi Higuruma\n")
           se (poderTotal >= 6000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare 
         }

      }
      senao se (destino == "3"){
        sortecolonia = u. sorteia(1, 2)
        escolha (sortecolonia){
          caso 1:
           escreva("você spawnou em um lugar random e encontrou Hajime Kashimo\n")
           se (poderTotal >= 7000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu ele estourou sua cabeça com eletricidade\n")
          }
          pare
          caso 2:
           escreva("você spawnou em um lugar random e encontrou Charles Bernard\n")
           se (poderTotal >= 6000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
         }

      }
      senao se (destino == "4"){
        sortecolonia = u. sorteia(1, 4)
        escolha (sortecolonia){
          caso 1:
          escreva("você caiu em do ceu e encontrou Ryu Ishigori\n")
           se (poderTotal >= 9000) {
            escreva("você ganhou e ele falou:'obrigado, estou cheio'\n")
          } 
          senao {
            escreva("você perdeu,ele ainda está com fome\n")
          }
          pare
          caso 2:
           escreva("você spawnou em um lugar random e encontrou Takako Uro\n")
           se (poderTotal >= 7000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu e ela ficou reclamando do passado triste dela\n")
          }
          pare
          caso 3:
           escreva("você spawnou em um lugar random e encontrou Kurourushi\n")
           se (poderTotal >= 5000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu... inutil do kct\n")
          }
          pare
         }

      }
      senao se (destino == "5"){
            escreva("na entrada da barreira você encontrou Naoya, uma maldição\n")
            se (poderTotal >= 6000) {
                escreva("você ganhou\n")
            } senao {
                escreva("você perdeu\n")
            }
           }
          senao se (destino == "6"){
            escreva("AO entrar na colonia você encontrou kenjaku\n")
            se (poderTotal >= 9000) {
                escreva("você ganhou\n")
            } senao {
              se (tipo== "Maldição"){
                 escreva("você perdeu e foi absolvido pelo uzumaki\n")
              }
              senao{
                escreva("você perdeu e foi executado\n")
              }
            }
          }

          senao se (destino == "7"){
            se (nivelEnergia == "Maki sem despertar" e genero == "feminino" e cla == "Zenin"){
               escreva("você encontrou Ogi Zenin\n")
               escreva("você perdeu\n")
                escreva("Ogi:'sabe por que eu não sou o lider do clã zenin? por causa das minhas filhas'\n")
                escreva("Ogi joga vocês feridas no porão de treinamento e punição do Clã Zenin'\n")
                escreva("Mai:'sabe por que a gente não evolui? porque somos gemeas... eu vou indo com a energia amaldiçoada, mas acaba com tudo,irmãzinha'\n")
                 energia = energia * 0
                forca += 600
                velocidade += 60
                resistencia += 400
                gastoEnergia = 0
                escreva("Força, Velocidade e Resistencia aumentaram, CE e gasto de CE diminuiram para 0'\n")
              escreva("você reencontrou Ogi Zenin\n")
              escreva("você ganhou\n")
              escreva("o exercito do clã zenin veio pra cima\n")
              escreva("você ganhou\n")
              escreva("você encontrou jinichi\n")
              escreva("você ganhou\n")
              escreva("você encontrou naoya\n")
              escreva("noaya:'você não tem coração não, menina?\n")
              se (poderTotal >= 7000) {
            escreva("você ganhou, o clã zenin foi brutalmente assasinado\n")
          } 
          senao {
            escreva("você perdeu foi executado brutalmente\n")
          }
            }
            senao {
              sortecolonia = u. sorteia(1, 4)
        escolha (sortecolonia){
          caso 1: 
              escreva("você encontrou naoya\n")
              se (poderTotal >= 7000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu foi executado brutalmente\n")
          }
            caso 2: 
              escreva("você encontrou jinichi\n")
              se (poderTotal >= 6500) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu foi executado brutalmente\n")
          }
          caso 3: 
              escreva("você encontrou ogi\n")
              se (poderTotal >= 6000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          caso 4: 
              escreva("você encontrou Naobito\n")
              se (poderTotal >= 6900) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
        }
            }

          }
          senao se (destino == "8"){
            escreva("vocẽ foi participar do Evento de Intercâmbio da Escola-Irmã de Tokyo e seu oponente é")
            sorteevento = u.sorteia(1,6)
        
         escolha(sorteevento){
          caso 1: 
          escreva("yuji itadori")
          se (poderTotal >= 4000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          caso 2: 
          escreva("nobara")
          se (poderTotal >= 3000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          caso 3: 
          escreva("maki")
          se (poderTotal >= 5000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
           caso 4: 
          escreva("inumaki")
          se (poderTotal >= 4000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          caso 5: 
          escreva("Panda")
          se (poderTotal >= 2000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          caso 6: 
          escreva("Megumi")
          se (poderTotal >= 2000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
        }
        escreva("apos a batalha, algo...na verdade alguem aparece, um novo oponente")
        desgraca = u. sorteia(1, 2)
        escolha (desgraca){
          caso 1: 
          escreva("mahito")
          se (poderTotal >= 5000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu e foi transfigurado\n")
            tipo = "Humano Transfigurado"
            forca = 100
            velocidade = 0
            resistencia = 0
            jujutsu = 0
            bonusFinal = 0
            gastoEnergia = 0
          }
          pare
          caso 2: 
          escreva("Haruta")
          se (poderTotal >= 4000) {
            escreva("você ganhou e matou ele brutalmente (graças a Deus)\n")
          } 
          senao {
            escreva("você perdeu, como?\n")
          }
          pare
          caso 3: 
          escreva("Hanami")
          se (poderTotal >= 5000) {
            escreva("você ganhou e matou ele brutalmente (graças a Deus)\n")
          } 
          senao {
            escreva("você perdeu\n")
          }
          pare
          

        }

          }

          senao se (destino == "9"){
            escreva("o sukuna se libertou, você vai ter de ir pra linha de frente")
            se (poderTotal < 7000){
              escreva("você ira enfrentar uraume")
              se (poderTotal >= 6000) {
            escreva("você ganhou\n")
          } 
          senao {
            escreva("você perdeu\n")
          }

            }
            se (poderTotal < 7000){
              escreva("você ira enfrentar sukuna")
              se (poderTotal >= 11000) {
            escreva("você ganhou e ficou conhecido entre os feiticeiros e ao mesmo tempo que amado, temido\n")
          } 
          senao {
            escreva("você perdeu e foi so mais\n")
          }
            }
          }
              senao {
          escreva("Opção inválida!\n")
              }
    }
    senao {
    escreva("você é um simuriano, atiraram nos seus, então chega de acordos. \n")
    escreva("o guerreiro mais forte irá enfrentar a humana mais forte, você terá de enfrentar Tsurugi Okkotsu\n")
          se (poderTotal >= 6000) {
                escreva("você ganhou\n")
                }
               senao {
                escreva("você perdeu\n")
                }
    }
  }
}
