# Trabalho ISA e Microarquitetura

O trabalho será dividido em três partes:

1. Definição de uma ISA
2. Tradução de uma multiplicação de matrizes na ISA definida
3. Implementação da ISA (organização, ou microarquitetura)

## ISA

Uma ISA deve ser definida respeitando os seguintes requisitos:

- A instrução deve ter exatamente 24bits de tamanho. Pode-ser obter inspirações nas ISAs RV32I (32bits para instrução) e RV32C (16bits para instrução)
- A quantidade de formatos de instrução (como formato R ou I no RV32I) é de livre escolha, e deve ser justificada
- A quantidade de registradores é de livre escolha, porém deve ser justificada
- Deverá ter instruções aritméticas, lógicas, desvio, salto e memória
- Deve ser uma arquitetura load/store, que opera somente sobre registradores
- O tamanho da palavra será de 32bits (tamanho de um INT)
- A memória será indexada por byte (byte a byte), sendo que fazer o load de uma palavra carrega 4 posições da memória

Instruções diferenciadas, como FMA, podem ser utilizadas e se corretamente implementada (na terceira parte do trabalho, "implementação da ISA"), receberá um ponto extra.

### O que deve ser entregue

- Um *green card* contendo as instruções e a descrição do que cada uma delas faz, especialmente os saltos e desvios
- Uma lista dos registradores e o modelo de programação (convenção), informando qual o nome do registrador, sua função e se deve ser salvo ou temporário


## Multiplicação de Matrizes

O seguinte código deve ser implementado na ISA definida no passo anterior:

```C
#include<stdio.h>
#include<stdlib.h>

void mxm(int n, int a[][n], int b[][n], int c[][n]){
    int i,j,k;
    for(i=0; i<n; i++)
    {
        for(j=0; j<n; j++)
        {
            c[i][j]=0;
            for(k=0; k<n; k++)
            {
                c[i][j]+=a[i][k]*b[k][j];
            }
        }
    }
}

int main() {
    int a[10][10],b[10][10],mul[10][10],i,j;
    for(i=0; i<10; i++)
    {
        for(j=0; j<10; j++)
        {
            a[i][j] = i*2 + j;
            b[i][j] = i + j*2;
        }
    }

    mxm(10, a,b,mul);
}
```
### O que deve ser entregue

- O código em assembly da sua ISA
- Um descritivo, mostrando os passos usados para transformar o assembly em linguagem de máquina
- Qualquer programa, ou script, que tenha usado para traduzir o assembly em linguagem de máquina (assembler, ou montador)
- O código em binário

## Implementação da ISA

A ISA deve ser implementada no simulador [logisim-evolution](https://github.com/logisim-evolution/logisim-evolution).

O código implementado no passo anterior deve ser executado no simulador com sucesso. Sendo possível verificar a memória para validar o resultado final.

### O que deve ser entregue

- Os arquivos do simulador
- Um descritivo, explicando todas as decisões de projeto, bem como o funcionamento de cada unidade funcional da microarquitetura
- Qualquer outro arquivo que seja necessário para rodar o simulador e testar o código implementado
