DEF BUTTON bt-first LABEL "<<".
DEF BUTTON bt-prev  LABEL "<".
DEF BUTTON bt-next  LABEL ">".
DEF BUTTON bt-last  LABEL ">>".
DEF BUTTON bt-exit  LABEL "&Sair" AUTO-ENDKEY.                  
DEF BUTTON bt-add   LABEL "&Adicionar" SIZE 15 BY 1.
DEF BUTTON bt-upd   LABEL "A&lterar"   SIZE 15 BY 1.
DEF BUTTON bt-del   LABEL "&Eliminar"  SIZE 15 BY 1.
DEF BUTTON bt-save  LABEL "Sal&var"    SIZE 15 BY 1.
DEF BUTTON bt-canc  LABEL "&Cancelar"  SIZE 15 BY 1.
DEF BUTTON bt-csv   LABEL "&Baixar CSV" SIZE 15 BY 1.
DEF BUTTON bt-txt   LABEL "&Relatório TXT" SIZE 17 BY 1.
DEF BUTTON bt-ver   LABEL "&Filme"       SIZE 17 BY 1.
DEF BUTTON bt-cad   LABEL "&Cadastrar..." SIZE 17 BY 1.
DEF BUTTON bt-dire  LABEL "&Diretor"     SIZE 17 BY 1.
DEF BUTTON bt-lista LABEL "&Minha Lista" SIZE 17 BY 1.

DEF VAR cOpcao   AS CHARACTER NO-UNDO.
DEF VAR iCustNum AS INTEGER   NO-UNDO.
DEF VAR cNavega  AS CHARACTER NO-UNDO.

DEF FRAME f-relat
    HEADER "RELATORIO DE CLIENTES POR CIDADE" AT 1 SKIP(1)
    WITH DOWN WIDTH 80.

DEF IMAGE akiraFilme1 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\akiro sang.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE akiraFilme2 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\akira sonhos.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE akiraFilme3 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\akira ra.jpg"    STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE akiraFilme4 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\akira ikiru.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE akiraFilme5 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\akira rain.jpg"  STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE akiraFilme6 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\akira samu.jpg"  STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE peeleFilme1 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\jord nos.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE peeleFilme2 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\jord nao.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE peeleFilme3 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\jord corra.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE cooglerFilme1 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\ryan peca.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE hitchFilme1 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\kok janela.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE hitchFilme3 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\kok corpo.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE hitchFilme4 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\kok psci.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE nolanFilme1 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\cris oppenhe.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE nolanFilme2 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\cris ten.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE nolanFilme3 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\cris batma.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE nolanFilme4 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\cris origem.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE nolanFilme5 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\interes.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE kubrickFilme1 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\sta lara.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE kubrickFilme2 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\sta 2001.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF IMAGE kubrickFilme3 FILE "C:\Users\User\Downloads\Progress\filmes\Outros\sta ilumi.jpg" STRETCH-TO-FIT SIZE 20 BY 6.5.
DEF VAR fiNome1 AS CHAR FORMAT "X(18)" INITIAL "Kurosawa: Tanjuro" VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiNome2 AS CHAR FORMAT "X(18)" INITIAL "Kurosawa: Sonhos"  VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiNome3 AS CHAR FORMAT "X(18)" INITIAL "Kurosawa: Ran"     VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiNome4 AS CHAR FORMAT "X(18)" INITIAL "Kurosawa: Ikiru"   VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiNome5 AS CHAR FORMAT "X(18)" INITIAL "Kurosawa: Rhapsody" VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiNome6 AS CHAR FORMAT "X(18)" INITIAL "Kurosawa: Os Sete" VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiPeele1 AS CHAR FORMAT "X(18)" INITIAL "Peele: Nos"            VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiPeele2 AS CHAR FORMAT "X(18)" INITIAL "Peele: Nao! Nao Olhe!" VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiPeele3 AS CHAR FORMAT "X(18)" INITIAL "Peele: Corra!"         VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiCoogler1 AS CHAR FORMAT "X(18)" INITIAL "Coogler: Pecadores" VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiHitch1 AS CHAR FORMAT "X(18)" INITIAL "Hitch: Janela Ind" VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiHitch2 AS CHAR FORMAT "X(18)" INITIAL "Hitch: Passaros"   VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiHitch3 AS CHAR FORMAT "X(18)" INITIAL "Hitch: Corpo Cai"  VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiHitch4 AS CHAR FORMAT "X(18)" INITIAL "Hitch: Psicose"    VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiNolan1 AS CHAR FORMAT "X(18)" INITIAL "Nolan: Oppenheimer"   VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiNolan2 AS CHAR FORMAT "X(18)" INITIAL "Nolan: Tenet"         VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiNolan3 AS CHAR FORMAT "X(18)" INITIAL "Nolan: Batman Cav"    VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiNolan4 AS CHAR FORMAT "X(18)" INITIAL "Nolan: A Origem"      VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiNolan5 AS CHAR FORMAT "X(18)" INITIAL "Nolan: Interestelar"  VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiKubrick1 AS CHAR FORMAT "X(18)" INITIAL "Kubrick: Laranja Mec" VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiKubrick2 AS CHAR FORMAT "X(18)" INITIAL "Kubrick: 2001"        VIEW-AS FILL-IN NO-UNDO.
DEF VAR fiKubrick3 AS CHAR FORMAT "X(18)" INITIAL "Kubrick: Iluminado"   VIEW-AS FILL-IN NO-UNDO.

