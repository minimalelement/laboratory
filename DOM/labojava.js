function renovationXML() {
    var renXml = new XMLHttpRequest();
  
    console.log(renXml.readyState);
  
    renXml.onreadystatechange = function () {
      console.log(renXml.readyState);
      if (this.readyState == 4 && this.status == 200) {
        // document.getElementById('customer_info').innerHTML = this.responseText;
        cusinfo(this);
        // console.log(renXml.readyState);
      }
    };
  
    renXml.open("GET", "NewXMLSchema.xml", "TRUE");
  
    renXml.send();
  }
  
  var xmlDoc;
  var table;
  var x;
  
  function cusinfo(info) {
    var i;
    xmlDoc = info.responseXML;
    // console.log(xmlDoc);
    displayTable(xmlDoc);
  }
  function displayTable(xmlDoc) {
    table = `<thead><tr>
            <th>EMP_Name</th>
           <th>EMP_experience</th>
           <th>EMP_address</th>
           <th>EMP_phone</th>
           <th>Salary</th>
          </tr></thead>`;
  
    x = xmlDoc.getElementsByTagName("Faculty");
  
    for (i = 0; i < x.length; i++) {
      table +=
        "<tr><td>" +
        x[i].getElementsByTagName("EMP_Name")[0].childNodes[0].nodeValue +
        "</td><td data-label='Date'>" +
        x[i].getElementsByTagName("EMP_experience")[0].childNodes[0].nodeValue +
        "</td><td>" +
        x[i].getElementsByTagName("EMP_address")[0].childNodes[0].nodeValue +
        "</td><td>" +
        x[i].getElementsByTagName("EMP_phone")[0].childNodes[0].nodeValue +
        "</td><td>" +
        x[i].getElementsByTagName("Salary")[0].childNodes[0].nodeValue +
        "</td><td>" +
        "</td><td><button onclick='removecus()'> remove </button></td></tr>";
    }
    document.getElementById("customer_info").innerHTML = table;
  }
  
  function removecus() {
    // console.log(xmlDoc.getElementsByTagName('customer')[0]);
    // var x = xmlDoc.getElementsByTagName("customer")[0];
  
    var index,
      table = document.getElementById("customer_info");
  
    for (var i = 0; i < table.rows.length; i++) {
      table.rows[i].onclick = function () {
        index = this.rowIndex;
  
        x = xmlDoc.getElementsByTagName("Faculty")[index - 1];
        xmlDoc.documentElement.removeChild(x);
        console.log(xmlDoc);
        displayTable(xmlDoc);
      };
    }
    alert("This customer detail removed!");
  }
  
  function removeNodeElement() {
    var i;
  
    for (i = 0; i < x.length; i++) {
      a = xmlDoc
        .getElementsByTagName("Faculty")
        [i].getElementsByTagName("EMP_experience")[0];
      b = a.childNodes[0];
      a.removeChild(b);
    }
    console.log(xmlDoc);
    table = `<thead><tr>
    <th>EMP_Name</th>
   <th>EMP_address</th>
   <th>EMP_phone</th>
   <th>Salary</th>
  </tr></thead>`;
  var some = xmlDoc;
  x = xmlDoc.getElementsByTagName("Faculty");
  
  for (i = 0; i < x.length; i++) {
  table +=
  "<tr><td>" +
  x[i].getElementsByTagName("EMP_Name")[0].childNodes[0].nodeValue +
  "</td><td>" +
  x[i].getElementsByTagName("EMP_address")[0].childNodes[0].nodeValue +
  "</td><td>" +
  x[i].getElementsByTagName("EMP_phone")[0].childNodes[0].nodeValue +
  "</td><td>" +
  x[i].getElementsByTagName("Salary")[0].childNodes[0].nodeValue +
  "</td><td>" +
  "</td><td><button onclick='removecus()'> remove </button></td></tr>";
  }
  document.getElementById("customer_info").innerHTML = table;
    alert('The node element  "Employee Experience" has been removed!');
  
  }
  
  function changeNodeValue() {
    var j;
    for (j = 0; j < x.length; j++) {
      var sal = xmlDoc
        .getElementsByTagName("Faculty")
        [j].getElementsByTagName("Salary")[0].childNodes[0].nodeValue;
        var sal = parseInt(sal);
        xmlDoc
        .getElementsByTagName("Faculty")
        [j].getElementsByTagName("Salary")[0].childNodes[0].nodeValue = sal + 100;
    }
    console.log(xmlDoc);
    alert("The renovation status has been changed ongoing!");
    displayTable(xmlDoc);
  }
  
  function addNewElement() {
    var i;
    newEle = xmlDoc.createElement("EMP_status");
    newText = xmlDoc.createTextNode("Currently Working");
    newEle.appendChild(newText);
    xmlDoc.getElementsByTagName("Faculty")[0].appendChild(newEle);
    console.log(xmlDoc);
    alert('The new node element "Employee Status" has been added to the second node!');
    var table = `<thead><tr>
            <th>EMP_Name</th>
           <th>EMP_experience</th>
           <th>EMP_address</th>
           <th>EMP_phone</th>
           <th>Salary</th>
           <th>EMP_status</th>
          </tr></thead>`;
  
    x = xmlDoc.getElementsByTagName("Faculty");
  
    for (i = 0; i < x.length; i++) {
      table +=
        "<tr><td>" +
        x[i].getElementsByTagName("EMP_Name")[0].childNodes[0].nodeValue +
        "</td><td>" +
        x[i].getElementsByTagName("EMP_experience")[0].childNodes[0].nodeValue +
        "</td><td>" +
        x[i].getElementsByTagName("EMP_address")[0].childNodes[0].nodeValue +
        "</td><td>" +
        x[i].getElementsByTagName("EMP_phone")[0].childNodes[0].nodeValue +
        "</td><td>" +
        x[i].getElementsByTagName("Salary")[0].childNodes[0].nodeValue +
        "</td><td>" +
        x[0].getElementsByTagName("EMP_status")[0].childNodes[0].nodeValue +
        "</td><td><button onclick='removecus()'> remove </button></td></tr>";
    }
    document.getElementById("customer_info").innerHTML = table;
  }