# Script para cálculo de INSS

salario_bruto = float(input("digite seu salário: "))
qtd_dependente = float(input("quantos dependentes você tem? "))
vlr_dependente = qtd_dependente*189.59

if salario_bruto <= 1045.00 :
    aliq_inss = 0.075
    salario_contrib = float(salario_bruto-vlr_dependente)-float(aliq_inss*salario_bruto)
    print ("seu salário de contribuição é: %.2f" %salario_contrib)
elif salario_bruto > 1045.00 and salario_bruto <= 2089.60:
        aliq_inss = 0.09
        salario_contrib = (salario_bruto-vlr_dependente)-(aliq_inss*salario_bruto)
        print ("seu salário de contribuição é: %.2f" %salario_contrib)
elif salario_bruto > 2089.60 and salario_bruto <= 3134.40:
        aliq_inss = 0.12
        salario_contrib = (salario_bruto-vlr_dependente)-(aliq_inss*salario_bruto)
        print ("seu salário de contribuição é: %.2f" %salario_contrib)
