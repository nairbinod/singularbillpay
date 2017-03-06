<?php
/**
 * SbpProfile
 *
 * PHP version 5
 *
 * @category Class
 * @package  SingularApi
 * @author   http://github.com/swagger-api/swagger-codegen
 * @license  http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link     https://github.com/swagger-api/swagger-codegen
 */
/**
 *  Copyright 2016 SmartBear Software
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

namespace SingularApi\Model;

use \ArrayAccess;
/**
 * SbpProfile Class Doc Comment
 *
 * @category    Class
 * @description Model for SbpProfile
 * @package     SingularApi
 * @author      http://github.com/swagger-api/swagger-codegen
 * @license     http://www.apache.org/licenses/LICENSE-2.0 Apache Licene v2
 * @link        https://github.com/swagger-api/swagger-codegen
 */
class SbpProfile implements ArrayAccess
{
    /**
      * Array of property to type mappings. Used for (de)serialization 
      * @var string[]
      */
    static $swaggerTypes = array(
        'address' => 'string',
        'city' => 'string',
        'country' => 'string',
        'currency' => 'string',
        'cvv' => 'string',
        'email' => 'string',
        'expirymmyy' => 'string',
        'orderid' => 'string',
        'partnerid' => 'string',
        'partnerkey' => 'string',
        'payeefirstname' => 'string',
        'payeeid' => 'string',
        'payeelastname' => 'string',
        'paymentmode' => 'string',
        'profileid' => 'string',
        'routingnumber' => 'string',
        'state' => 'string',
        'tokenizedaccountnumber' => 'string',
        'udfield1' => 'string',
        'udfield2' => 'string',
        'udfield3' => 'string',
        'zip' => 'string'
    );
  
    /** 
      * Array of attributes where the key is the local name, and the value is the original name
      * @var string[] 
      */
    static $attributeMap = array(
        'address' => 'address',
        'city' => 'city',
        'country' => 'country',
        'currency' => 'currency',
        'cvv' => 'cvv',
        'email' => 'email',
        'expirymmyy' => 'expirymmyy',
        'orderid' => 'orderid',
        'partnerid' => 'partnerid',
        'partnerkey' => 'partnerkey',
        'payeefirstname' => 'payeefirstname',
        'payeeid' => 'payeeid',
        'payeelastname' => 'payeelastname',
        'paymentmode' => 'paymentmode',
        'profileid' => 'profileid',
        'routingnumber' => 'routingnumber',
        'state' => 'state',
        'tokenizedaccountnumber' => 'tokenizedaccountnumber',
        'udfield1' => 'udfield1',
        'udfield2' => 'udfield2',
        'udfield3' => 'udfield3',
        'zip' => 'zip'
    );
  
    /**
      * Array of attributes to setter functions (for deserialization of responses)
      * @var string[]
      */
    static $setters = array(
        'address' => 'setAddress',
        'city' => 'setCity',
        'country' => 'setCountry',
        'currency' => 'setCurrency',
        'cvv' => 'setCvv',
        'email' => 'setEmail',
        'expirymmyy' => 'setExpirymmyy',
        'orderid' => 'setOrderid',
        'partnerid' => 'setPartnerid',
        'partnerkey' => 'setPartnerkey',
        'payeefirstname' => 'setPayeefirstname',
        'payeeid' => 'setPayeeid',
        'payeelastname' => 'setPayeelastname',
        'paymentmode' => 'setPaymentmode',
        'profileid' => 'setProfileid',
        'routingnumber' => 'setRoutingnumber',
        'state' => 'setState',
        'tokenizedaccountnumber' => 'setTokenizedaccountnumber',
        'udfield1' => 'setUdfield1',
        'udfield2' => 'setUdfield2',
        'udfield3' => 'setUdfield3',
        'zip' => 'setZip'
    );
  