DEF BUTTON btFecharFilme LABEL "&Fechar" SIZE 20 BY 1.2.

DEF FRAME f-filme
    akiraFilme1 AT ROW 1.2 COL 2    fiNome1 AT ROW 8.0 COL 2 NO-LABEL
    akiraFilme2 AT ROW 1.2 COL 25   fiNome2 AT ROW 8.0 COL 25 NO-LABEL
    akiraFilme3 AT ROW 1.2 COL 48   fiNome3 AT ROW 8.0 COL 48 NO-LABEL
    akiraFilme4 AT ROW 9.5 COL 2    fiNome4 AT ROW 16.3 COL 2 NO-LABEL
    akiraFilme5 AT ROW 9.5 COL 25   fiNome5 AT ROW 16.3 COL 25 NO-LABEL
    akiraFilme6 AT ROW 9.5 COL 48   fiNome6 AT ROW 16.3 COL 48 NO-LABEL    
    peeleFilme1 AT ROW 17.8 COL 2   fiPeele1 AT ROW 24.6 COL 2 NO-LABEL
    peeleFilme2 AT ROW 17.8 COL 25  fiPeele2 AT ROW 24.6 COL 25 NO-LABEL
    peeleFilme3 AT ROW 17.8 COL 48  fiPeele3 AT ROW 24.6 COL 48 NO-LABEL   
    cooglerFilme1 AT ROW 26.1 COL 2 fiCoogler1 AT ROW 32.9 COL 2 NO-LABEL
    hitchFilme1 AT ROW 26.1 COL 25  fiHitch1 AT ROW 32.9 COL 25 NO-LABEL
    hitchFilme3 AT ROW 26.1 COL 48  fiHitch3 AT ROW 32.9 COL 48 NO-LABEL   
    hitchFilme4 AT ROW 34.4 COL 2   fiHitch4 AT ROW 41.2 COL 2 NO-LABEL
    nolanFilme1 AT ROW 34.4 COL 25  fiNolan1 AT ROW 41.2 COL 25 NO-LABEL
    nolanFilme2 AT ROW 34.4 COL 48  fiNolan2 AT ROW 41.2 COL 48 NO-LABEL   
    nolanFilme3 AT ROW 42.7 COL 2   fiNolan3 AT ROW 49.5 COL 2 NO-LABEL
    nolanFilme4 AT ROW 42.7 COL 25  fiNolan4 AT ROW 49.5 COL 25 NO-LABEL
    nolanFilme5 AT ROW 42.7 COL 48  fiNolan5 AT ROW 49.5 COL 48 NO-LABEL   
    kubrickFilme1 AT ROW 51.0 COL 2  fiKubrick1 AT ROW 57.8 COL 2 NO-LABEL
    kubrickFilme2 AT ROW 51.0 COL 25 fiKubrick2 AT ROW 57.8 COL 25 NO-LABEL
    kubrickFilme3 AT ROW 51.0 COL 48 fiKubrick3 AT ROW 57.8 COL 48 NO-LABEL
    
    btFecharFilme AT ROW 59.5 COL 28
    WITH VIEW-AS DIALOG-BOX TITLE "Galeria Completa de Filmes" THREE-D SIZE 72 BY 22 SCROLLABLE.

DEF TEMP-TABLE tt-diretor NO-UNDO
    FIELD cNomeDiretor AS CHAR FORMAT "X(40)" COLUMN-LABEL "Nome do Diretor".

DEF QUERY q-diretor FOR tt-diretor SCROLLING.

DEF BROWSE br-diretor QUERY q-diretor
    DISPLAY tt-diretor.cNomeDiretor
    WITH 10 DOWN SIZE 45 BY 6.

DEF BUTTON btFecharVerDiretor LABEL "&Fechar" SIZE 12 BY 1.

DEF FRAME f-ver-diretor
    br-diretor          AT ROW 1.5 COL 2
    btFecharVerDiretor  AT ROW 8.0 COL 18.5
    WITH VIEW-AS DIALOG-BOX TITLE "Diretores Cadastrados" THREE-D SIDE-LABELS SIZE 50 BY 10.

DEF VAR fiDiretorNome AS CHAR FORMAT "X(40)" LABEL "Nome Diretor" VIEW-AS FILL-IN.
DEF BUTTON btSalvarDiretor LABEL "Salvar"    SIZE 12 BY 1.
DEF BUTTON btVerDiretor    LABEL "&Ver Lista" SIZE 12 BY 1.
DEF BUTTON btCancDiretor   LABEL "Cancelar"  SIZE 12 BY 1.

