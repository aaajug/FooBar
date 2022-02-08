$("#submit").click(function() {
  var input = parseInt($("#input").val());
  var output = "";

  // FooBar
  for (i=1 ; i<=input ; i++) {
    output += divisibility(i) + "<br>";
  }

  $("#output-container").html(output);
});

function divisibility(number) {
  var by_five =  number % 5 == 0;
  var by_three = number % 3 == 0;

  if(by_five && by_three) {
    return "FooBar";
  } else if(by_five) {
    return "Bar";
  } else if(by_three) {
    return "Foo";
  } else {
    return number;
  }
} 