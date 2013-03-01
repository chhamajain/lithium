<html>
<head>
<style>
body
{
background-color:#8cc63e;
}
</style>
<script>
function formAnonymous()
{
element = document.getElementById("fmAnonymous");
element.parentNode.removeChild(element);
document.getElementById("imageAnonymous").innerHTML="<img src='http://www.fun-pinata-party-ideas.com/image-files/smiley-thanks.jpg' alt='Smiley face' width='150' height='175'>";
}
function formAdmin()
{
element = document.getElementById("fmAdmin");
element.parentNode.removeChild(element);
document.getElementById("imageAdmin").innerHTML="<img src='http://www.fun-pinata-party-ideas.com/image-files/smiley-thanks.jpg' alt='Smiley face' width='150' height='175'>";
}
function formAmplifier()
{
element = document.getElementById("fmAmplifier");
element.parentNode.removeChild(element);
document.getElementById("imageAmplifier").innerHTML="<img src='http://marriage.greekorthodox.org.au/wp-content/uploads/2012/09/Thank-you-for-your-feedback1.jpg' alt='Smiley face' width='225' height='150'>";
}
function formTrustedContributor()
{
element = document.getElementById("fmTrustedContributor");
element.parentNode.removeChild(element);
document.getElementById("imageTC").innerHTML="<img src='http://marriage.greekorthodox.org.au/wp-content/uploads/2012/09/Thank-you-for-your-feedback1.jpg' alt='Smiley face' width='225' height='150'>";
}
</script>
</head>
<body style="background-color:#8cc63e;">
<#assign is_user_admin = false />
<#if user.anonymous == true>
<form id="fmAnonymous">
<b>Hello There! Yes You! <br> <br> We would like to see you become a member of the ACME HiFi Community.<br><br>
Take this quick survey and see if community membership will benefit you.</b><br><br>
<b>Do you own any ACME HiFi Products?</b><br><INPUT TYPE="radio" NAME="q1" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q1" VALUE="n">No
<br><br><b>Are you interested in learning about ACME HiFi Products?</b><br>
<INPUT TYPE="radio" NAME="q2" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q2" VALUE="n">No<br><br>
<b>Are you likely to make a purchase in the next 12 months?</b><br>
<INPUT TYPE="radio" NAME="q3" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q3" VALUE="n">No<br><br>
<b>Do you need any assistance with your HiFi products?</b><br>
<INPUT TYPE="radio" NAME="q4" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q4" VALUE="n">No<br><br>
<input type="button" onclick="formAnonymous()" value="Submit form"><br>
</form>
<div id="imageAnonymous"></div>
</#if>
<#list restadmin("/users/id/${user.id?c}/roles").roles.role as role>
<#if role.name?? && (role.name == "Administrator")>
    <#assign is_user_admin = true />
</#if>
</#list>
<#if is_user_admin==true>

<form id="fmAdmin">
<b>Congratulations <i>${user.login}</i> on being a Community Administrator!<br><br>
Your feedback is very important to us.</b><br><br>
<b>Please take a quick moment to fill out the survey below.</b><br><br>
<b>Are Administrator Responsibilities too time consuming?</b><br>
<INPUT TYPE="radio" NAME="q1" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q1" VALUE="n">No
<br><br>
<b>Have Administrator Capabilities been difficult to learn?</b><br>
<INPUT TYPE="radio" NAME="q2" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q2" VALUE="n">No<br><br>
<b>Would you like additional Administrator training?</b><br>
<INPUT TYPE="radio" NAME="q3" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q3" VALUE="n">No<br><br>
<b>Do you expect major Community changes this year?</b><br>
<INPUT TYPE="radio" NAME="q4" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q4" VALUE="n">No<br><br>
<b>What improvements would you like to see?</b><br><textarea rows="4" cols="30">
</textarea><br><br>
<input type="button" onclick="formAdmin()" value="Submit form"><br>
</form>
<div id="imageAdmin"></div>
</#if>
<#if user.ranking.id ==11>

<form id="fmTrustedContributor">
<b>Congratulations <i>${user.login}</i> on being a Trusted Contributor!<br><br>
Your feedback is very important to us.</b><br><br>
<b>Please take a quick moment to fill out the survey below.</b><br><br>
<b>Has being a Trusted Contributor been beneficial to you?</b><br>
<INPUT TYPE="radio" NAME="q1" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q1" VALUE="n">No
<br><br>
<b>Is there adequate information on what you can do as a Trusted Contributor?</b><br>
<INPUT TYPE="radio" NAME="q2" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q2" VALUE="n">No<br><br>
<b>Would you like more community capabilities as a Trusted Contributor?</b><br>
<INPUT TYPE="radio" NAME="q3" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q3" VALUE="n">No<br><br>
<b>Do you have adequate training materials available to you?</b><br>
<INPUT TYPE="radio" NAME="q4" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q4" VALUE="n">No<br><br>
<b>What improvements would you like to see?</b><br><textarea rows="4" cols="30">
</textarea><br><br>
<input type="button" onclick="formTrustedContributor()" value="Submit form"><br>
</form>
<div id="imageTC"></div>
</#if>
<#if user.ranking.id ==21>
<form id="fmAmplifier">
<b>Congratulations <i>${user.login}</i> your Amplifier Ranking!<br><br>
Your feedback is very important to us.</b><br><br>
<b>Please take a quick moment to fill out the survey below.</b><br><br>
<b>Has being an Amplifier been beneficial to you?</b><br>
<INPUT TYPE="radio" NAME="q1" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q1" VALUE="n">No
<br><br>
<b>Is there adequate information on what you can do as an Amplifier rank?</b><br>
<INPUT TYPE="radio" NAME="q2" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q2" VALUE="n">No<br><br>
<b>Would you like more community capabilities as an Amplifier rank?</b><br>
<INPUT TYPE="radio" NAME="q3" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q3" VALUE="n">No<br><br>
<b>Do you have adequate training materials available to you?</b><br>
<INPUT TYPE="radio" NAME="q4" VALUE="y">Yes
<INPUT TYPE="radio" NAME="q4" VALUE="n">No<br><br>
<b>What improvements would you like to see?</b><br><textarea rows="4" cols="30">
</textarea><br><br>
<input type="button" onclick="formAmplifier()" value="Submit form"><br>
</form>
<div id="imageAmplifier"></div>
</#if>
</body>
</html>