DEF FRAME f-diretor
    fiDiretorNome   AT ROW 2 COL 18 COLON-ALIGNED
    btSalvarDiretor AT ROW 4 COL 4
    btVerDiretor    AT ROW 4 COL 18
    btCancDiretor   AT ROW 4 COL 32
    WITH VIEW-AS DIALOG-BOX TITLE "Cadastro de Diretor" THREE-D SIDE-LABELS SIZE 48 BY 6.5.

DEF VAR fiItemLista AS CHAR FORMAT "X(40)" LABEL "Item Lista" VIEW-AS FILL-IN.
DEF BUTTON btSalvarLista LABEL "Adicionar" SIZE 12 BY 1.
DEF BUTTON btVerLista    LABEL "&Ver Lista" SIZE 12 BY 1.
DEF BUTTON btCancLista   LABEL "Fechar"    SIZE 12 BY 1.
    
DEF TEMP-TABLE tt-lista NO-UNDO
    FIELD cNomeItem AS CHAR FORMAT "X(40)" COLUMN-LABEL "Filme / Item".

DEF QUERY q-lista FOR tt-lista SCROLLING.

DEF BROWSE br-lista QUERY q-lista
    DISPLAY tt-lista.cNomeItem
    WITH 10 DOWN SIZE 45 BY 6.
   
DEF BUTTON btFecharVerLista LABEL "&Fechar" SIZE 12 BY 1.

DEF FRAME f-ver-lista
    br-lista          AT ROW 1.5 COL 2
    btFecharVerLista  AT ROW 8.0 COL 18.5
    WITH VIEW-AS DIALOG-BOX TITLE "Filmes na Minha Lista" THREE-D SIDE-LABELS SIZE 50 BY 10.

DEF FRAME f-lista
    fiItemLista   AT ROW 2 COL 15 COLON-ALIGNED
    btSalvarLista AT ROW 4 COL 4
    btVerLista    AT ROW 4 COL 18
    btCancLista   AT ROW 4 COL 32
    WITH VIEW-AS DIALOG-BOX TITLE "Minha Lista" THREE-D SIDE-LABELS SIZE 48 BY 6.5.

DEF BUTTON btCadCliente LABEL "1. Clientes"       SIZE 25 BY 1.2.
DEF BUTTON btCadFilme   LABEL "2. Filmes"         SIZE 25 BY 1.2.
DEF BUTTON btCadAluguel LABEL "3. Aluguel Filme"  SIZE 25 BY 1.2.
DEF BUTTON btSairMenuCad LABEL "&Fechar"         SIZE 25 BY 1.2.

DEF FRAME f-menu-cad
    btCadCliente  AT ROW 1.5 COL 3
    btCadFilme    AT ROW 3.0 COL 3
    btCadAluguel  AT ROW 4.5 COL 3
    btSairMenuCad AT ROW 6.5 COL 3
    WITH VIEW-AS DIALOG-BOX TITLE "Selecione o Cadastro" THREE-D SIZE 31 BY 9.

DEF VAR iCodClienteCad AS INTEGER LABEL "Cod Cliente" VIEW-AS FILL-IN.
DEF VAR cNomeClienteCad AS CHAR    LABEL "Nome"        VIEW-AS FILL-IN FORMAT "X(30)".
DEF VAR cCidadeCli      AS CHAR    LABEL "Cidade"      VIEW-AS FILL-IN FORMAT "X(30)".
DEF VAR cTeleCli        AS CHAR    LABEL "Telefone"    VIEW-AS FILL-IN FORMAT "X(15)".
DEF BUTTON btSalvarClienteCad LABEL "Salvar"   SIZE 12 BY 1.
DEF BUTTON btElimClienteCad   LABEL "Eliminar" SIZE 12 BY 1.
DEF BUTTON btCancClienteCad   LABEL "Cancelar" SIZE 12 BY 1.

DEF FRAME f-cad-cliente
    iCodClienteCad  AT ROW 1.5 COL 18 COLON-ALIGNED
    cNomeClienteCad AT ROW 2.8 COL 18 COLON-ALIGNED
    cCidadeCli      AT ROW 4.1 COL 18 COLON-ALIGNED
    cTeleCli        AT ROW 5.4 COL 18 COLON-ALIGNED
    btSalvarClienteCad AT ROW 7.2 COL 5
    btElimClienteCad   AT ROW 7.2 COL 22
    btCancClienteCad   AT ROW 7.2 COL 39
    WITH VIEW-AS DIALOG-BOX TITLE "Cadastro de Clientes" THREE-D SIDE-LABELS SIZE 58 BY 9.2.

DEF VAR iCodFilmeCad  AS INTEGER LABEL "Cod Filme" VIEW-AS FILL-IN.
DEF VAR cTituloFilme  AS CHAR    LABEL "Título"    VIEW-AS FILL-IN FORMAT "X(30)".
DEF VAR deValorFilme  AS DEC     LABEL "Valor"     VIEW-AS FILL-IN.
DEF BUTTON btSalvarFilmeCad LABEL "Salvar"   SIZE 12 BY 1.
DEF BUTTON btElimFilmeCad   LABEL "Eliminar" SIZE 12 BY 1.
DEF BUTTON btCancFilmeCad   LABEL "Cancelar" SIZE 12 BY 1.

