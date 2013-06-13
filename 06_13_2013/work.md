06_13_2013 | Work | ZZ 
* 11:01:24
Worked on migration module
Working on implementing CE changes for redirection
$form['redirect'] = array(
   '#type' => 'select',
   '#title' => t('Redirect Method'),
   '#default_value' => $settings['redirect'],
   '#options' => array(
     'rtpn' => t('RTPN'),
     'url' => t('Redirect URL'),
     ),
   '#description' => t('Select whether to use RTPN or the redirect method upon completion of payment.'),
   );* 12:01:00
* 13:01:00
