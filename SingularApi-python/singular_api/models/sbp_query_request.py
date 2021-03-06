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


class SbpQueryRequest(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self):
        """
        SbpQueryRequest - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'fromdate': 'str',
            'orderid': 'str',
            'partnerid': 'str',
            'partnerkey': 'str',
            'payeeid': 'str',
            'profileid': 'str',
            'todate': 'str',
            'transactionreference': 'str'
        }

        self.attribute_map = {
            'fromdate': 'fromdate',
            'orderid': 'orderid',
            'partnerid': 'partnerid',
            'partnerkey': 'partnerkey',
            'payeeid': 'payeeid',
            'profileid': 'profileid',
            'todate': 'todate',
            'transactionreference': 'transactionreference'
        }

        self._fromdate = None
        self._orderid = None
        self._partnerid = None
        self._partnerkey = None
        self._payeeid = None
        self._profileid = None
        self._todate = None
        self._transactionreference = None

    @property
    def fromdate(self):
        """
        Gets the fromdate of this SbpQueryRequest.


        :return: The fromdate of this SbpQueryRequest.
        :rtype: str
        """
        return self._fromdate

    @fromdate.setter
    def fromdate(self, fromdate):
        """
        Sets the fromdate of this SbpQueryRequest.


        :param fromdate: The fromdate of this SbpQueryRequest.
        :type: str
        """
        self._fromdate = fromdate

    @property
    def orderid(self):
        """
        Gets the orderid of this SbpQueryRequest.


        :return: The orderid of this SbpQueryRequest.
        :rtype: str
        """
        return self._orderid

    @orderid.setter
    def orderid(self, orderid):
        """
        Sets the orderid of this SbpQueryRequest.


        :param orderid: The orderid of this SbpQueryRequest.
        :type: str
        """
        self._orderid = orderid

    @property
    def partnerid(self):
        """
        Gets the partnerid of this SbpQueryRequest.


        :return: The partnerid of this SbpQueryRequest.
        :rtype: str
        """
        return self._partnerid

    @partnerid.setter
    def partnerid(self, partnerid):
        """
        Sets the partnerid of this SbpQueryRequest.


        :param partnerid: The partnerid of this SbpQueryRequest.
        :type: str
        """
        self._partnerid = partnerid

    @property
    def partnerkey(self):
        """
        Gets the partnerkey of this SbpQueryRequest.


        :return: The partnerkey of this SbpQueryRequest.
        :rtype: str
        """
        return self._partnerkey

    @partnerkey.setter
    def partnerkey(self, partnerkey):
        """
        Sets the partnerkey of this SbpQueryRequest.


        :param partnerkey: The partnerkey of this SbpQueryRequest.
        :type: str
        """
        self._partnerkey = partnerkey

    @property
    def payeeid(self):
        """
        Gets the payeeid of this SbpQueryRequest.


        :return: The payeeid of this SbpQueryRequest.
        :rtype: str
        """
        return self._payeeid

    @payeeid.setter
    def payeeid(self, payeeid):
        """
        Sets the payeeid of this SbpQueryRequest.


        :param payeeid: The payeeid of this SbpQueryRequest.
        :type: str
        """
        self._payeeid = payeeid

    @property
    def profileid(self):
        """
        Gets the profileid of this SbpQueryRequest.


        :return: The profileid of this SbpQueryRequest.
        :rtype: str
        """
        return self._profileid

    @profileid.setter
    def profileid(self, profileid):
        """
        Sets the profileid of this SbpQueryRequest.


        :param profileid: The profileid of this SbpQueryRequest.
        :type: str
        """
        self._profileid = profileid

    @property
    def todate(self):
        """
        Gets the todate of this SbpQueryRequest.


        :return: The todate of this SbpQueryRequest.
        :rtype: str
        """
        return self._todate

    @todate.setter
    def todate(self, todate):
        """
        Sets the todate of this SbpQueryRequest.


        :param todate: The todate of this SbpQueryRequest.
        :type: str
        """
        self._todate = todate

    @property
    def transactionreference(self):
        """
        Gets the transactionreference of this SbpQueryRequest.


        :return: The transactionreference of this SbpQueryRequest.
        :rtype: str
        """
        return self._transactionreference

    @transactionreference.setter
    def transactionreference(self, transactionreference):
        """
        Sets the transactionreference of this SbpQueryRequest.


        :param transactionreference: The transactionreference of this SbpQueryRequest.
        :type: str
        """
        self._transactionreference = transactionreference

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