DEF FRAME f-cad-filme
    iCodFilmeCad   AT ROW 1.5 COL 18 COLON-ALIGNED
    cTituloFilme   AT ROW 2.8 COL 18 COLON-ALIGNED
    deValorFilme   AT ROW 4.1 COL 18 COLON-ALIGNED
    btSalvarFilmeCad AT ROW 5.8 COL 5
    btElimFilmeCad   AT ROW 5.8 COL 22
    btCancFilmeCad   AT ROW 5.8 COL 39
    WITH VIEW-AS DIALOG-BOX TITLE "Cadastro de Filmes" THREE-D SIDE-LABELS SIZE 58 BY 8.0.

DEF VAR iCodAluguelCad AS INTEGER LABEL "Cod Aluguel" VIEW-AS FILL-IN.
DEF VAR iCodItemAlug   AS INTEGER LABEL "Cod Item"    VIEW-AS FILL-IN.
DEF VAR iCodFilmeAlug  AS INTEGER LABEL "Cod Filme"   VIEW-AS FILL-IN.
DEF VAR iQtdFilmeAlug  AS INTEGER LABEL "Quantidade"  VIEW-AS FILL-IN.
DEF BUTTON btSalvarAluguel LABEL "Salvar"   SIZE 12 BY 1.
DEF BUTTON btElimAluguel   LABEL "Eliminar" SIZE 12 BY 1.
DEF BUTTON btCancAluguel   LABEL "Cancelar" SIZE 12 BY 1.

DEF FRAME f-cad-aluguel
    iCodAluguelCad AT ROW 1.5 COL 18 COLON-ALIGNED
    iCodItemAlug   AT ROW 2.8 COL 18 COLON-ALIGNED
    iCodFilmeAlug  AT ROW 4.1 COL 18 COLON-ALIGNED
    iQtdFilmeAlug  AT ROW 5.4 COL 18 COLON-ALIGNED
    btSalvarAluguel AT ROW 7.2 COL 5
    btElimAluguel   AT ROW 7.2 COL 22
    btCancAluguel   AT ROW 7.2 COL 39
    WITH VIEW-AS DIALOG-BOX TITLE "Aluguel de Filme" THREE-D SIDE-LABELS SIZE 58 BY 9.2.

/* Frame principal */
DEF IMAGE logo FILE "C:\Users\User\Downloads\Progress\capa\trem.jpg" STRETCH-TO-FIT SIZE 98 BY 13.

DEF FRAME f-cad
    logo AT ROW 1 COL 2
    bt-first AT ROW 15 COL 2
    bt-prev  AT ROW 15 COL 8
    bt-next  AT ROW 15 COL 14
    bt-last  AT ROW 15 COL 20
    bt-add   AT ROW 15 COL 28
    bt-upd   AT ROW 15 COL 44
    bt-del   AT ROW 15 COL 60
    bt-save  AT ROW 15 COL 76
    bt-canc  AT ROW 15 COL 92
    bt-ver   AT ROW 17 COL 2
    bt-cad   AT ROW 17 COL 20
    bt-dire  AT ROW 17 COL 38
    bt-lista AT ROW 17 COL 56
    bt-csv   AT ROW 17 COL 74
    bt-txt   AT ROW 17 COL 92
    bt-exit  AT ROW 17 COL 110
    Clientes.codCliente    AT ROW 19.0 COL 30 COLON-ALIGNED
    Clientes.clienteNome   AT ROW 20.0 COL 30 COLON-ALIGNED
    Clientes.ClienteTele   AT ROW 21.0 COL 30 COLON-ALIGNED
    Clientes.endereRua     AT ROW 22.0 COL 30 COLON-ALIGNED
    Clientes.endereBairro  AT ROW 23.0 COL 30 COLON-ALIGNED
    Clientes.endereCidade  AT ROW 24.0 COL 30 COLON-ALIGNED
    Clientes.codObservacao AT ROW 25.0 COL 30 COLON-ALIGNED
    WITH SIDE-LABELS THREE-D TITLE "Locadora Locaville" VIEW-AS DIALOG-BOX SIZE 130 BY 27.

/* PROCEDURES */
PROCEDURE pi-posiciona-customer:
    CASE cNavega:
        WHEN "first" THEN DO:
            FIND FIRST Clientes NO-LOCK NO-ERROR.
        END.
        WHEN "last" THEN DO:
            FIND LAST Clientes NO-LOCK NO-ERROR.
        END.
    END CASE.

    IF AVAIL Clientes THEN DO:
        DISP Clientes WITH FRAME f-cad.
    END.
END PROCEDURE.

ON CHOOSE OF bt-cad IN FRAME f-cad DO:
    ENABLE ALL WITH FRAME f-menu-cad.
    WAIT-FOR GO, WINDOW-CLOSE OF FRAME f-menu-cad.
    HIDE FRAME f-menu-cad.
END.

ON CHOOSE OF bt-dire IN FRAME f-cad DO:
    ENABLE ALL WITH FRAME f-diretor.
    WAIT-FOR GO, WINDOW-CLOSE OF FRAME f-diretor.
    HIDE FRAME f-diretor.
