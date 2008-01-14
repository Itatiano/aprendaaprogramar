module Arrays
  #
  #  ARRAYS AND ITERATORS
  #
  
  def generateArrays
    para do <<-END_PARAGRAPH
      Vamos escrever um programa que nos permita entrar com quantas
      palavras quisermos (uma por linha, at� pressionarmos <kbd>Enter</kbd>
      em uma linha vazia), e depois mostre as palavras em ordem alfab�tica. Ok?
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Ent�o... primeiro n�s iremos.. bem.. hum... Bom, poder�amos.. rsrsrs..
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Certo, N�o sei se podemos fazer isso. Precisamos de uma forma de armazenar
      um n�mero qualquer de palavras, e de podermos acess�-las sem que se misturem
      com as outras vari�veis. Precisamos coloc�-las num tipo de lista. Precisamos
      dos <dfn>arrays</dfn>.
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Um array � apenas uma lista em seu computador. Cada item da lista
      se comporta como uma vari�vel: voc� pode ver qual objeto um item est�
      apontando, e voc� pode faz�-lo apontar para um outro objeto.
      Vamos dar uma olhada em alguns arrays:
      END_PARAGRAPH
    end
    prog false do <<-END_CODE
      []
      [5]
      ['Ol�', 'Tchau']
      
      sabor = 'baunilha'             #  isto n�o � um array, claro...
      [89.9, sabor, [true, false]]  #  ...mas isto �.
      END_CODE
    end
    para do <<-END_PARAGRAPH
      Primeiro n�s temos um array vazio, ent�o um array contendo
      um �nico n�mero, ent�o um array contendo duas strings.
      Depois, temos uma atribui��o simples; e a� um array 
      contendo tr�s objetos, sendo que o �ltimo � um outro 
      array #{code '[true, false]'}. Lembre-se, vari�veis n�o 
      s�o objetos, ent�o, nosso �ltimo array est� realmente
      apontando a para um float, uma <em>string</em> e um array.
      Mesmo que n�s mud�ssemos o valor de #{code 'sabor'}, isso 
      n�o mudaria o array.
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Para nos ajudar a encontrar um objeto qualquer num array,
      cada item tem um n�mero de indexa��o. Programadores (e, ali�s,
      a maioria dos matem�ticos) inicia contando do zero, ent�o,
      o primeiro item do array � o item zero. Veja como podemos
      referenciar os objetos em um array:
      END_PARAGRAPH
    end
    prog do <<-END_CODE
      nomes = ['Ana', 'Maria', 'Cris']
      
      puts nomes
      puts nomes[0]
      puts nomes[1]
      puts nomes[2]
      puts nomes[3]  #  Isto est� fora do intervalo
      END_CODE
    end
    para do <<-END_PARAGRAPH
      Vemos ent�o, que #{code 'puts nomes'} imprime cada nome do
      array #{code 'nomes'}. Ent�o usamos #{code 'puts nomes[0]'}
      para imprimir o "primeiro" nome do array e #{code 'puts nomes[1]'}
      para imprimir o "segundo"... Tenho certeza que parece confuso,
      mas voc� <em>deve</em> se acostumar com isso. Voc� deve realmente
      come�ar a <em>acreditar</em> que contar inicia do zero e parar
      de usar palavras como "primeiro" e "segundo".
      Se voc� for num rod�zio de pizza, n�o fale sobre o "primeiro"
      peda�o; fale sobre o peda�o zero (e na sua cabe�a 
      pense #{code 'pedaco[0]'}).
      Voc� tem 5 dedos na sua m�o e seus n�meros s�o 0, 1, 2, 3 e 4.
      Minha esposa e eu somos malabariastas. Quando fazemos malabares
      com 6 pinos, estamos equilibrando os pinos 0 � 5. Felizmente,
      em alguns meses, estaremos equilibrando o pino 6 (e portanto, 
      equilibrando 7 pinos). Voc� saber� que conseguiu quando
      come�ar a usar o termo "zer�simo" :-) Sim, � uma palavra real..
      Pergunte a um programador ou matem�tico..
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Finalmente, n�s tentamos #{code 'puts nomes[3]'}, apenas veja o que
      aconteceria.  Voc� estava esperando um erro?  Algumas vezes quando
      voc� faz um pergunta, sua pergunta n�o faz sentido (pelo
      menos para seu computador); � quando obt�m um erro.
      Algumas vezes, entretanto, voc� pode fazer uma pergunta e a resposta
      � <em>nada</em>.  O que est� na posi��o tr�s?  Nada.
      O que � #{code 'nomes[3]'}?  #{code 'nil'}:  A maneira Ruby
      de dizer "nada".  #{code 'nil'} � um objeto especial
      que basicamente significa "n�o � qualquer outro objeto."
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Se toda esta numera��o divertida de posi��es de array est� confundindo
      voc�, n�o tema!  Frequentemente, n�s podemos evit�-la completamente 
      usando v�rios m�todos de array, como este:
      END_PARAGRAPH
    end
    h2 {"O M�todo #{code 'each'}"}
    para do <<-END_PARAGRAPH
      #{code 'each'} nos permite fazer algo (o que quer que n�s
      desejemos) para #{code 'each'}(cada em portugu�s) objeto pertencente ao array.  Assim, se n�s
      quisessemos dizer algo bom sobre cada linguagem no array
      abaixo, n�s far�amos isto:
      END_PARAGRAPH
    end
    prog do <<-END_CODE
      linguagens = ['Portugu�s', 'Ingl�s', 'Ruby']
      
      linguagens.each do |ling|
        puts 'Eu adoro ' + ling + '!'
        puts 'Voc� n�o?'
      end
      
      puts 'E vamos ouv�-lo sobre C++!'
      puts '...'
      END_CODE
    end
    para do <<-END_PARAGRAPH
      Ent�o, o que aconteceu?  Bem, n�s fomos capazes de passar por
      todos os objetos no array sem usar nenhum n�mero, e
      isto � muito bom.  Traduzindo para o portugu�s, o programa
      acima seria algo como:  Para #{code 'cada'} objeto
      em #{code 'linguagens'}, aponte a vari�vel #{code 'ling'}
      para o objeto e ent�o #{code 'fa�a'}(do em ingl�s) tudo que eu disser,
      at� que voc� chegue ao #{code 'fim'}(end em ingl�s).  (Como voc� sabe,
      C++ � uma outra linguagem de programa��o.  � muito mais dif�cil de aprender
      do que Ruby; normalmente, um programa C++ ser� muitas vezes
      maior do que um programa Ruby que faz a mesma coisa.)
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Voc�s poderiam estar pensando consigo mesmo, "Isto � muito parecido
      com os la�os de repeti��o (loops) que n�s aprendemos anteriormente."  Sim, � similar.
      Uma diferen�a importante � que o m�todo #{code 'each'}
      � apenas:  um m�todo.  #{code 'while'} e #{code 'end'}
      (como #{code 'do'}, #{code 'if'}, #{code 'else'}, e todas as outras
      <span class="L2Pcode"><span class="L2Pkeyword">#{KEYWORD_COLOR}</span></span>
      palavras) n�o s�o m�todos.  Elas s�o parte fundamental da linguagem
      Ruby, como #{code '='} e os par�nteses; como as 
      marcas de pontua��es no portugu�s.
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Mas n�o #{code 'each'}; #{code 'each'} � um apenas um outro
      m�todo do array.  M�todos como #{code 'each'} que "atuam como"
      loops s�o frequentemente chamados <dfn>iteradores</dfn>.
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Uma coisa para notar sobre iteradores � que eles s�o
      sempre seguidos por #{code 'do'}...#{code 'end'}.
      #{code 'while'} e #{code 'if'} nunca t�m um #{code 'do'}
      perto deles; n�s apenas usamos #{code 'do'} com iteradores.
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Aqui est� um outro atraente iteradorzinho, mas n�o � um
      m�todo de array... � um m�todo de inteiros!
      END_PARAGRAPH
    end
    prog do <<-END_CODE
      3.times do
        puts 'Hip-Hip-Hooray!'
      end
      END_CODE
    end
    h2 {'Mais M�todos de Array'}
    para do <<-END_PARAGRAPH
      Ent�o n�s aprendemos #{code 'each'},
      mas existem muitos outros m�todos de array... quase tantos
      quantos existem m�todos de string!  De fato, alguns
      deles (como #{code 'length'}, #{code 'reverse'},
      #{code '+'}, e #{code '*'})
      funcionam da mesma forma que funcionam para strings, exceto que eles
      operam em posi��es de array mais do que em
      letras de string.  Outros, como #{code 'last'}
      e #{code 'join'}, s�o espec�ficos para arrays.  Ainda
      outros, como #{code 'push'} e #{code 'pop'},
      na verdade modificam o array.  E assim como com
      os m�todos de string, voc� n�o tem que se lembrar de
      todos estes, desde que voc� possa se lembrar onde
      achar informa��es sobre eles (bem aqui).
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Primeiro, vamos dar uma olhada em #{code 'to_s'} e #{code 'join'}.
      #{code 'join'} funciona de forma semelhante a #{code 'to_s'}, exceto
      que ele adiciona uma string entre os objetos do array.
      Vamos dar uma olhada:
      END_PARAGRAPH
    end
    prog do <<-END_CODE
      comidas = ['feijoada', 'tapioca', 'bolo de fub�']
      
      puts comidas
      puts
      puts comidas.to_s
      puts
      puts comidas.join(', ')
      puts
      puts comidas.join('  :)  ') + '  8)'
      
      200.times do
        puts []
      end
      END_CODE
    end
    para do <<-END_PARAGRAPH
      Como voc� pode ver, #{code 'puts'} trata os arrays diferentemente
      de outros objetos:  ele apenas chama #{code 'puts'} em cada um
      dos objetos no array.  � por isso que chamar #{code 'puts'} para um
      um array vazio 200 vezes n�o faz nada; o array n�o aponta
      para nada, assim n�o h� nada para o #{code 'puts'} mostrar.  (Fazer
      nada 200 vezes ainda � fazer nada.)
      Tente chamar #{code 'puts'} para um array contendo outros arrays;
      fez o que voc� esperava?
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Voc� tamb�m notou que eu deixei uma string vazia quando
      eu quis #{code 'mostrar'} uma linha em branco?  Isto faz a mesma
      coisa.
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      Agora vamos dar uma olhada em #{code 'push'}, #{code 'pop'},
      e #{code 'last'}.  Os m�todos #{code 'push'} e #{code 'pop'}
      s�o de alguma forma opostos,
      assim como #{code '+'} e #{code '-'} s�o.  #{code 'push'} adiciona
      um objeto no fim do seu array, e #{code 'pop'}
      remove o �ltimo objeto do array (e diz para voc�
      qual era este objeto).  #{code 'last'} � similar a #{code 'pop'}
      em dizer para voc� o que est� no fim do array,
      exceto que o #{code 'last'} deixa o array em paz.
      Novamente, #{code 'push'} e #{code 'pop'} <em>realmente
      modificam o array</em>:
      END_PARAGRAPH
    end
    prog do <<-END_CODE
      favoritos = []
      favoritos.push 'azul e branco'
      favoritos.push 'verde e amarelo'
      
      puts favoritos[0]
      puts favoritos.last
      puts favoritos.length
      
      puts favoritos.pop
      puts favoritos
      puts favoritos.length
      END_CODE
    end
    h2 {'Algumas Coisas para Tentar'}
    para do <<-END_PARAGRAPH
      &bull; Escreva o programa que n�s comentamos no in�cio
      deste cap�tulo.<br />
      <em><strong>Dica:</strong>  Existe um ador�vel
      m�todo de array que dar� a voc� uma vers�o ordenada de um 
      array:  </em>#{code 'sort'}<em>.  Use-o!</em>
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      &bull; Tente escrever o programa acima <em>sem</em> usar
      o m�todo #{code 'sort'}.  Uma grande parte da programa��o �
      resolver problemas, assim pratique o m�ximo que voc� puder!
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      &bull; Re-escreva seu programa de Tabela de Conte�dos (do cap�tulo
      #{makeLink 'm�todos', :generateMethods}).  Inicie o programa
      com um array que mant�m todas as informa��es sobre sua Tabela
      de Conte�dos (nomes de cap�tulos, n�meros de p�ginas, etc.).  Ent�o imprima
      na tela a informa��o do array em uma Tabela de Conte�dos
      formatada de forma bem bonita.
      END_PARAGRAPH
    end
    para do <<-END_PARAGRAPH
      At� o momento aprendemos bastante sobre um n�mero de m�todos diferentes.
      Agora � hora de aprender como
      #{makeLink 'fazer seus pr�prios m�todos', :generateDefMethod}.
      END_PARAGRAPH
    end
  end
end