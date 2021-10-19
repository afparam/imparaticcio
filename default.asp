<!DOCTYPE html>
<!-- #include file = "pfeFunz.asp" -->

<!--
##################
#
# PAGINA INIZIALE
#
##################
-->

<html>

<head>
  <title> SINCRONIS </title>
  <link href="css/cssSincronis.css" rel="stylesheet">
  <link href="css/sincronis.css" rel="stylesheet">
  <script src="js/funct.js"></script>
</head>


<body>


<!-- ------------------------- -->
<!-- PARTE CONTROLLO DI FLUSSO -->
<!-- ------------------------- -->

  <%
    'dim vazi
    'vazi = Request.Form("nazi")
    'if vazi = 1 then
    '  call chiusura() 
    'end if

    'connessione
    cnn = collegam()

    'dichiarazione costanti
    const adOpenStatic = 3
    const adUseClient = 3
    const adLockBatchOptimistic = 4

    'dichiarazione funzioni voci tendine
    set oTVSt = sqsTndStr(cnn)  'struttura
  %>

<!-- ------------------------------ -->
<!-- FINE PARTE CONTROLLO DI FLUSSO -->
<!-- ------------------------------ -->


<!-- ----------------------------- -->
<!-- PARTE IMPAGINAZIONE RISULTATI -->
<!-- ----------------------------- -->

<!-- finestra introduzione credenziali -->
<div id="implogin">

  <form id="iavv" name="navv" method="post" action="pfvEDis.asp">
    <br>
    <span class="elogin"> Utente </span>
    <span class="clogin"> <input type="text" id="iute" name="nute" value=""> </span>
    <br>
    <br>
    <span class="elogin"> Password </span>
    <span class="clogin"> <input type="password" id="ipwd" name="npwd" value=""> </span>  
    <br>
    <br>
    <span class="elogin"> Struttura </span>
    <span>
      <select class="clogin" id="itst" name="nstr" onBlur="return jsStr(this)">      <!-- struttura -->
        <%
        oTVSt.MoveFirst
        do until oTVSt.EOF
          ttStr = oTVSt.Fields(0).Value
          %> <option> <% Response.Write(ttStr)
          oTVSt.MoveNext
        loop
        %>
      </select>
    </span>
    <br>
    <br>
    <span class="blogin"> <input class="bvch" type="submit" value="Avvio"> </span>
    <span class="clogin"> <input type="hidden" id="idat" name="ndat" value="%"> </span>
    <span class="clogin"> <input type="hidden" id="iidd" name="nidd" value="%"> </span>
    <span class="clogin"> <input type="hidden" id="ivlo" name="nvlo" value="%"> </span>
    <span class="clogin"> <input type="hidden" id="ivdi" name="nvdi" value="%"> </span>
    <span class="clogin"> <input type="hidden" id="ivti" name="nvti" value="%"> </span>
    <span class="clogin"> <input type="hidden" id="ivco" name="nvco" value="%"> </span>
    <span class="clogin"> <input type="hidden" id="iatt" name="natt" value="att"> </span>
  </form>

  <!-- <form id="iusc" name="nusc" method="post" action="default.asp">
    <br>
    <div class="blogin"> <input class="bros" type="submit" value="Termine"> </div>
    <input type="hidden" id="iazi" name="nazi" value=1>
  </form> -->

</div>
<!-- fine finestra introduzione credenziali -->

<!-- ---------------------------------- -->
<!-- FINE PARTE IMPAGINAZIONE RISULTATI -->
<!-- ---------------------------------- -->

</body>


</html>