END.

ON CHOOSE OF btSairMenuCad IN FRAME f-menu-cad DO:
    APPLY "GO":U TO FRAME f-menu-cad.
END.

ON CHOOSE OF btCadCliente IN FRAME f-menu-cad DO:
    FIND LAST Clientes NO-LOCK NO-ERROR.
    IF AVAIL Clientes THEN
        iCodClienteCad = INTEGER(Clientes.codCliente) + 1 NO-ERROR.
    ELSE
        iCodClienteCad = 1.

    DISPLAY iCodClienteCad WITH FRAME f-cad-cliente.
    DISABLE iCodClienteCad WITH FRAME f-cad-cliente.
    ENABLE cNomeClienteCad cCidadeCli cTeleCli btSalvarClienteCad btElimClienteCad btCancClienteCad WITH FRAME f-cad-cliente.
    
    WAIT-FOR GO, WINDOW-CLOSE OF FRAME f-cad-cliente.
    HIDE FRAME f-cad-cliente.
END.

ON CHOOSE OF btSalvarClienteCad IN FRAME f-cad-cliente DO:
    ASSIGN cNomeClienteCad cCidadeCli cTeleCli.
    
    CREATE Clientes.
    ASSIGN Clientes.codCliente   = STRING(iCodClienteCad)
           Clientes.clienteNome  = cNomeClienteCad
           Clientes.endereCidade = cCidadeCli
           Clientes.ClienteTele  = cTeleCli.

    MESSAGE "Cliente salvo com sucesso!" VIEW-AS ALERT-BOX INFORMATION.
    APPLY "GO":U TO FRAME f-cad-cliente.
END.

ON CHOOSE OF btElimClienteCad IN FRAME f-cad-cliente DO:
    FIND FIRST Clientes WHERE Clientes.codCliente = STRING(iCodClienteCad) EXCLUSIVE-LOCK NO-ERROR.
    IF AVAIL Clientes THEN DELETE Clientes.
    MESSAGE "Cliente eliminado com sucesso!" VIEW-AS ALERT-BOX INFORMATION.
    APPLY "GO":U TO FRAME f-cad-cliente.
END.

ON CHOOSE OF btCancClienteCad IN FRAME f-cad-cliente DO:
    APPLY "GO":U TO FRAME f-cad-cliente.
END.

ON CHOOSE OF btCadFilme IN FRAME f-menu-cad DO:
    FIND LAST Filmes NO-LOCK NO-ERROR.
    IF AVAIL Filmes THEN
        iCodFilmeCad = INTEGER(Filmes.codFilme) + 1 NO-ERROR.
    ELSE
        iCodFilmeCad = 1.

    DISPLAY iCodFilmeCad WITH FRAME f-cad-filme.
    DISABLE iCodFilmeCad WITH FRAME f-cad-filme.
    ENABLE cTituloFilme deValorFilme btSalvarFilmeCad btElimFilmeCad btCancFilmeCad WITH FRAME f-cad-filme.
    
    WAIT-FOR GO, WINDOW-CLOSE OF FRAME f-cad-filme.
    HIDE FRAME f-cad-filme.
END.

ON CHOOSE OF btSalvarFilmeCad IN FRAME f-cad-filme DO:
    ASSIGN cTituloFilme deValorFilme.
    CREATE Filmes.
    ASSIGN Filmes.codFilme    = STRING(iCodFilmeCad)
           Filmes.CodNome     = cTituloFilme
           Filmes.valorFilme = STRING(deValorFilme).

    MESSAGE "Filme cadastrado com sucesso!" VIEW-AS ALERT-BOX INFORMATION.
    APPLY "GO":U TO FRAME f-cad-filme.
END.

ON CHOOSE OF btElimFilmeCad IN FRAME f-cad-filme DO:
    FIND FIRST AluguelFilme WHERE AluguelFilme.codFilme = STRING(iCodFilmeCad) NO-LOCK NO-ERROR.
    IF AVAIL AluguelFilme THEN DO:
        MESSAGE "Erro: Não é possível eliminar o filme pois ele consta em registros de aluguel."
            VIEW-AS ALERT-BOX ERROR TITLE "Erro de Eliminação".
        RETURN NO-APPLY.
    END.

    FIND FIRST Filmes WHERE Filmes.codFilme = STRING(iCodFilmeCad) EXCLUSIVE-LOCK NO-ERROR.
    IF AVAIL Filmes THEN DELETE Filmes.
    MESSAGE "Filme eliminado!" VIEW-AS ALERT-BOX INFORMATION.
    APPLY "GO":U TO FRAME f-cad-filme.
END.

ON CHOOSE OF btCancFilmeCad IN FRAME f-cad-filme DO:
    APPLY "GO":U TO FRAME f-cad-filme.
END.