    /**
      * Array of attributes to getter functions (for serialization of requests)
      * @var string[]
      */
    static $getters = array(
        'address' => 'getAddress',
        'city' => 'getCity',
        'country' => 'getCountry',
        'currency' => 'getCurrency',
        'cvv' => 'getCvv',
        'email' => 'getEmail',
        'expirymmyy' => 'getExpirymmyy',
        'orderid' => 'getOrderid',
        'partnerid' => 'getPartnerid',
        'partnerkey' => 'getPartnerkey',
        'payeefirstname' => 'getPayeefirstname',
        'payeeid' => 'getPayeeid',
        'payeelastname' => 'getPayeelastname',
        'paymentmode' => 'getPaymentmode',
        'profileid' => 'getProfileid',
        'routingnumber' => 'getRoutingnumber',
        'state' => 'getState',
        'tokenizedaccountnumber' => 'getTokenizedaccountnumber',
        'udfield1' => 'getUdfield1',
        'udfield2' => 'getUdfield2',
        'udfield3' => 'getUdfield3',
        'zip' => 'getZip'
    );
  
    
    /**
      * $address 
      * @var string
      */
    protected $address;
    
    /**
      * $city 
      * @var string
      */
    protected $city;
    
    /**
      * $country 
      * @var string
      */
    protected $country;
    
    /**
      * $currency 
      * @var string
      */
    protected $currency;
    
    /**
      * $cvv 
      * @var string
      */
    protected $cvv;
    
    /**
      * $email 
      * @var string
      */
    protected $email;
    
    /**
      * $expirymmyy 
      * @var string
      */
    protected $expirymmyy;
    
    /**
      * $orderid 
      * @var string
      */
    protected $orderid;
    
    /**
      * $partnerid 
      * @var string
      */
    protected $partnerid;
    
    /**
      * $partnerkey 
      * @var string
      */
    protected $partnerkey;
    
    /**
      * $payeefirstname 
      * @var string
      */
    protected $payeefirstname;
    
    /**
      * $payeeid 
      * @var string
      */
    protected $payeeid;
    
    /**
      * $payeelastname 
      * @var string
      */
    protected $payeelastname;
    
    /**
      * $paymentmode 
      * @var string
      */
    protected $paymentmode;
    
    /**
      * $profileid 
      * @var string
      */
    protected $profileid;
    
    /**
      * $routingnumber 
      * @var string
      */
    protected $routingnumber;
    
    /**
      * $state 
      * @var string
      */
    protected $state;
    
    /**
      * $tokenizedaccountnumber 
      * @var string
      */
    protected $tokenizedaccountnumber;
    
    /**
      * $udfield1 
      * @var string
      */
    protected $udfield1;
    
    /**
      * $udfield2 
      * @var string
      */
    protected $udfield2;
    
    /**
      * $udfield3 
      * @var string
      */
    protected $udfield3;
    
    /**
      * $zip 
      * @var string
      */
    protected $zip;
    

    /**
     * Constructor
     * @param mixed[] $data Associated array of property value initalizing the model
     */
    public function __construct(array $data = null)
    {
        if ($data != null) {
            $this->address = $data["address"];
            $this->city = $data["city"];
            $this->country = $data["country"];
            $this->currency = $data["currency"];
            $this->cvv = $data["cvv"];
            $this->email = $data["email"];
            $this->expirymmyy = $data["expirymmyy"];
            $this->orderid = $data["orderid"];
            $this->partnerid = $data["partnerid"];
            $this->partnerkey = $data["partnerkey"];
            $this->payeefirstname = $data["payeefirstname"];
            $this->payeeid = $data["payeeid"];
            $this->payeelastname = $data["payeelastname"];
            $this->paymentmode = $data["paymentmode"];
            $this->profileid = $data["profileid"];
            $this->routingnumber = $data["routingnumber"];
            $this->state = $data["state"];
            $this->tokenizedaccountnumber = $data["tokenizedaccountnumber"];
            $this->udfield1 = $data["udfield1"];
            $this->udfield2 = $data["udfield2"];
            $this->udfield3 = $data["udfield3"];
            $this->zip = $data["zip"];
        }
    }
    
    /**
     * Gets address
     * @return string
     */
    public function getAddress()
    {
        return $this->address;
    }
  
    /**
     * Sets address
     * @param string $address 
     * @return $this
     */
    public function setAddress($address)
    {
        
        $this->address = $address;
        return $this;
    }
    
    /**
     * Gets city
     * @return string
     */
    public function getCity()
    {
        return $this->city;
    }
  
