07_22_2013 | Work | ZZ 
* 01:01:00
* 10:01:00
Worked on fixing sanfordschool redirects.
* 11:01:00
* 12:01:00
* 13:01:00
Working on CE.

<<<<<<< Local Changes
<<<<<<< Local Changes
<<<<<<< Local Changes
<<<<<<< Local Changes
<<<<<<< Local Changes
<<<<<<< Local Changes
bash-3.2$ diff quikpay.module quikpay.module.062713-working
94d93
<     $settings['quikpay_success_text'] = 'Thank you for your payment. You may now view your orders by clicking on the link below.';
173,179d171
<  $form['quikpay_success_text'] = array(
<     '#type' => 'textarea',
<     '#title' => t('Success Message'),
<     '#default_value' => $settings['quikpay_success_text'],
<     '#description' => ('Text to display upon successful completion of payment'),
<     '#required' => TRUE
<     );
358c350
<   //$hash_string = $param['orderNumber'].$param['orderType'].$param['amount']; #Not working
---
>   // $hash_trans .= $param['orderType'].$param['orderNumber'].$param['amount']; NOT READY
416c408
<   $environ['success'] = $settings[0]['payment_method']['settings']['quikpay_success_text'];
---
>
bash-3.2$ diff quikpay.pages.inc quikpay.pages.inc.062713-working
11c11
<   global $base_url;
---
>
31a32
>     $msg .= "Processing data..";
100d100
<       $message = $environ['success'];
159a160
>       $hash = $_GET['hash'];
161d161
<       $hash = $check_hash //Bypass hash check for now
221,224c221
<         $msg = $transaction_result_message;
<       $msg .= $message;
<       $msg .= "<br />You can view your order on your account page when logged in.";
<       $msg .= "<br /><br /><a href='$base_url'>Return to the front page</a>";
---
>         $msg = "Payment was successful"

https://eltdev.asu.edu/continuing-education/commerce_nelnet/rtpn?transactionType=1&transactionStatus=1&transactionId=5001572196&originalTransactionId=&transactionTotalAmount=5100&transactionDate=201307221300&transactionAcountType=VISA&transactionEffectiveDate=201307230000&transactionDescription=Osher+Lifelong+Learning+Inst&transactionResultDate=201307221300&transactionResultEffectiveDate=201307230000&transactionResultCode=TAS717&transactionResultMessage=This+transaction+has+been+approved.&orderNumber=191&orderType=OLLI&orderName=&orderDescription=Osher+Lifelong+Learning+Inst&orderAmount=5100&orderFee=0&orderAmountDue=&orderDueDate=&orderBalance=&orderCurrentStatusBalance=&orderCurrentStatusAmountDue=&timestamp=1374523245152&hash=be6b2d4b88b57a534ca53ced3b3dda0b=======
* 16:01:01
>>>>>>> External Changes
=======
* 16:01:01
* 17:01:00
>>>>>>> External Changes
=======
* 16:01:01
* 17:01:00
* 18:01:00
>>>>>>> External Changes
=======
* 16:01:01
* 17:01:00
* 18:01:00
* 19:01:01
>>>>>>> External Changes
=======
* 16:01:01
* 17:01:00
* 18:01:00
* 19:01:01
* 20:01:00
>>>>>>> External Changes
=======
* 16:01:01
* 17:01:00
* 18:01:00
* 19:01:01
* 20:01:00
* 23:01:00
>>>>>>> External Changes