ON CHOOSE OF btCadAluguel IN FRAME f-menu-cad DO:
    FIND LAST AluguelFilme NO-LOCK NO-ERROR.
    IF AVAIL AluguelFilme THEN
        iCodAluguelCad = INTEGER(AluguelFilme.codAluguel) + 1 NO-ERROR.
    ELSE
        iCodAluguelCad = 1.

    DISPLAY iCodAluguelCad WITH FRAME f-cad-aluguel.
    DISABLE iCodAluguelCad WITH FRAME f-cad-aluguel.
    ENABLE iCodItemAlug iCodFilmeAlug iQtdFilmeAlug btSalvarAluguel btElimAluguel btCancAluguel WITH FRAME f-cad-aluguel.
    
    WAIT-FOR GO, WINDOW-CLOSE OF FRAME f-cad-aluguel.
    HIDE FRAME f-cad-aluguel.
END.

ON CHOOSE OF btSalvarAluguel IN FRAME f-cad-aluguel DO:
    ASSIGN iCodItemAlug iCodFilmeAlug iQtdFilmeAlug.

    FIND FIRST Filmes WHERE Filmes.codFilme = STRING(iCodFilmeAlug) NO-LOCK NO-ERROR.
    IF NOT AVAIL Filmes THEN DO:
        MESSAGE "Erro: Código de Filme inválido!" VIEW-AS ALERT-BOX ERROR TITLE "Validação de Aluguel".
        RETURN NO-APPLY.
    END.

    CREATE AluguelFilme.
    ASSIGN AluguelFilme.codAluguel    = STRING(iCodAluguelCad)
           AluguelFilme.codItem       = STRING(iCodItemAlug)
           AluguelFilme.codFilme      = STRING(iCodFilmeAlug)
           AluguelFilme.NumQuantidade = STRING(iQtdFilmeAlug)
           AluguelFilme.valorTotal    = STRING(DECIMAL(iQtdFilmeAlug) * DECIMAL(Filmes.valorFilme)).

    MESSAGE "Aluguel gravado com sucesso!" VIEW-AS ALERT-BOX INFORMATION.
    APPLY "GO":U TO FRAME f-cad-aluguel.
END.

ON CHOOSE OF btElimAluguel IN FRAME f-cad-aluguel DO:
    FOR EACH AluguelFilme WHERE AluguelFilme.codAluguel = STRING(iCodAluguelCad) EXCLUSIVE-LOCK:
        DELETE AluguelFilme.
    END.
    MESSAGE "Itens do aluguel eliminados com sucesso!" VIEW-AS ALERT-BOX INFORMATION.
    APPLY "GO":U TO FRAME f-cad-aluguel.
END.

ON CHOOSE OF btCancAluguel IN FRAME f-cad-aluguel DO:
    APPLY "GO":U TO FRAME f-cad-aluguel.
END.

ON CHOOSE OF bt-ver IN FRAME f-cad DO:
    DISPLAY 
        akiraFilme1 akiraFilme2 akiraFilme3 akiraFilme4 akiraFilme5 akiraFilme6
        peeleFilme1 peeleFilme2 peeleFilme3 cooglerFilme1
        hitchFilme1 hitchFilme3 hitchFilme4 
        nolanFilme1 nolanFilme2 nolanFilme3 nolanFilme4 nolanFilme5
        kubrickFilme1 kubrickFilme2 kubrickFilme3
        fiNome1 fiNome2 fiNome3 fiNome4 fiNome5 fiNome6
        fiPeele1 fiPeele2 fiPeele3 fiCoogler1
        fiHitch1 fiHitch3 fiHitch4
        fiNolan1 fiNolan2 fiNolan3 fiNolan4 fiNolan5
        fiKubrick1 fiKubrick2 fiKubrick3 
        WITH FRAME f-filme.
        
    ENABLE btFecharFilme WITH FRAME f-filme.
    WAIT-FOR GO, WINDOW-CLOSE OF FRAME f-filme.
    HIDE FRAME f-filme.
END.

ON CHOOSE OF btSalvarDiretor IN FRAME f-diretor DO:
    ASSIGN fiDiretorNome.
    
    IF fiDiretorNome <> "" THEN DO:
        CREATE tt-diretor.
        ASSIGN tt-diretor.cNomeDiretor = fiDiretorNome.
        
        MESSAGE "Diretor '" + fiDiretorNome + "' salvo com sucesso!" 
            VIEW-AS ALERT-BOX INFORMATION.
            
        fiDiretorNome:SCREEN-VALUE IN FRAME f-diretor = "".
        APPLY "ENTRY":U TO fiDiretorNome IN FRAME f-diretor.
    END.
    ELSE DO:
        MESSAGE "Digite o nome do diretor antes de salvar." 
            VIEW-AS ALERT-BOX WARNING.
    END.
END.

ON CHOOSE OF btVerDiretor IN FRAME f-diretor DO:
    OPEN QUERY q-diretor FOR EACH tt-diretor.
    ENABLE br-diretor btFecharVerDiretor WITH FRAME f-ver-diretor.
    WAIT-FOR GO, WINDOW-CLOSE OF FRAME f-ver-diretor.
    HIDE FRAME f-ver-diretor.
END.

