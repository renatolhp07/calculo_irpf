Algoritmo "imposto_renda"
// Disciplina   : [Pensamento Computacional]
// Descri��o   : Programa para calcular o INSS e valor de contribui��o do IRPF
// Autor(a)    : Renato Vieira Santos
// Data atual  : 22/08/2021
Var
// Se��o de Declara��es das vari�veis 
   salario_bruto, salario_contrib, vlr_dependente, aliq_inss, aliq_irpf1, aliq_irpf2: REAL
   aliq_irpf3, aliq_irpf4, irpf1, irpf2, irpf3, irpf4: REAL
   qtd_dependente: INTEIRO


Inicio

// Calculo de al�quota de INSS e Sal�rio de Contribui��o
      aliq_irpf1:=0.075
      aliq_irpf2:=0.15
      aliq_irpf3:=0.225
      aliq_irpf4:=0.275
      ESCREVA ("Digite seu sal�rio: ")
      LEIA (salario_bruto)
      ESCREVA ("Quantos dependentes voc� tem? ")
      LEIA (qtd_dependente)
      vlr_dependente:=qtd_dependente*189.59

      SE (salario_bruto <= 1045.00) ENTAO
               aliq_inss:=0.075
               salario_contrib:=(salario_bruto-vlr_dependente)-(aliq_inss*salario_bruto)
               ESCREVAL ("Seu sal�rio de contribui��o �: ", salario_contrib)
      SENAO
               SE ((salario_bruto > 1045.00) E (salario_bruto <= 2089.60)) ENTAO
                     aliq_inss:=0.09
                     salario_contrib:=(salario_bruto-vlr_dependente)-(aliq_inss*salario_bruto)
                     ESCREVAL ("Seu sal�rio de contribui��o �: ", salario_contrib)
               SENAO
                     SE ((salario_bruto > 2089.60) E (salario_bruto <= 3134.40)) ENTAO
                           aliq_inss:=0.12
                           salario_contrib:=(salario_bruto-vlr_dependente)-(aliq_inss*salario_bruto)
                           ESCREVAL ("Seu sal�rio de contribui��o �: ", salario_contrib)
                     SENAO
                           SE ((salario_bruto > 3134.40) E (salario_bruto >= 6101.06)) ENTAO
                                 aliq_inss:=0.14
                                 salario_contrib:=(salario_bruto-vlr_dependente)-(aliq_inss*salario_bruto)
                                 ESCREVAL ("Seu sal�rio de contribui��o �: ", salario_contrib)

                           FIMSE
                     FIMSE
               FIMSE
      FIMSE
      
 //C�lculo de IRPF e Dedu��o de imposto

    irpf1:=(aliq_irpf1*salario_contrib)-142.80
    irpf2:=(aliq_irpf2*salario_contrib)-354.80
    irpf3:=(aliq_irpf3*salario_contrib)-636.13
    irpf4:=(aliq_irpf4*salario_contrib)-869.36

      SE ((salario_contrib >= 1903.99) E (salario_contrib <= 2826.65)) ENTAO
         ESCREVAL ("O valor do seu imposto �: ", irpf1:8:2)
      SENAO
         SE ((salario_contrib >= 2826.66) E (salario_contrib <= 3751.05)) ENTAO
            ESCREVAL ("O valor do seu imposto �: ", irpf2:8:2)
         SENAO
              SE ((salario_contrib >= 3751.06) E (salario_contrib <= 4664.68)) ENTAO
                 ESCREVAL ("O valor do seu imposto �: ", irpf3:8:2)
              SENAO
                 SE (salario_contrib > 4664.68) ENTAO
                    ESCREVAL ("O valor do seu imposto �: ", irpf4:8:2)
                 SENAO
                      ESCREVAL ("Voc� � isento!")
                 FIMSE
              FIMSE
         FIMSE
      FIMSE

Fimalgoritmo