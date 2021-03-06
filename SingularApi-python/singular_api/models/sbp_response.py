# coding: utf-8

"""
Copyright 2016 SmartBear Software

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

    Ref: https://github.com/swagger-api/swagger-codegen
"""

from pprint import pformat
from six import iteritems


class SbpResponse(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self):
        """
        SbpResponse - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'address': 'str',
            'city': 'str',
            'country': 'str',
            'currency': 'str',
            'cvv': 'str',
            'email': 'str',
            'expirymmyy': 'str',
            'orderid': 'str',
            'partnerid': 'str',
            'partnerkey': 'str',
            'payeefirstname': 'str',
            'payeeid': 'str',
            'payeelastname': 'str',
            'payeename': 'str',
            'paymentmode': 'str',
            'profileid': 'str',
            'responsecode': 'str',
            'responsemessage': 'str',
            'responsestatus': 'str',
            'routingnumber': 'str',
            'state': 'str',
            'surchargeamount': 'str',
            'tokenizedaccountnumber': 'str',
            'transactionamount': 'str',
            'transactionid': 'str',
            'transactionreference': 'str',
            'udfield1': 'str',
            'udfield2': 'str',
            'udfield3': 'str',
            'zip': 'str'
        }

        self.attribute_map = {
            'address': 'address',
            'city': 'city',
            'country': 'country',
            'currency': 'currency',
            'cvv': 'cvv',
            'email': 'email',
            'expirymmyy': 'expirymmyy',
            'orderid': 'orderid',
            'partnerid': 'partnerid',
            'partnerkey': 'partnerkey',
            'payeefirstname': 'payeefirstname',
            'payeeid': 'payeeid',
            'payeelastname': 'payeelastname',
            'payeename': 'payeename',
            'paymentmode': 'paymentmode',
            'profileid': 'profileid',
            'responsecode': 'responsecode',
            'responsemessage': 'responsemessage',
            'responsestatus': 'responsestatus',
            'routingnumber': 'routingnumber',
            'state': 'state',
            'surchargeamount': 'surchargeamount',
            'tokenizedaccountnumber': 'tokenizedaccountnumber',
            'transactionamount': 'transactionamount',
            'transactionid': 'transactionid',
            'transactionreference': 'transactionreference',
            'udfield1': 'udfield1',
            'udfield2': 'udfield2',
            'udfield3': 'udfield3',
            'zip': 'zip'
        }

        self._address = None
        self._city = None
        self._country = None
        self._currency = None
        self._cvv = None
        self._email = None
        self._expirymmyy = None
        self._orderid = None
        self._partnerid = None
        self._partnerkey = None
        self._payeefirstname = None
        self._payeeid = None
        self._payeelastname = None
        self._payeename = None
        self._paymentmode = None
        self._profileid = None
        self._responsecode = None
        self._responsemessage = None
        self._responsestatus = None
        self._routingnumber = None
        self._state = None
        self._surchargeamount = None
        self._tokenizedaccountnumber = None
        self._transactionamount = None
        self._transactionid = None
        self._transactionreference = None
        self._udfield1 = None
        self._udfield2 = None
        self._udfield3 = None
        self._zip = None

    @property
    def address(self):
        """
        Gets the address of this SbpResponse.


        :return: The address of this SbpResponse.
        :rtype: str
        """
        return self._address

    @address.setter
    def address(self, address):
        """
        Sets the address of this SbpResponse.


        :param address: The address of this SbpResponse.
        :type: str
        """
        self._address = address

    @property
    def city(self):
        """
        Gets the city of this SbpResponse.


        :return: The city of this SbpResponse.
        :rtype: str
        """
        return self._city

    @city.setter
    def city(self, city):
        """
        Sets the city of this SbpResponse.


        :param city: The city of this SbpResponse.
        :type: str
        """
        self._city = city

    @property
    def country(self):
        """
        Gets the country of this SbpResponse.


        :return: The country of this SbpResponse.
        :rtype: str
        """
        return self._country

    @country.setter
    def country(self, country):
        """
        Sets the country of this SbpResponse.


        :param country: The country of this SbpResponse.
        :type: str
        """
        self._country = country

    @property
    def currency(self):
        """
        Gets the currency of this SbpResponse.


        :return: The currency of this SbpResponse.
        :rtype: str
        """
        return self._currency

    @currency.setter
    def currency(self, currency):
        """
        Sets the currency of this SbpResponse.


        :param currency: The currency of this SbpResponse.
        :type: str
        """
        self._currency = currency

    @property
    def cvv(self):
        """
        Gets the cvv of this SbpResponse.


        :return: The cvv of this SbpResponse.
        :rtype: str
        """
        return self._cvv

    @cvv.setter
    def cvv(self, cvv):
        """
        Sets the cvv of this SbpResponse.


        :param cvv: The cvv of this SbpResponse.
        :type: str
        """
        self._cvv = cvv

    @property
    def email(self):
        """
        Gets the email of this SbpResponse.


        :return: The email of this SbpResponse.
        :rtype: str
        """
        return self._email

    @email.setter
    def email(self, email):
        """
        Sets the email of this SbpResponse.


        :param email: The email of this SbpResponse.
        :type: str
        """
        self._email = email

    @property
    def expirymmyy(self):
        """
        Gets the expirymmyy of this SbpResponse.


        :return: The expirymmyy of this SbpResponse.
        :rtype: str
        """
        return self._expirymmyy

    @expirymmyy.setter
    def expirymmyy(self, expirymmyy):
        """
        Sets the expirymmyy of this SbpResponse.


        :param expirymmyy: The expirymmyy of this SbpResponse.
        :type: str
        """
        self._expirymmyy = expirymmyy

    @property
    def orderid(self):
        """
        Gets the orderid of this SbpResponse.


        :return: The orderid of this SbpResponse.
        :rtype: str
        """
        return self._orderid

    @orderid.setter
    def orderid(self, orderid):
        """
        Sets the orderid of this SbpResponse.


        :param orderid: The orderid of this SbpResponse.
        :type: str
        """
        self._orderid = orderid

    @property
    def partnerid(self):
        """
        Gets the partnerid of this SbpResponse.


        :return: The partnerid of this SbpResponse.
        :rtype: str
        """
        return self._partnerid

    @partnerid.setter
    def partnerid(self, partnerid):
        """
        Sets the partnerid of this SbpResponse.


        :param partnerid: The partnerid of this SbpResponse.
        :type: str
        """
        self._partnerid = partnerid

    @property
    def partnerkey(self):
        """
        Gets the partnerkey of this SbpResponse.


        :return: The partnerkey of this SbpResponse.
        :rtype: str
        """
        return self._partnerkey

    @partnerkey.setter
    def partnerkey(self, partnerkey):
        """
        Sets the partnerkey of this SbpResponse.


        :param partnerkey: The partnerkey of this SbpResponse.
        :type: str
        """
        self._partnerkey = partnerkey

    @property
    def payeefirstname(self):
        """
        Gets the payeefirstname of this SbpResponse.


        :return: The payeefirstname of this SbpResponse.
        :rtype: str
        """
        return self._payeefirstname

    @payeefirstname.setter
    def payeefirstname(self, payeefirstname):
        """
        Sets the payeefirstname of this SbpResponse.


        :param payeefirstname: The payeefirstname of this SbpResponse.
        :type: str
        """
        self._payeefirstname = payeefirstname

    @property
    def payeeid(self):
        """
        Gets the payeeid of this SbpResponse.


        :return: The payeeid of this SbpResponse.
        :rtype: str
        """
        return self._payeeid

    @payeeid.setter
    def payeeid(self, payeeid):
        """
        Sets the payeeid of this SbpResponse.


        :param payeeid: The payeeid of this SbpResponse.
        :type: str
        """
        self._payeeid = payeeid

    @property
    def payeelastname(self):
        """
        Gets the payeelastname of this SbpResponse.


        :return: The payeelastname of this SbpResponse.
        :rtype: str
        """
        return self._payeelastname

    @payeelastname.setter
    def payeelastname(self, payeelastname):
        """
        Sets the payeelastname of this SbpResponse.


        :param payeelastname: The payeelastname of this SbpResponse.
        :type: str
        """
        self._payeelastname = payeelastname

    @property
    def payeename(self):
        """
        Gets the payeename of this SbpResponse.


        :return: The payeename of this SbpResponse.
        :rtype: str
        """
        return self._payeename

    @payeename.setter
    def payeename(self, payeename):
        """
        Sets the payeename of this SbpResponse.


        :param payeename: The payeename of this SbpResponse.
        :type: str
        """
        self._payeename = payeename

    @property
    def paymentmode(self):
        """
        Gets the paymentmode of this SbpResponse.


        :return: The paymentmode of this SbpResponse.
        :rtype: str
        """
        return self._paymentmode

    @paymentmode.setter
    def paymentmode(self, paymentmode):
        """
        Sets the paymentmode of this SbpResponse.


        :param paymentmode: The paymentmode of this SbpResponse.
        :type: str
        """
        self._paymentmode = paymentmode

    @property
    def profileid(self):
        """
        Gets the profileid of this SbpResponse.


        :return: The profileid of this SbpResponse.
        :rtype: str
        """
        return self._profileid

    @profileid.setter
    def profileid(self, profileid):
        """
        Sets the profileid of this SbpResponse.


        :param profileid: The profileid of this SbpResponse.
        :type: str
        """
        self._profileid = profileid

    @property
    def responsecode(self):
        """
        Gets the responsecode of this SbpResponse.


        :return: The responsecode of this SbpResponse.
        :rtype: str
        """
        return self._responsecode

    @responsecode.setter
    def responsecode(self, responsecode):
        """
        Sets the responsecode of this SbpResponse.


        :param responsecode: The responsecode of this SbpResponse.
        :type: str
        """
        self._responsecode = responsecode

    @property
    def responsemessage(self):
        """
        Gets the responsemessage of this SbpResponse.


        :return: The responsemessage of this SbpResponse.
        :rtype: str
        """
        return self._responsemessage

    @responsemessage.setter
    def responsemessage(self, responsemessage):
        """
        Sets the responsemessage of this SbpResponse.


        :param responsemessage: The responsemessage of this SbpResponse.
        :type: str
        """
        self._responsemessage = responsemessage

    @property
    def responsestatus(self):
        """
        Gets the responsestatus of this SbpResponse.


        :return: The responsestatus of this SbpResponse.
        :rtype: str
        """
        return self._responsestatus

    @responsestatus.setter
    def responsestatus(self, responsestatus):
        """
        Sets the responsestatus of this SbpResponse.


        :param responsestatus: The responsestatus of this SbpResponse.
        :type: str
        """
        self._responsestatus = responsestatus

    @property
    def routingnumber(self):
        """
        Gets the routingnumber of this SbpResponse.


        :return: The routingnumber of this SbpResponse.
        :rtype: str
        """
        return self._routingnumber

    @routingnumber.setter
    def routingnumber(self, routingnumber):
        """
        Sets the routingnumber of this SbpResponse.


        :param routingnumber: The routingnumber of this SbpResponse.
        :type: str
        """
        self._routingnumber = routingnumber

    @property
    def state(self):
        """
        Gets the state of this SbpResponse.


        :return: The state of this SbpResponse.
        :rtype: str
        """
        return self._state

    @state.setter
    def state(self, state):
        """
        Sets the state of this SbpResponse.


        :param state: The state of this SbpResponse.
        :type: str
        """
        self._state = state

    @property
    def surchargeamount(self):
        """
        Gets the surchargeamount of this SbpResponse.


        :return: The surchargeamount of this SbpResponse.
        :rtype: str
        """
        return self._surchargeamount

    @surchargeamount.setter
    def surchargeamount(self, surchargeamount):
        """
        Sets the surchargeamount of this SbpResponse.


        :param surchargeamount: The surchargeamount of this SbpResponse.
        :type: str
        """
        self._surchargeamount = surchargeamount

    @property
    def tokenizedaccountnumber(self):
        """
        Gets the tokenizedaccountnumber of this SbpResponse.


        :return: The tokenizedaccountnumber of this SbpResponse.
        :rtype: str
        """
        return self._tokenizedaccountnumber

    @tokenizedaccountnumber.setter
    def tokenizedaccountnumber(self, tokenizedaccountnumber):
        """
        Sets the tokenizedaccountnumber of this SbpResponse.


        :param tokenizedaccountnumber: The tokenizedaccountnumber of this SbpResponse.
        :type: str
        """
        self._tokenizedaccountnumber = tokenizedaccountnumber

    @property
    def transactionamount(self):
        """
        Gets the transactionamount of this SbpResponse.


        :return: The transactionamount of this SbpResponse.
        :rtype: str
        """
        return self._transactionamount

    @transactionamount.setter
    def transactionamount(self, transactionamount):
        """
        Sets the transactionamount of this SbpResponse.


        :param transactionamount: The transactionamount of this SbpResponse.
        :type: str
        """
        self._transactionamount = transactionamount

    @property
    def transactionid(self):
        """
        Gets the transactionid of this SbpResponse.


        :return: The transactionid of this SbpResponse.
        :rtype: str
        """
        return self._transactionid

    @transactionid.setter
    def transactionid(self, transactionid):
        """
        Sets the transactionid of this SbpResponse.


        :param transactionid: The transactionid of this SbpResponse.
        :type: str
        """
        self._transactionid = transactionid

    @property
    def transactionreference(self):
        """
        Gets the transactionreference of this SbpResponse.


        :return: The transactionreference of this SbpResponse.
        :rtype: str
        """
        return self._transactionreference

    @transactionreference.setter
    def transactionreference(self, transactionreference):
        """
        Sets the transactionreference of this SbpResponse.


        :param transactionreference: The transactionreference of this SbpResponse.
        :type: str
        """
        self._transactionreference = transactionreference

    @property
    def udfield1(self):
        """
        Gets the udfield1 of this SbpResponse.


        :return: The udfield1 of this SbpResponse.
        :rtype: str
        """
        return self._udfield1

    @udfield1.setter
    def udfield1(self, udfield1):
        """
        Sets the udfield1 of this SbpResponse.


        :param udfield1: The udfield1 of this SbpResponse.
        :type: str
        """
        self._udfield1 = udfield1

    @property
    def udfield2(self):
        """
        Gets the udfield2 of this SbpResponse.


        :return: The udfield2 of this SbpResponse.
        :rtype: str
        """
        return self._udfield2

    @udfield2.setter
    def udfield2(self, udfield2):
        """
        Sets the udfield2 of this SbpResponse.


        :param udfield2: The udfield2 of this SbpResponse.
        :type: str
        """
        self._udfield2 = udfield2

    @property
    def udfield3(self):
        """
        Gets the udfield3 of this SbpResponse.


        :return: The udfield3 of this SbpResponse.
        :rtype: str
        """
        return self._udfield3

    @udfield3.setter
    def udfield3(self, udfield3):
        """
        Sets the udfield3 of this SbpResponse.


        :param udfield3: The udfield3 of this SbpResponse.
        :type: str
        """
        self._udfield3 = udfield3

    @property
    def zip(self):
        """
        Gets the zip of this SbpResponse.


        :return: The zip of this SbpResponse.
        :rtype: str
        """
        return self._zip

    @zip.setter
    def zip(self, zip):
        """
        Sets the zip of this SbpResponse.


        :param zip: The zip of this SbpResponse.
        :type: str
        """
        self._zip = zip

    def to_dict(self):
        """
        Returns the model properties as a dict
        """
        result = {}

        for attr, _ in iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            else:
                result[attr] = value

        return result

    def to_str(self):
        """
        Returns the string representation of the model
        """
        return pformat(self.to_dict())

    def __repr__(self):
        """
        For `print` and `pprint`
        """
        return self.to_str()

    def __eq__(self, other): 
        """
        Returns true if both objects are equal
        """
        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """ 
        Returns true if both objects are not equal
        """
        return not self == other