    /**
     * Sets city
     * @param string $city 
     * @return $this
     */
    public function setCity($city)
    {
        
        $this->city = $city;
        return $this;
    }
    
    /**
     * Gets country
     * @return string
     */
    public function getCountry()
    {
        return $this->country;
    }
  
    /**
     * Sets country
     * @param string $country 
     * @return $this
     */
    public function setCountry($country)
    {
        
        $this->country = $country;
        return $this;
    }
    
    /**
     * Gets currency
     * @return string
     */
    public function getCurrency()
    {
        return $this->currency;
    }
  
    /**
     * Sets currency
     * @param string $currency 
     * @return $this
     */
    public function setCurrency($currency)
    {
        
        $this->currency = $currency;
        return $this;
    }
    
    /**
     * Gets cvv
     * @return string
     */
    public function getCvv()
    {
        return $this->cvv;
    }
  
    /**
     * Sets cvv
     * @param string $cvv 
     * @return $this
     */
    public function setCvv($cvv)
    {
        
        $this->cvv = $cvv;
        return $this;
    }
    
    /**
     * Gets email
     * @return string
     */
    public function getEmail()
    {
        return $this->email;
    }
  
    /**
     * Sets email
     * @param string $email 
     * @return $this
     */
    public function setEmail($email)
    {
        
        $this->email = $email;
        return $this;
    }
    
    /**
     * Gets expirymmyy
     * @return string
     */
    public function getExpirymmyy()
    {
        return $this->expirymmyy;
    }
  
    /**
     * Sets expirymmyy
     * @param string $expirymmyy 
     * @return $this
     */
    public function setExpirymmyy($expirymmyy)
    {
        
        $this->expirymmyy = $expirymmyy;
        return $this;
    }
    
    /**
     * Gets orderid
     * @return string
     */
    public function getOrderid()
    {
        return $this->orderid;
    }
  
    /**
     * Sets orderid
     * @param string $orderid 
     * @return $this
     */
    public function setOrderid($orderid)
    {
        
        $this->orderid = $orderid;
        return $this;
    }
    
    /**
     * Gets partnerid
     * @return string
     */
    public function getPartnerid()
    {
        return $this->partnerid;
    }
  
    /**
     * Sets partnerid
     * @param string $partnerid 
     * @return $this
     */
    public function setPartnerid($partnerid)
    {
        
        $this->partnerid = $partnerid;
        return $this;
    }
    
    /**
     * Gets partnerkey
     * @return string
     */
    public function getPartnerkey()
    {
        return $this->partnerkey;
    }
  
    /**
     * Sets partnerkey
     * @param string $partnerkey 
     * @return $this
     */
    public function setPartnerkey($partnerkey)
    {
        
        $this->partnerkey = $partnerkey;
        return $this;
    }
    
    /**
     * Gets payeefirstname
     * @return string
     */
    public function getPayeefirstname()
    {
        return $this->payeefirstname;
    }
  
    /**
     * Sets payeefirstname
     * @param string $payeefirstname 
     * @return $this
     */
    public function setPayeefirstname($payeefirstname)
    {
        
        $this->payeefirstname = $payeefirstname;
        return $this;
    }
    
    /**
     * Gets payeeid
     * @return string
     */
    public function getPayeeid()
    {
        return $this->payeeid;
    }
  
    /**
     * Sets payeeid
     * @param string $payeeid 
     * @return $this
     */
    public function setPayeeid($payeeid)
    {
        
        $this->payeeid = $payeeid;
        return $this;
    }
    
    /**
     * Gets payeelastname
     * @return string
     */
    public function getPayeelastname()
    {
        return $this->payeelastname;
    }
  
    /**
     * Sets payeelastname
     * @param string $payeelastname 
     * @return $this
     */
    public function setPayeelastname($payeelastname)
    {
        
        $this->payeelastname = $payeelastname;
        return $this;
    }
    
    /**
     * Gets paymentmode
     * @return string
     */
    public function getPaymentmode()
    {
        return $this->paymentmode;
    }
  
