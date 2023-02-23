
<?php include('config.php') ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="initial-scale=1, width=device-width" />
    <link rel="stylesheet" href="./global.css" />
    <link rel="stylesheet" href="./i-phone-13-pro-max-7.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Segoe UI:wght@400;600;700&display=swap" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" />
  </head>
  <body>
    <div class="iphone-13-pro-max-7">
      <img
        class="iphone-13-pro-max-7-child"
        alt=""
        src="public/group-2173.svg"
      />
      <div class="iphone-13-pro-max-7-item"></div>
      <div class="iphone-13-pro-max-7-inner"></div>
      <div class="iphone-13-pro-max-7-child1"></div>
      <div class="iphone-13-pro-max-7-child2"></div>
      <div class="iphone-13-pro-max-7-child3"></div>
      <div class="iphone-13-pro-max-7-child4"></div>
      <div class="iphone-13-pro-max-7-child5"></div>
      <div class="iphone-13-pro-max-7-child6"></div>
      <div class="battery-icon-parent3">
        <img class="battery-icon5" alt="" src="public/batteryicon.svg" />
        <div class="div5">58 %</div>
        <img
          class="bluetooth-icon5"
          alt=""
          src="public/bluetoothicon.svg"
        /><img class="lock-icon5" alt="" src="public/lockicon4.svg" /><img
          class="wifi-icon5"
          alt=""
          src="public/wifi.svg"
        />
        <div class="gs5">GS</div>
        <img class="signal-icon5" alt="" src="public/signal4.svg" />
      </div>
      <form action="" method="POST">
      <select class="ctype">
      <option class="ctype" id="">Cancer Type</option>
      <?php   
        $query = "SELECT DISTINCT(cancerName) FROM cancerdetails";
        $exequery = mysqli_query($conn, $query);
        while($value = mysqli_fetch_assoc($exequery)) { ?>
      <option class="ctype" value=""><?php echo $value['cancerName']; ?></option>
      <?php } ?>
       </select>
      <select class="tmtype" id="Tmtype" name="Tmtype">
      <option class="tmtype">TM Type</option>
      <?php   
        $query = "SELECT DISTINCT(Tmtype) FROM cancerdetails";
        $exequery = mysqli_query($conn, $query);
        while($value = mysqli_fetch_assoc($exequery)) { ?>
      <option class="tmtype" value="<?php echo $value['Tmtype']; ?>"><?php echo $value['Tmtype']; ?></option>
      <?php } ?>
       </select>
      <select class="ntype"  id="Ntype" name="Ntype" onchange="changeType()">
      <option class="ntype" id="">N Type</option>
      <?php   
        $query = "SELECT DISTINCT(Ntype) FROM cancerdetails";
        $exequery = mysqli_query($conn, $query);
        while($value = mysqli_fetch_assoc($exequery)) { ?>
      <option class="ntype" value="<?php echo $value['Ntype']; ?>"><?php echo $value['Ntype']; ?></option>
      <?php } ?>
       </select>
      <div class="cstage" id="cancerStage" name="cancerStage">Cancer Stage</div>
      <div class="survyear" id="survivalYear" name="survivalYear">Survival Year Calc</div>
      <div class="survdata" >( Last 5 or 10 Yrs data)</div>
      <div class="survrate" id="survivalRate" name="survivalRate" >Survival Rate</div>
      <div class="linksrc" id="link" name="link" >Link Source</div>
      <div class="rectangle-parent7">
        <div class="group-child8"></div>
        <img class="shape-icon8" alt="" src="public/shape.svg" />
      </div>
      <div class="rectangle-parent8">
        <div class="group-child9"></div>
        <img class="shape-icon9" alt="" src="public/shape1.svg" />
      </div>
      <b class="about-yourself">About yourself</b
      ><img
        class="logo-600x600-2-removebg-previe-icon5"
        alt=""
        src="public/logo600x6002removebgpreview-2@2x.png"
      />
    </div>
        </form>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <script>
      function changeType() {
          var Tm_type = document.getElementById("Tmtype").value;
          var N_type  = document.getElementById("Ntype").value;
            $.ajax({
            url: "ajaxLoad.php",
            type: "POST",
            data: {
            Tm_type: Tm_type,
            N_type : N_type
            },

            cache: false,
            success: function(result){
              var rVal= result.split('|');
              var stage = "Cancer Stage : " + rVal[0];
              var year = "Years : " + rVal[1];
              var rate = "Survival Rate : " + rVal[2];
              var link = "Source Link : " + rVal[3];
             $("#cancerStage").html(stage);
             $("#survivalYear").html(year);
             $("#survivalRate").html(rate);
             $("#link").html(link);

            }
            }); 
            }
    </script>
  </body>
</html>