ON CHOOSE OF btFecharVerDiretor IN FRAME f-ver-diretor DO:
    APPLY "GO":U TO FRAME f-ver-diretor.
END.

ON CHOOSE OF btCancDiretor IN FRAME f-diretor DO:
    APPLY "GO":U TO FRAME f-diretor.
END.

ON CHOOSE OF bt-lista IN FRAME f-cad DO:
    ENABLE ALL WITH FRAME f-lista.
    WAIT-FOR GO, WINDOW-CLOSE OF FRAME f-lista.
    HIDE FRAME f-lista.
END.

ON CHOOSE OF btSalvarLista IN FRAME f-lista DO:
    ASSIGN fiItemLista.
    
    IF fiItemLista <> "" THEN DO:
        CREATE tt-lista.
        ASSIGN tt-lista.cNomeItem = fiItemLista.
        
        MESSAGE "Item '" + fiItemLista + "' adicionado com sucesso!" 
            VIEW-AS ALERT-BOX INFORMATION.
            
        fiItemLista:SCREEN-VALUE IN FRAME f-lista = "".
        APPLY "ENTRY":U TO fiItemLista IN FRAME f-lista.
    END.
    ELSE DO:
        MESSAGE "Digite o nome do filme antes de adicionar." 
            VIEW-AS ALERT-BOX WARNING.
    END.
END.

ON CHOOSE OF btVerLista IN FRAME f-lista DO:
    OPEN QUERY q-lista FOR EACH tt-lista.
    ENABLE br-lista btFecharVerLista WITH FRAME f-ver-lista.
    WAIT-FOR GO, WINDOW-CLOSE OF FRAME f-ver-lista.
    HIDE FRAME f-ver-lista.
END.

ON CHOOSE OF btFecharVerLista IN FRAME f-ver-lista DO:
    APPLY "GO":U TO FRAME f-ver-lista.
END.

ON CHOOSE OF btCancLista IN FRAME f-lista DO:
    APPLY "GO":U TO FRAME f-lista.
END.

ON 'CHOOSE':U OF bt-first DO:
    ASSIGN cNavega = "first".
    RUN pi-posiciona-customer.
END.

ON 'CHOOSE':U OF bt-last DO:
    ASSIGN cNavega = "last".
    RUN pi-posiciona-customer.
END.

ON 'CHOOSE':U OF bt-next DO:
    FIND NEXT Clientes NO-LOCK NO-ERROR.
    IF NOT AVAIL Clientes THEN DO:
        ASSIGN cNavega = "first".
        RUN pi-posiciona-customer.
    END.
    ELSE DO:
        DISP Clientes WITH FRAME f-cad.
    END.
END.

ON 'CHOOSE':U OF bt-prev DO:
    FIND PREV Clientes NO-LOCK NO-ERROR.
    IF NOT AVAIL Clientes THEN DO:
        ASSIGN cNavega = "last".
        RUN pi-posiciona-customer.
    END.
    ELSE DO:
        DISP Clientes WITH FRAME f-cad.
    END.
END.

ON 'choose':U OF bt-add DO:
    ASSIGN cOpcao = "add".
    FIND LAST Clientes NO-LOCK NO-ERROR.
    IF AVAIL Clientes THEN
        iCustNum = INTEGER(Clientes.codCliente) + 1 NO-ERROR.
    ELSE
        iCustNum = 1.

    DISABLE bt-first bt-prev bt-next bt-last
            bt-add bt-upd bt-del bt-exit
            WITH FRAME f-cad.
    CLEAR FRAME f-cad.
    DISP iCustNum @ Clientes.codCliente WITH FRAME f-cad.
    ENABLE bt-save bt-canc WITH FRAME f-cad.
    ENABLE Clientes.clienteNome Clientes.ClienteTele Clientes.endereRua 
           Clientes.endereBairro Clientes.endereCidade Clientes.codObservacao WITH FRAME f-cad.
END.

ON 'choose':U OF bt-upd DO:
    ASSIGN cOpcao = "upd".
    ASSIGN bt-first:SENSITIVE = NO
           bt-prev:SENSITIVE  = bt-first:SENSITIVE
           bt-next:SENSITIVE  = bt-first:SENSITIVE
           bt-last:SENSITIVE  = bt-first:SENSITIVE
           bt-add:SENSITIVE   = bt-first:SENSITIVE
           bt-upd:SENSITIVE   = bt-first:SENSITIVE
           bt-del:SENSITIVE   = bt-first:SENSITIVE
           bt-exit:SENSITIVE  = bt-first:SENSITIVE
           bt-save:SENSITIVE  = NOT bt-first:SENSITIVE
           bt-canc:SENSITIVE  = NOT bt-first:SENSITIVE.
           
    ENABLE Clientes.clienteNome Clientes.ClienteTele Clientes.endereRua 
           Clientes.endereBairro Clientes.endereCidade Clientes.codObservacao WITH FRAME f-cad.
END.