    /**
     * Sets paymentmode
     * @param string $paymentmode 
     * @return $this
     */
    public function setPaymentmode($paymentmode)
    {
        
        $this->paymentmode = $paymentmode;
        return $this;
    }
    
    /**
     * Gets profileid
     * @return string
     */
    public function getProfileid()
    {
        return $this->profileid;
    }
  
    /**
     * Sets profileid
     * @param string $profileid 
     * @return $this
     */
    public function setProfileid($profileid)
    {
        
        $this->profileid = $profileid;
        return $this;
    }
    
    /**
     * Gets routingnumber
     * @return string
     */
    public function getRoutingnumber()
    {
        return $this->routingnumber;
    }
  
    /**
     * Sets routingnumber
     * @param string $routingnumber 
     * @return $this
     */
    public function setRoutingnumber($routingnumber)
    {
        
        $this->routingnumber = $routingnumber;
        return $this;
    }
    
    /**
     * Gets state
     * @return string
     */
    public function getState()
    {
        return $this->state;
    }
  
    /**
     * Sets state
     * @param string $state 
     * @return $this
     */
    public function setState($state)
    {
        
        $this->state = $state;
        return $this;
    }
    
    /**
     * Gets tokenizedaccountnumber
     * @return string
     */
    public function getTokenizedaccountnumber()
    {
        return $this->tokenizedaccountnumber;
    }
  
    /**
     * Sets tokenizedaccountnumber
     * @param string $tokenizedaccountnumber 
     * @return $this
     */
    public function setTokenizedaccountnumber($tokenizedaccountnumber)
    {
        
        $this->tokenizedaccountnumber = $tokenizedaccountnumber;
        return $this;
    }
    
    /**
     * Gets udfield1
     * @return string
     */
    public function getUdfield1()
    {
        return $this->udfield1;
    }
  
    /**
     * Sets udfield1
     * @param string $udfield1 
     * @return $this
     */
    public function setUdfield1($udfield1)
    {
        
        $this->udfield1 = $udfield1;
        return $this;
    }
    
    /**
     * Gets udfield2
     * @return string
     */
    public function getUdfield2()
    {
        return $this->udfield2;
    }
  
    /**
     * Sets udfield2
     * @param string $udfield2 
     * @return $this
     */
    public function setUdfield2($udfield2)
    {
        
        $this->udfield2 = $udfield2;
        return $this;
    }
    
    /**
     * Gets udfield3
     * @return string
     */
    public function getUdfield3()
    {
        return $this->udfield3;
    }
  
    /**
     * Sets udfield3
     * @param string $udfield3 
     * @return $this
     */
    public function setUdfield3($udfield3)
    {
        
        $this->udfield3 = $udfield3;
        return $this;
    }
    
    /**
     * Gets zip
     * @return string
     */
    public function getZip()
    {
        return $this->zip;
    }
  
    /**
     * Sets zip
     * @param string $zip 
     * @return $this
     */
    public function setZip($zip)
    {
        
        $this->zip = $zip;
        return $this;
    }
    
    /**
     * Returns true if offset exists. False otherwise.
     * @param  integer $offset Offset 
     * @return boolean
     */
    public function offsetExists($offset)
    {
        return isset($this->$offset);
    }
  
    /**
     * Gets offset.
     * @param  integer $offset Offset 
     * @return mixed 
     */
    public function offsetGet($offset)
    {
        return $this->$offset;
    }
  
    /**
     * Sets value based on offset.
     * @param  integer $offset Offset 
     * @param  mixed   $value  Value to be set
     * @return void
     */
    public function offsetSet($offset, $value)
    {
        $this->$offset = $value;
    }
  
    /**
     * Unsets offset.
     * @param  integer $offset Offset 
     * @return void
     */
    public function offsetUnset($offset)
    {
        unset($this->$offset);
    }
  
    /**
     * Gets the string presentation of the object
     * @return string
     */
    public function __toString()
    {
        if (defined('JSON_PRETTY_PRINT')) {
            return json_encode(\SingularApi\ObjectSerializer::sanitizeForSerialization($this), JSON_PRETTY_PRINT);
        } else {
            return json_encode(\SingularApi\ObjectSerializer::sanitizeForSerialization($this));
        }
    }
}
