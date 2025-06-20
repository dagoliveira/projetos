# Trabalho ISA e Microarquitetura

O trabalho será dividido em três partes:

1. Definição de uma ISA [25% da nota]
2. Implementação da ISA (organização, ou microarquitetura) [70% da nota]
3. Tradução de um código em assembly na ISA definida [5% da nota]

## ISA

Uma ISA deve ser definida respeitando os seguintes requisitos:

- A instrução deve ter exatamente 12 bits de tamanho, similar ao PDP-8 (primeiro minicomputador de sucesso). Pode-ser obter inspirações nas ISAs RV32I (32 bits para instrução) e RV32C (16 bits para instrução)
- A quantidade de formatos de instrução (como formato R ou I no RV32I) é de livre escolha, e deve ser justificada
- A quantidade de registradores é de livre escolha, porém deve ser justificada
- Deverá ter instruções aritméticas, lógicas, desvio, salto e memória
- Deve ser uma arquitetura load/store, que opera somente sobre registradores
- O tamanho da palavra, tamanho do registrador e valores que serão operados pela ULA, também serão de 12 bits (tamanho de um INT -> 12 bits)
- A memória não precisa ser indexada/endereçada por byte (byte a byte), ou no caso um byte e meio. Portanto, podem fazer uma memória de instruções onde cada posição tem 12 bits, e uma memória de dados onde cada posição também tem 12 bits

Instruções diferenciadas, como FMA ou vetoriais, podem ser utilizadas e se corretamente implementadas (na segunda parte do trabalho, "implementação da ISA"), receberá um ponto extra.

O conjunto de instruções deverá suportar a implementação das estruturas básicas de programação (IFs, laços de repetição como FOR e WHILE), bem como suportar chamadas de funções.

### O que deve ser entregue

- Um *green card* contendo as instruções e a descrição do que cada uma delas faz, especialmente os saltos e desvios
- Um descritivo detalhando as informações importantes para a implementação da ISA. Por exemplo, quais os formatos de instrução, como construir e estender os bits de um valor imediato.
- Uma lista dos registradores e o modelo de programação (convenção), informando qual o nome do registrador, sua função e se deve ser salvo ou temporário


## Implementação da ISA

A ISA deve ser implementada no simulador [logisim-evolution](https://github.com/logisim-evolution/logisim-evolution).

A microarquitetura desenvolvida pode ser monociclo (todas as instruções operam em um ciclo apenas). A memória deve ser endereçada byte a byte.


### O que deve ser entregue

- Os arquivos do simulador
- Um descritivo, explicando todas as decisões de projeto, bem como o funcionamento de cada unidade funcional da microarquitetura
- Uma listagem de todos os componentes usados, por exemplo: 
    - PC: Um registrador de 12 bits 
    - Banco de registradores: X registradores de Y bits
    - ...
- Qualquer outro arquivo que seja necessário para rodar o simulador e testar o código implementado

## Tradução de um código em assembly na ISA definida

Deve ser escrito um código assembly que teste todas as instruções criadas. Esse código deve ser traduzido para a linguagem de máquina e testado no simulador.

Considere todas as possibilidades de uma única instrução, como tomar ou não o desvio em uma instrução de desvio condicional (e.g., BEQ).

Também deverá ser entregue um código que soma dois vetores, tanto o assembly como o código em linguagem de máquina. O código deve implementar a estrutura de repetição. Use como exemplo o seguinte código em C:

```
void main(){
    int A[10], B[10], C[10], i;
    for(i=0; i<10; i++){
        A[i] = i;
        B[i] = 10-i;
    }
    for(i=0; i<10; i++)
        C[i] = A[i] + B[i];
}
```


### O que deve ser entregue

- Os códigos em assembly da sua ISA
- Os códigos em linguagem de máquina (binário)
- Um descritivo, mostrando os passos usados para transformar o assembly em linguagem de máquina
- Qualquer programa, ou script, que tenha usado para traduzir o assembly em linguagem de máquina (assembler, ou montador)