ON 'choose':U OF bt-del DO:
    DEF VAR lResp AS LOGICAL NO-UNDO INITIAL NO.
    MESSAGE "Deseja eliminar o cliente " Clientes.clienteNome "?"
            UPDATE lResp VIEW-AS ALERT-BOX QUESTION BUTTONS YES-NO
            TITLE "Eliminação".
    IF lResp = YES THEN DO:
        FIND CURRENT Clientes EXCLUSIVE-LOCK NO-ERROR.
        DELETE Clientes.
        ASSIGN cNavega = "last".
        RUN pi-posiciona-customer.
    END.
END.

ON 'choose':U OF bt-save DO:
    CASE cOpcao:
        WHEN "add" THEN DO:
            CREATE Clientes.
            ASSIGN Clientes.codCliente = STRING(iCustnum).
            
            ASSIGN FRAME f-cad 
                   Clientes.clienteNome 
                   Clientes.endereRua 
                   Clientes.endereBairro 
                   Clientes.endereCidade 
                   Clientes.codObservacao.

            Clientes.ClienteTele = REPLACE(INPUT FRAME f-cad Clientes.ClienteTele, ">", "").

            DISABLE ALL WITH FRAME f-cad.
            ENABLE bt-first bt-prev bt-next bt-last
                   bt-add bt-upd bt-del bt-exit 
                   bt-ver bt-cad bt-dire bt-lista bt-csv bt-txt WITH FRAME f-cad.
        END.
        WHEN "upd" THEN DO:
            FIND CURRENT Clientes EXCLUSIVE-LOCK NO-ERROR.
            IF AVAIL Clientes THEN DO:
                ASSIGN FRAME f-cad 
                       Clientes.clienteNome 
                       Clientes.endereRua 
                       Clientes.endereBairro 
                       Clientes.endereCidade 
                       Clientes.codObservacao.

                Clientes.ClienteTele = REPLACE(INPUT FRAME f-cad Clientes.ClienteTele, ">", "").
            END.

            DISABLE ALL WITH FRAME f-cad.
            ENABLE bt-first bt-prev bt-next bt-last
                   bt-add bt-upd bt-del bt-exit 
                   bt-ver bt-cad bt-dire bt-lista bt-csv bt-txt WITH FRAME f-cad.
        END.
    END CASE.
END.

ON 'choose':U OF bt-canc DO:
    DISABLE ALL WITH FRAME f-cad.
    ENABLE bt-first bt-prev bt-next bt-last
           bt-add bt-upd bt-del bt-exit 
           bt-ver bt-cad bt-dire bt-lista bt-csv bt-txt WITH FRAME f-cad.
END.

ON 'CHOOSE':U OF bt-csv DO:
    DEF VAR cArquivo AS CHARACTER NO-UNDO INITIAL "C:\temp\clientes.csv".
    DEF VAR cDiretorio AS CHARACTER NO-UNDO INITIAL "C:\temp".

    OS-CREATE-DIR VALUE(cDiretorio).

    OUTPUT TO VALUE(cArquivo).
    PUT UNFORMATTED "Codigo;Nome;Telefone;Cidade;Rua" SKIP.
 
    FOR EACH Clientes NO-LOCK:
        EXPORT DELIMITER ";" 
            Clientes.codCliente Clientes.clienteNome Clientes.ClienteTele 
            Clientes.endereCidade Clientes.endereRua.
    END.
    OUTPUT CLOSE.
 
    MESSAGE "Arquivo exportado com sucesso em: " cArquivo 
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
END.

ON 'CHOOSE':U OF bt-txt DO:
    DEF VAR itot AS INTEGER NO-UNDO.
    DEF VAR cArq AS CHAR    NO-UNDO.
    DEF VAR cDir AS CHAR    NO-UNDO INITIAL "C:\temp".
    
    ASSIGN cArq = "C:\temp\listagem_clientes.txt".

    OS-CREATE-DIR VALUE(cDir).

    OUTPUT TO VALUE(cArq).
    
    FOR EACH Clientes NO-LOCK 
        BREAK BY Clientes.endereCidade:
        
        IF FIRST-OF(Clientes.endereCidade) THEN DO:
            PUT UNFORMATTED "CIDADE: " Clientes.endereCidade SKIP.
            ASSIGN itot = 0.
        END.

        DISPLAY Clientes.codCliente Clientes.clienteNome Clientes.ClienteTele WITH FRAME f-relat DOWN.
        ASSIGN itot = itot + 1.

        IF LAST-OF(Clientes.endereCidade) THEN DO:
            PUT UNFORMATTED
                FILL("-", 35) AT 10
                SKIP
                "Total de clientes nesta cidade = " AT 10 itot 
                SKIP(1).
        END.
    END.
    
    OUTPUT CLOSE.
    
    OS-COMMAND NO-WAIT VALUE("notepad " + cArq).
END.

DISPLAY logo WITH FRAME f-cad.

ENABLE bt-first bt-prev bt-next bt-last
       bt-add bt-upd bt-del bt-exit 
       bt-ver bt-cad bt-dire bt-lista bt-csv bt-txt WITH FRAME f-cad.

ASSIGN cNavega = "first".
RUN pi-posiciona-customer.

WAIT-FOR ENDKEY, WINDOW-CLOSE OF FRAME f-cad.
